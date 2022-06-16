# dockerAndKubernetsHomework

1. В качетстве веб-сервера взят Python

2. Создан Dockerfile на основе python:3-alpine, в которм:

      2.1 Рабочей директорией (WORKDIR) назначен каталог app,
  
      2.2 Скопирован файл html-страницы с текстом "Hello world",
  
      2.3 Обеспечен запуск web-сервера от имени пользователя с uid 1001.
  
3. Собран Docker image с тэгом 1.0.0.

Команда: docker build -t elistratovvm/web:1.0.0 -t

![image](https://user-images.githubusercontent.com/107641976/174148250-84d99613-605b-4c41-9038-fca53c14d036.png)


4. Запущен Docker container с web-приложением

Команда: docker run -ti --rm -p 8000:8000 --name web elistratovvm/web:1.0.0

![image](https://user-images.githubusercontent.com/107641976/174148501-7da76a91-a591-4f69-a8e2-7f13a8a99e7f.png)

5. Image выложен на Docker Hub.

Команда: docker push elistratovvm/web:1.0.0
https://hub.docker.com/repository/docker/elistratovvm/web

6. Создан Kubernetes Pod manifest на языке Yaml, запускающий container из созданного image. Имя пода - pod. Количество созданных реплик равно двум.

![image](https://user-images.githubusercontent.com/107641976/174163971-28086064-fc86-42e9-bdc6-e4e36682667c.png)

7. Манифест установлен в кластер Kubernetes

Команда: kubectl apply -f pod.yaml -n default

8. Web-приложение было запущено внутри кластера.

Команда: kubectl port-forward pods/pod-6gj8j 8080:8000

![image](https://user-images.githubusercontent.com/107641976/174166806-0169afdc-887a-4544-ac0c-29a5cc302f71.png)

![image](https://user-images.githubusercontent.com/107641976/174166944-14a6ee11-3e35-4dc3-bb9d-4273002bed3e.png)
