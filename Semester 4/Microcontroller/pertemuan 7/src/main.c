#include <delay.h>
#include <mega16.h>

unsigned char a, adc_data;
interrupt[ADC_INT] void adc_isr(void) { adc_data = ADCH; }

void main(void) {
  a = read_adc(0); // pembacaan adc dimasukkan pada variable a
  lcd_gotoxy(0, 0);
  sprintf(buff, "ADC0 = %d", read_adc(0));
  lcd_gotoxy(0, 1);

  if (a <= 50) {
    lcd_putsf("1"); // 1kg
  } else if (a >= 51 && a <= 100) {
    lcd_putsf("2"); // 2kg
  } else if (a >= 101 && a <= 150) {
    lcd_putsf("3"); // 3 kg
  } else if (a >= 151 && a <= 200) {
    lcd_putsf("4"); // 4 kg
  } else {
    lcd_putsf("5"); // 5 kg
  }
}
