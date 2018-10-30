
void setup()
{  
    //Serial initialize
    Serial.begin(9600);

    // 아날로그 핀을 디지털으로
    pinMode(A4, OUTPUT);    // trigPin을 출력을 설정
    pinMode(A5, INPUT);     // echoPin을 입력으로 설정 
}


void loop()
{
    // 4개 센서들의 duration / distance를 순서대로 저장
    float duration = 0;
    float distance = 0;

    digitalWrite(A4, HIGH); // trigPin을 HIGH로 출력
    delay(10); // 10ms 대기
    digitalWrite(A4, LOW);  // trigPin을 LOW로 출력

    duration = pulseIn(A5, HIGH);

    /* echoPin이 HIGH를 유지한 시간을 저장합니다.
    HIGH 였을 때 시간(초음파가 보냈다가 다시 들어온 시간)을
    가지고 거리를 계산합니다.
    */
    // 340은 초당 초음파(소리)의 속도, 10000은 밀리 세컨드를 세컨드로, 왕복 거리이므로 2로 나눠 줍니다.
    distance = ((float)(340 * duration) / 10000) / 2;

    //시리얼모니터에 Echo가 HIGH인 시간 및 거리를 표시해 줍니다.
    Serial.print("Duration:");
    Serial.println(duration);
    Serial.print("Distance:");
    Serial.print(distance);
    Serial.println("cm\n");
    delay(500);
}
