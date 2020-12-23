HomeWork №5

bastion_IP = 84.201.131.229
someinternalhost_IP = 10.130.0.20

Основное задание:
Созданы вм в Yandex Cloud. Настроен pritunl согласно методичке. При запуске сервера столкнулся с проблемой. Необходим iptables. Добавил в скрипт установку пакета iptables.

Дополнительные задания:

Для подключения к вм без внешного IP через другой хост с внешним IP(bastion) командой вида ssh <vm_name> добавлен файл ~./ssh/config со следующим содержимым:

host bastion
hostname 84.201.131.229
user appuser
port 22
ForwardAgent yes

host someinternalhost
hostname 10.130.0.20
user appuser
port 22
ProxyCommand ssh bastion -W %h:%p

Для настройки ssl сертификата использовал следующее доменное имя 84.201.131.229.sslip.io
Данное имя внес в Pritunl в Settings-Lets Encrypt Domain

HomeWork №6

testapp_IP = 84.201.177.0
testapp_port = 9292

Основное задание:

Создана вм в Yandex Cloud при помощи YC CLI. Установленны пакеты ruby, bundler, mongoDB.
Произведен деплой приложения https://github.com/express42/reddit.git
Написаны bash скрипты для установки необходимых пакетов и деплоя приложения.

Дополнительное задание:

Создан файл startup для cloud-init для автоматической установки пакетов и деплоя приложения после создания вм.

Команда для создания вм с помощью  YC CLI с последующим запуском скрипта startup:

yc compute instance create \
  --name reddit-app \
  --hostname reddit-app \
  --memory=4 \
  --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB \
  --network-interface subnet-name=default-ru-central1-b,nat-ip-version=ipv4 \
  --metadata serial-port-enable=1 \
  --metadata-from-file user-data=./startup
