// ECHO MODE
// void setup() {
//     Serial.begin(115200);
//     while (!Serial) {}
// }
//
// void loop() {
//     if (Serial.available()) {
//         char r = Serial.read();
//         if (r == '\n')
//             Serial.write("\r\n");
//         else
//             Serial.write(r);
//     }
// }

// OK MODE
void setup() {
    Serial.begin(115200);
    while (!Serial) {}
    pinMode(13, OUTPUT);
    // jumpstart!
}

bool starting_up = true;
void loop() {
    int random_number = random(-256, 255);
    int random_number2 = random(-256, 255);
    int random_number3 = random(10000, 99999);
    int digits = random(1,5);

    random_number3 = abs(random_number3 % (unsigned int)pow(10, digits));

    if (starting_up)
    {
        for (int i = 0; i < 100; i++)
        {
            Serial.write("+RCV=32,2,HI,100,100\r\n");
        }
        starting_up = false;
    }
    Serial.write("+RCV=32,");
    Serial.print(digits, DEC);
    Serial.write(",");
    Serial.print(random_number3);
    Serial.write(",");
    Serial.print(random_number);
    Serial.write(",");
    Serial.print(random_number2);
    Serial.write("\r\n");
    while (Serial.read() != '\n') {}
    Serial.write("+OK\r\n\0");
    delay(100);

}
