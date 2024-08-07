from confluent_kafka import Producer
from faker import Faker
import json
import uuid
import time

if __name__ == "main":
    conf = {
        'bootstrap.servers': 'localhost:9092',
        'client.id': 'produtor_usuarios'
    }

    # criar um producer
    p = Producer(**conf)


    # criar um objeto Faker
    faker = Faker({'pt_BR'})
    data_format = "%Y-%m-%d"

    count=0
    while True:
        try:
            cidade = faker.city()
            nome = faker.name()
            bairro = faker.word()
            id_compra = count

            print(f"Enviando -> {cidade} - nome:{nome} - bairro:{bairro} - {id_compra}")
            compra = json.dumps({
                "id_compra": count,
                "cidade": cidade,
                "bairro": bairro,
                "nome": nome,
            }).encode('utf-8')

            key = str(uuid.uuid4()) 
            p.produce('usuarios', value=compra, key=key)    

            count+=1

        except Exception as e:
            print(f"Erro ao enviar mensagem: {e}")
        

        time.sleep(0)
        p.poll(0)
        p.flush()


