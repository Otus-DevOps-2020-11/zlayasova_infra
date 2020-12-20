HomeWork №5
Основное задание:

bastion_IP = 84.201.131.229
someinternalhost_IP = 10.130.0.20

Дополнительное задание:

Добавлен файл ~./ssh/config со следующим содержимым:

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
