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

HomeWork №7

Основное задание:

Создан образ reddit-base с помощью инструмента packer. С созданным образом была создана ВМ и запущенно в ручную приложение.

Дополнительно задание:

Создан образ reddit-full с помощью инструмента packer. В него "запечен" скрипт для деплоя и запуска приложения, а так же добавлен скрипт для создания ВМ с этим образом.

HomeWork №8

Основное задание:

Создан инстанс в YC при помощи инструмента terraform с созданным ранее образом.

Дополнительное задание:

При помощи terraform созданы балансировщик нагрузки, целевая группа и 2 инстанса с уже запущенным приложением. Образ взять из ДЗ №7. На балансировщике настроенно перенаправление трафика с 80 порта на порты 9292 инстансов в целевой группе. Так же добавлен count.

HomeWork №9

Основное задание:

Формула terraform для создания инфраструктуры разбита на модули. В модули так же добавлены параметры disk_size и disk_type

Дополнительное задание:

Файл состояния перенесен в yandex object cloud.

HomeWork №10

Основное задание:

Практика использования ansible и его модулей из командной строки. Так же был написан плейбук для клонирования репозитория.
Ответ на вопрос по основному дз:
Сначала на вм репозиторий был склонирован при помощи модуля git из командной строки. Далее был написан и запущен плейбук с той же задачей(клонирование этого же репозитория в эту же папку) и т.к. никаких изменениий не было, то статус был "ok".
Далее мы удалили локальную папку с репозиторием при помощи ansible app -m command -a 'rm -rf ~/reddit' и запустили плейбук с клонированием репозитория повторно. Произошли изменения и появился статус "changed"

Homework №11

Основное задание:

Практика написания и использования плейбуков ansible в различных вариациях(one play и multiple plays). Так же написаны отдельно плейбуки для провижининга и деплоя и плейбук, вызывающий их. Написаны плейбуки, аналогичные bash-скриптам, которые используются в конфигурации packer.

Homework №12

Основное задание:

Практика написания ролей и использование шифрования. Добавлены роли для провижининга app и db нод, добавлены credentials и плейбук для создания пользователей

Homework №13

Основное задание:

Практика использования vagrant и molecule. Добавлены необходимые файлы для создания локальных машин и прогонов тестов.

Homework №17

Основное задание:

Развертывание gitlab на виртуальной машине. Практика работы с gitlab и написание pipeline для сборки и тестирования приложения.
