#ifndef _SSD1306_OLED_H_
#define _SSD1306_OLED_H_


#include <i2c.h>

//display size
#define SSD1306_WIDTH               ((unsigned int)128)
#define SSD1306_HEIGHT              ((unsigned int)64)

//i2c address
#define SSD1306_ADDRESS		          ((unsigned char)0x78)


#define IMAGE_BUFFER_X_SIZE         (SSD1306_WIDTH)
#define IMAGE_BUFFER_Y_SIZE         (SSD1306_HEIGHT/8)

class CSSD1306OLED
{
  private:
    class CI2C *i2c;

  protected:
    unsigned char image_buffer[IMAGE_BUFFER_Y_SIZE][IMAGE_BUFFER_X_SIZE];

  public:
    CSSD1306OLED();
    ~CSSD1306OLED();

    int oled_lcd_init(class CI2C *i2c_);
    void oled_lcd_clear();
    void oled_lcd_refresh();
    void oled_lcd_demo();
    void oled_lcd_put_pixel(unsigned int x, unsigned int y, unsigned char value);

  private:
    void send_command(uint8_t command);
    void setpos(uint8_t x, uint8_t y);

};

#endif
