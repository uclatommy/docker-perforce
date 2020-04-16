# docker-perforce
Automated build of docker image to host a perforce server

## Build and run
```
docker-compose build
docker-compose up
```

## User setup
At this point, you should have a running instance of the server. By default, it is built to not require a password. You can set passwords using the `passwd` command. To change the root user password:
```docker exec -it perforce-server passwd```
To change the `perforce` user password:
```docker exec -it perforce-server passwd perforce```

Next, you'll want to download the [perforce client tools](https://www.perforce.com/downloads/helix-visual-client-p4v
) to setup the repository users. By default, the server will allow anyone to create a new user so once you have
 created your first admin user, you should disable this:
 ```docker exec perforce-server p4 configure set dm.user.noautocreate=2```

