//Processo da declaração de porta: Serve para armazenar os dados que serão recebidos pelo sensor. //

#include "DHT.h"
#define dht_type DHT11

int dht_pin = A0;
DHT dht_1 = DHT(dht_pin, dht_type);

// Processo do Setup: Serve para configurar o ambiente inicial do código. //

void setup() {
  Serial.begin(9600);
  dht_1.begin();
}

// Processo do Looping: Serve para manter a constância na atualização dos dados recebidos pelo sensor.

void loop() {
  float umidade = dht_1.readHumidity();
  float temperatura = dht_1.readTemperature();
  if (isnan(temperatura) or isnan(umidade)) {
    Serial.println("Erro ao ler");
  } else {
    
    Serial.print(umidade);

    Serial.print("  ");
    
    Serial.println(temperatura);

    

  }
  delay(2000);
}
