HomeWork №5
Основное задание:

bastion_IP = 84.201.131.229
someinternalhost_IP = 10.130.0.20

Созданы вм в Yandex Cloud. Настроен pritunl согласно методичке. При запуске сервера столкнулся с проблемой. Необходим iptables. Добавил в скрипт установку пакета iptables.

Дополнительные задания:

Для подключения к вм без внешного IP через другой хост с внешним IP  командой вида ssh <vm_name> добавлен файл ~./ssh/config со следующим содержимым:

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
