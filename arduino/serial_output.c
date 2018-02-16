// the setup routine runs once when you press reset:
void setup() {
  // initialize serial communication at 9600 bits per second:
  Serial.begin(9600);
}

// the loop routine runs over and over again forever:
void loop() {
  char key;
  Serial.println("Press any keys");
  while(1)
  {
    if(Serial.available())
    {
      // 입력한 단어를 그대로 출력
      key = (char)Serial.read();
      Serial.print(key);
    }
  }
}