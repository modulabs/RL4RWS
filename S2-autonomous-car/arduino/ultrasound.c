//int trigPin1 = 3;                 // trigPin을 2번에 설정
//int echoPin1 = 4;                 // echoPin을 3번에 설정
//
//int trigPin2 = 7;                 // trigPin을 2번에 설정
//int echoPin2 = 8;                 // echoPin을 3번에 설정
//
//int trigPin3 = 9;                 // trigPin을 2번에 설정
//int echoPin3 = 10;                 // echoPin을 3번에 설정
//
//int trigPin4 = 11;                 // trigPin을 2번에 설정
//int echoPin4 = 12;                 // echoPin을 3번에 설정

typedef struct _pin {
    int trig_pin;
    int echo_pin;
} s_pin;

int ultrasound_num = 4;
// 각 초음파센서의 trig / echo pin 번호 리스트
// ** 위 주석처럼 각각 변수로 선언해도 된다. **
s_pin ultrasound_pins[4] = {{3, 4}, {7, 8}, {9, 10}, {11, 12}};

char test_main_menu(void)
{
    char key;

    Serial.print("\n\r\n");
    Serial.print("-------------------------------------------------\r\n");
    Serial.print("ARDUINO TEST MAIN MENU\r\n");
    Serial.print("-------------------------------------------------\r\n");
    Serial.print(" 1. UltraSound    1 TEST \r\n");
    Serial.print(" 2. UltraSound    2 TEST \r\n");
    Serial.print(" 3. UltraSound    3 TEST \r\n");
    Serial.print(" 4. UltraSound    4 TEST \r\n");
    Serial.print(" 5. UltraSound ALL TEST \r\n");
    Serial.print("-------------------------------------------------\r\n");
    //Serial.print(" q. (Not use) EDUCATION SHIELD TEST QUIT \r\n");
    //Serial.print("-------------------------------------------------\r\n");
    Serial.print("\n\r\n");
    Serial.print("SELECT THE COMMAND NUMBER : ");

    while(1)
    {
        if(Serial.available())
        {
            key = (char)Serial.read();
            Serial.print(key);
            break;
        }
    }
    return key;
}

void setup()
{  
    //Serial initialize
    Serial.begin(9600);

    // 리스트업 된 센서들을 순서대로 초기화
    int i;
    for (i = 0; i < ultrasound_num; i++) {
        pinMode(ultrasound_pins[i].trig_pin, OUTPUT);    // trigPin을 출력을 설정
        pinMode(ultrasound_pins[i].echo_pin, INPUT);     // echoPin을 입력으로 설정 
    }  
}

void loop()
{
    char key;
    // 4개 센서들의 duration / distance를 순서대로 저장
    float duration[4] = {0, };
    float distance[4] = {0, };
    // 위에서와 마찬가지로
    // float duration1;
    // float distance1;
    // float duration2;
    // float distance2;
    // 와 같이 각각 변수 선언해도 된다.
       
    if((key=test_main_menu()) != 0)
    {
        switch(key)
        {
            case '1':
            Serial.print("UltraSound 1\r\n");
            // 코드 시작
            // 리스트에서 "0"번 인덱스가 첫번째 센서의 정보를 가지고 있다.
            digitalWrite(ultrasound_pins[0].trig_pin, HIGH); // trigPin을 HIGH로 출력
            delay(10); // 10ms 대기
            digitalWrite(ultrasound_pins[0].trig_pin, LOW);  // trigPin을 LOW로 출력

            duration[0] = pulseIn(ultrasound_pins[0].echo_pin, HIGH);

            /* echoPin 이 HIGH를 유지한 시간을 저장합니다.
            HIGH 였을 때 시간(초음파가 보냈다가 다시 들어온 시간)을
            가지고 거리를 계산합니다.
            */
            // 340은 초당 초음파(소리)의 속도, 10000은 밀리 세컨드를 세컨드로, 왕복 거리이므로 2로 나눠 줍니다.
            distance[0] = ((float)(340 * duration[0]) / 10000) / 2;

            //시리얼모니터에 Echo가 HIGH인 시간 및 거리를 표시해 줍니다.
            Serial.print("Duration:");
            Serial.print(duration[0]);
            Serial.println("Distance:");
            Serial.print(distance[0]);
            Serial.println("cm\n");
            delay(500);
            // 코드 끝
            break;

        case '2':
           Serial.print("UltraSound 2\r\n");
           // 코드 시작
            digitalWrite(ultrasound_pins[1].trig_pin, HIGH); // trigPin을 HIGH로 출력
            delay(10); // 10ms 대기
            digitalWrite(ultrasound_pins[1].trig_pin, LOW);  // trigPin을 LOW로 출력

            duration[1] = pulseIn(ultrasound_pins[1].echo_pin, HIGH);
            distance[1] = ((float)(340 * duration[1]) / 10000) / 2;

            Serial.print("Duration:");
            Serial.print(duration[1]);
            Serial.println("Distance:");
            Serial.print(distance[1]);
            Serial.println("cm\n");
            delay(500);
            // 코드 끝
            break;

        case '3':
           Serial.print("UltraSound 3\r\n");
           // 코드 시작
            digitalWrite(ultrasound_pins[2].trig_pin, HIGH); // trigPin을 HIGH로 출력
            delay(10); // 10ms 대기
            digitalWrite(ultrasound_pins[2].trig_pin, LOW);  // trigPin을 LOW로 출력

            duration[2] = pulseIn(ultrasound_pins[2].echo_pin, HIGH);
            distance[2] = ((float)(340 * duration[2]) / 10000) / 2;

            Serial.print("Duration:");
            Serial.print(duration[2]);
            Serial.println("Distance:");
            Serial.print(distance[2]);
            Serial.println("cm\n");
            delay(500);
            // 코드 끝
            break;

        case '4':
           Serial.print("UltraSound 4\r\n");
           // 코드 시작
            digitalWrite(ultrasound_pins[3].trig_pin, HIGH); // trigPin을 HIGH로 출력
            delay(10); // 10ms 대기
            digitalWrite(ultrasound_pins[3].trig_pin, LOW);  // trigPin을 LOW로 출력

            duration[3] = pulseIn(ultrasound_pins[3].echo_pin, HIGH);
            distance[3] = ((float)(340 * duration[3]) / 10000) / 2;

            Serial.print("Duration:");
            Serial.print(duration[3]);
            Serial.println("Distance:");
            Serial.print(distance[3]);
            Serial.println("cm\n");
            delay(500);
            // 코드 끝
            break;

        case '5':
            
            Serial.print("UltraSound ALL\r\n");
            // 코드 시작
            // 4개 센서들을 차례로 실행
            int i = 0;
            for(i = 0; i < ultrasound_num; i++) {
                digitalWrite(ultrasound_pins[i].trig_pin, HIGH); // trigPin을 HIGH로 출력
                delay(10); // 10ms 대기
                digitalWrite(ultrasound_pins[i].trig_pin, LOW);  // trigPin을 LOW로 출력

                duration[i] = pulseIn(ultrasound_pins[i].echo_pin, HIGH);
                distance[i] = ((float)(340 * duration[i]) / 10000) / 2;

                Serial.print("Ultrasound ");
                Serial.println(i+1);
                Serial.print("Duration:");
                Serial.print(duration[i]);
                Serial.println("Distance:");
                Serial.print(distance[i]);
                Serial.println("cm\n");
                delay(500);
           }
           // 코드 끝
           break;
      }
  }
}