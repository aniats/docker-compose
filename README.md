# Jenkins + Gitea integration

Интеграция двух сервисов с помощью Docker Compose. Результатом сборки и запуска являются три контейнера: `gitea`, `jenkins`, `mysql`. 

## Установка, запуск и остановка контейнеров

Проверьте, что у вас имеется `Docker` && `Docker Compose`. 
```sh
docker --version
docker-compose --version
```

Устанавливаем и запускаем
```sh
docker-compose -f compose-all.yml up -d
```
Gitea "слушается" на порте `3000`, а Jenkins на порту `8080`.

Приостановка
```sh
docker-compose -f compose-all.yml down --volumes --remove-orphans
```

## Настройка интеграции в UI
Все подробно расписано в папке `doc`.

## Репозитории образов с DockerHub

| Image | README |
| ------ | ------ |
| Jenkins | https://hub.docker.com/r/jenkins/jenkins|
| MySQL | https://hub.docker.com/_/mysql |
| Gitea | https://hub.docker.com/r/gitea/gitea |

## Бекапы

В папке `backup` располагаются два скрипта для архивирование и разархивирования. Там же приложен `README.md` файл с описанием работы с ними.

Не забудьте сделать скрипты executable.
```sh
chmod +x backup.sh
chmod +x restore.sh
```
