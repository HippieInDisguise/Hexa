int ts1 = D12; //Pin 1 Touch sensor
int ts2 = D11; //Pin 2 Touch sensor
int ts3 = D10; //Pin 3 Touch sensor
int ts4 = D9; //Pin 4 Touch sensor
int ts5 = D8; //Pin 5 Touch sensor
int ts6 = D7; //Pin 6 Touch sensor
int ts7 = D6; //Pin 7 Touch sensor
int ts8 = D5; //Pin 8 Touch sensor

int tsv1 = 0; // Touch sensor 1 value initilize
int tsv2 = 0; // Touch sensor 2 value initilize
int tsv3 = 0; // Touch sensor 3 value initilize
int tsv4 = 0; // Touch sensor 4 value initilize
int tsv5 = 0; // Touch sensor 5 value initilize
int tsv6 = 0; // Touch sensor 6 value initilize
int tsv7 = 0; // Touch sensor 7 value initilize
int tsv8 = 0; // Touch sensor 8 value initilize

int LED = D13;

void setup() {
  // put your setup code here, to run once:

  // pinMode set for touchsensors
  pinMode(ts1,INPUT); 
  pinMode(ts2,INPUT);
  pinMode(ts3,INPUT);
  pinMode(ts4,INPUT);
  pinMode(ts5,INPUT);
  pinMode(ts6,INPUT);
  pinMode(ts7,INPUT);
  pinMode(ts8,INPUT);
  
  pinMode(LED,OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  Serial.begin(9600);

  // Digital Read for touch sensor value
  tsv1 = digitalRead(ts1);
  tsv2 = digitalRead(ts2);
  tsv3 = digitalRead(ts3);
  tsv4 = digitalRead(ts4);
  tsv5 = digitalRead(ts5);
  tsv6 = digitalRead(ts6);
  tsv7 = digitalRead(ts7);
  tsv8 = digitalRead(ts8);

  //Print all the sensor values for processing
  Serial.print(tsv1);
  Serial.print(",");
  Serial.print(tsv2);
  Serial.print(",");
  Serial.print(tsv3);
  Serial.print(",");
  Serial.print(tsv4);
  Serial.print(",");
  Serial.print(tsv5);
  Serial.print(",");
  Serial.print(tsv6);
  Serial.print(",");
  Serial.print(tsv7);
  Serial.print(",");
  Serial.println(tsv8);
  
  if(tsv1==1){
    digitalWrite(LED,HIGH);
  }
  else{
    digitalWrite(LED,LOW);
  }
  delay(100);
}
