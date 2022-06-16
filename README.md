# dockerAndKubernetsHomework

1. В качетстве веб-сервера взят Python

2. Создан Dockerfile, в которм:
  2.1 Рабочей директорией (WORKDIR) назначен каталог app,
  2.2 Скопирован файл html-страницы с текстом "Hello world",
  2.3 Обеспечен запуск web-сервера от имени пользователя с uid 1001.
  
3. Собран Docker image с тэгом 1.0.0.
![image](https://user-images.githubusercontent.com/107641976/174148250-84d99613-605b-4c41-9038-fca53c14d036.png)

4. Запущен Docker container с web-приложением
![image](https://user-images.githubusercontent.com/107641976/174148501-7da76a91-a591-4f69-a8e2-7f13a8a99e7f.png)

5. Image выложен на Docker Hub: https://hub.docker.com/repository/docker/elistratovvm/web

6. 
