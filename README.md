# Dockerized Steamcmd

Instanciate steamcmd container for each game. Simply restart the instanciated container when you want to update your game

### Example: Anonymous dedicated server (Crea, CS GO, etc)
#### Install
This will install the game in /games/crea on the host filesystem
```
docker run -it -v /games/crea:/game \
-e "app_update=414570" --security-opt seccomp=unconfined \
--name install-crea seriousjul/steamcmd
```
#### Update
To update your game folder, just restart the container
```
docker start install-crea && docker attach install-crea
```
### Example: Authenticated game (Starbound) with two factor authentication
#### Install
This will install the game in /games/starbound on the host filesystem
```
docker run -it -v /games/starbound:/game \
-e "app_update=211820" -e "login=login" \
--security-opt seccomp=unconfined \
--name install-starbound seriousjul/steamcmd
```
#### Update
To update your game folder, just restart the container
```
docker start install-starbound && docker attach install-starbound
```
