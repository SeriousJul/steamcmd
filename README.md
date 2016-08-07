# Dockerized Steamcmd

Instanciate steamcmd container for each game. Simply restart the instanciated container when you want to update your game

### Example: Install crea dedicated server in /games/crea folder
#### Install
```
docker run -d -v /games/crea:/game -e "app_update=414570" --name update-crea-server seriousjul/steamcmd
docker logs -f update-crea-server
```
If the installation fails at some point (Internet shortage, ...), you can resume your installation by restarting the container
#### Update
```
docker start update-crea-server
docker logs -f update-crea-server
```
