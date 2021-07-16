# docker-network-playground

### Steps to perform

* Setup the lab machine

1. Install docker 

```bash
 curl -sSL https://get.docker.com | bash
```

2. Install docker compose

```bash
#Install PIP
sudo apt-get install python-pip
sudo pip install docker-compose
```

3. Clone this repository

```
git clone https://vikiscripts@bitbucket.org/vikiscripts/mobin-docker-network-playground.git
```

4. Create and run two docker containers

```bash
cd mobin-docker-network-playground
sudo docker-compose up -d

# Look the conatainers running
sudo docker ps

# Login to containers
sudo docker exec -it rb1 /bin/sh
sudo docker exec -it rb2 /bin/sh

# ping from the containres
ping rb1 # From rb2
ping rb2  # From rb1

# Inspect docker network
sudo docker network inspect mobin-docker-network-playground_dock_net | more


```
