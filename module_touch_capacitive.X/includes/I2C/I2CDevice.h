#define OFF                        0
#define I2C_LCD_SLAVE_ADDRESS      0x08          // Slave addres for PCF8574A module goes from 0x38 to 0x3F
#define I2C_WRITE_TO_BUS           0b00000000
#define I2C_READ_FROM_BUS          0b00000001
#define I2C_ENABLE_SERIAL_PORT     0b00100000
#define I2C_MASTER_MODE            0b00001000
#define I2C_CLOCK_100KHZ           0x9F
#define I2C_STANDARD_SPEED         0b10000000
#define I2C_START_IN_PROGRESS      0b00000001
#define I2C_RESTART_IN_PROGRESS    0b00000010
#define I2C_STOP_IN_PROGRESS       0b00000100
#define I2C_RW_IN_PROGRESS         0b00000100
#define I2C_RECEIVE_EN             0b00001000
#define I2C_ACK_EN                 0b00010000
#define I2C_TRANSMIT_IN_PROGRESS   0b00000100
#define I2C_WAITING_TO_TRANSMIT    0b00001000
#define I2C_ACK_RECEIVED           (!SSP1CON2bits.ACKSTAT)
#define I2C_SDA_HOLD_TIME_300ns    0b00001000
#define SWAP(x)                    ((((x) & 0x0F) << 4) | (((x) & 0xF0) >> 4))

void I2C_Master_Init();
unsigned char I2C_Master_Start();
unsigned char I2C_Master_Write(unsigned char data);
void I2C_Master_Stop();