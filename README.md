# Dockerized Steamcmd
[![](https://images.microbadger.com/badges/version/seriousjul/steamcmd.svg)](http://microbadger.com/images/seriousjul/steamcmd "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/seriousjul/steamcmd.svg)](http://microbadger.com/images/seriousjul/steamcmd "Get your own image badge on microbadger.com")

Instanciate steamcmd container for each game. Simply restart the instanciated container when you want to update your game

### Example: Anonymous dedicated server (Crea, CS GO, etc)
#### Install
This will install the game in /games/crea on the host filesystem
```
docker run -it -v /games/crea:/game \
-e "app_update=414570" \
--security-opt seccomp=unconfined \
--name install-crea seriousjul/steamcmd
```
#### Update (or resume install)
To update your game folder, just restart the container
```
docker start install-crea && docker attach install-crea
```
### Example: Authenticated game (Starbound) with two factor authentication
#### Install
This will install the game in /games/starbound on the host filesystem
```
docker run -it -v /games/starbound:/game \
-e "login=login" -e "app_update=211820" \
--security-opt seccomp=unconfined \
--name install-starbound seriousjul/steamcmd
```
#### Update (or resume install)
To update your game folder, just restart the container
```
docker start install-starbound && docker attach install-starbound
```
