#include "ssd1306_oled.h"


#include <stdint.h>



const uint8_t ssd1306_init_sequence [] =
{	// Initialization Sequence
	0xAE,			// Display OFF (sleep mode)
	0x20, 0x00,		// Set Memory Addressing Mode
					// 00=Horizontal Addressing Mode; 01=Vertical Addressing Mode;
					// 10=Page Addressing Mode (RESET); 11=Invalid
	0xB0,			// Set Page Start Address for Page Addressing Mode, 0-7
	0xC8,			// Set COM Output Scan Direction
	0x00,			// ---set low column address
	0x10,			// ---set high column address
	0x40,			// --set start line address
	0x81, 0x3F,		// Set contrast control register
	0xA1,			// Set Segment Re-map. A0=address mapped; A1=address 127 mapped.
	0xA6,			// Set display mode. A6=Normal; A7=Inverse
	0xA8, 0x3F,		// Set multiplex ratio(1 to 64)
	0xA4,			// Output RAM to Display
					// 0xA4=Output follows RAM content; 0xA5,Output ignores RAM content
	0xD3, 0x00,		// Set display offset. 00 = no offset
	0xD5,			// --set display clock divide ratio/oscillator frequency
	0xF0,			// --set divide ratio
	0xD9, 0x22,		// Set pre-charge period
	0xDA, 0x12,		// Set com pins hardware configuration
	0xDB,			// --set vcomh
	0x20,			// 0x20,0.77xVcc
	0x8D, 0x14,		// Set DC-DC enable
	0xAF			// Display ON in normal mode
};

CSSD1306OLED::CSSD1306OLED()
{

}

CSSD1306OLED::~CSSD1306OLED()
{

}

int CSSD1306OLED::oled_lcd_init(class CI2C *i2c_)
{
  i2c = i2c_;
  if (i2c == 0)
    return -1;

  unsigned int i;
  for (i = 0; i < sizeof (ssd1306_init_sequence); i++)
    send_command(ssd1306_init_sequence[i]);


  oled_lcd_clear();
  oled_lcd_refresh();

  return 0;
}



void CSSD1306OLED::oled_lcd_refresh()
{
  unsigned int y, x;
  for (y = 0; y < IMAGE_BUFFER_Y_SIZE; y++)
  {
    setpos(0, y);

    i2c->Start();
    i2c->Write(SSD1306_ADDRESS);
    i2c->Write(0x40);                 //data
  	for (x = 0; x < IMAGE_BUFFER_X_SIZE; x++)
      i2c->Write(image_buffer[y][x]);

    i2c->Stop();
  }
}

void CSSD1306OLED::oled_lcd_refresh_part()
{
	static unsigned int y = 0;
	unsigned int x;

    setpos(0, y);

    i2c->Start();
    i2c->Write(SSD1306_ADDRESS);
    i2c->Write(0x40);                 //data
  	for (x = 0; x < IMAGE_BUFFER_X_SIZE; x++)
      i2c->Write(image_buffer[y][x]);

    i2c->Stop();

	y = (y + 1)%IMAGE_BUFFER_Y_SIZE;
}

void CSSD1306OLED::oled_lcd_clear()
{
  unsigned int y, x;

  for (y = 0; y < IMAGE_BUFFER_Y_SIZE; y++)
    for (x = 0; x < IMAGE_BUFFER_X_SIZE; x++)
      image_buffer[y][x] = 0x00;
}


void CSSD1306OLED::oled_lcd_put_bitmap(const unsigned char *image, unsigned int x_offset)
{
  unsigned int x, y, ofs = 0;


  for (y = 0; y < SSD1306_HEIGHT; y++)
    for (x = 0; x < SSD1306_WIDTH; x++)
      oled_lcd_put_pixel((x + ofs)%SSD1306_WIDTH, y, bitmap_decompress(image, (x + x_offset)%SSD1306_WIDTH, y));

  oled_lcd_refresh();
}



void CSSD1306OLED::oled_put_square(unsigned int x, unsigned int y, unsigned int width, unsigned int height, unsigned char color_)
{
  unsigned int i, count = (height*width);
  unsigned int color = ((height*width)*(unsigned int)color_)/(unsigned int)255;
  static unsigned int oled_rnd = 0;

  for (i = 0; i < count; i++)
  {
    unsigned int x_, y_;

    if (color > 0)
    {
      oled_rnd+= 104729;
      //oled_rnd = math.rand();

      x_ = (oled_rnd%count)%width;
      y_ = (oled_rnd%count)/width;

      oled_lcd_put_pixel(x_ + x, y_ + y, 1);
      color--;
    }
  }
}



void CSSD1306OLED::oled_lcd_put_pixel(unsigned int x, unsigned int y, unsigned char value)
{
  if (x > SSD1306_WIDTH)
    return;

  if (y > SSD1306_HEIGHT)
    return;

  unsigned char tmp = image_buffer[y/8][x];

  if (value != 0)
    tmp|= (1<<(y&7));
  else
    tmp&=~( (1<<(y&7)) );

  image_buffer[y/8][x] = tmp;
}

unsigned char CSSD1306OLED::oled_lcd_get_pixel(unsigned int x, unsigned int y)
{
	if (x > SSD1306_WIDTH)
    return 0;

  if (y > SSD1306_HEIGHT)
    return 0;

  unsigned char tmp = image_buffer[y/8][x];

	if (tmp&(1<<(y&7)))
		return 1;

	return 0;
}

void CSSD1306OLED::setpos(uint8_t x, uint8_t y)
{
  i2c->Start();
  i2c->Write(SSD1306_ADDRESS);
  i2c->Write(0x00);                 //command
  i2c->Write(0x0b + y);             //position
  i2c->Write(((x & 0xf0) >> 4) | 0x10);
  i2c->Write(x & 0x0f);
  i2c->Stop();
}

void CSSD1306OLED::send_command(uint8_t command)
{
  i2c->write_reg(SSD1306_ADDRESS, 0x00, command);
}

unsigned int CSSD1306OLED::bitmap_decompress(const unsigned char *image_, unsigned int x, unsigned int y)
{
 unsigned int idx = (x/8) + y*(IMAGE_WIDTH/8);
 unsigned int ofs = x&0x07;
 if (image_[idx]&(1<<ofs)) return 1;
  return 0;
}
