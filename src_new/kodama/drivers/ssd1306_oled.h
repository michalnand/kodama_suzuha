#ifndef _SSD1306_OLED_H_
#define _SSD1306_OLED_H_


#include <kodama.h>


#define IMAGE_WIDTH  ((unsigned int)128)
#define IMAGE_HEIGHT ((unsigned int)64)

//display size
#define SSD1306_WIDTH               ((unsigned int)128)
#define SSD1306_HEIGHT              ((unsigned int)64)

//i2c address
#define SSD1306_ADDRESS		          ((unsigned char)0x78)


#define IMAGE_BUFFER_X_SIZE         (SSD1306_WIDTH)
#define IMAGE_BUFFER_Y_SIZE         (SSD1306_HEIGHT/8)

class CSSD1306OLED
{
  protected:
    unsigned char image_buffer[IMAGE_BUFFER_Y_SIZE][IMAGE_BUFFER_X_SIZE];

  public:
    CSSD1306OLED();
    ~CSSD1306OLED();

    int oled_lcd_init();
    void oled_lcd_clear();
    void oled_lcd_refresh();
    void oled_lcd_refresh_part();
    void oled_lcd_put_bitmap(const unsigned char *image, unsigned int x_offset = 0);
    void oled_put_square(unsigned int x, unsigned int y, unsigned int width, unsigned int height, unsigned char color_);
    void oled_lcd_put_pixel(unsigned int x, unsigned int y, unsigned char value);
    unsigned char oled_lcd_get_pixel(unsigned int x, unsigned int y);

  private:
    void send_command(uint8_t command);
    void setpos(uint8_t x, uint8_t y);
    unsigned int bitmap_decompress(const unsigned char *image_, unsigned int x, unsigned int y);


};

#endif
