# Dockerized Steamcmd

Instanciate steamcmd container for each game. Simply restart the instanciated container when you want to update your game

### Example: Anonymous dedicated server (Crea, CS GO, etc)
#### Install
This will install the game in /games/crea on the host filesystem
```
docker run -v /games/crea:/game \
-e "app_update=414570" \
--name update-crea-server seriousjul/steamcmd
```
#### Update
```
docker start update-crea-server
docker logs -f update-crea-server
```
### Example: Authenticated game (Starbound) with two factor authentication
#### Install
This will install the game in /games/starbound on the host filesystem
```
docker run -it -v /games/starbound:/game \
-e "app_update=211820" -e "login=login password" \
--name update-starbound seriousjul/steamcmd
```
#### Update
```
docker start update-starbound
docker attach update-starbound
```
