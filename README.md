# docker-cachet-consul
A docker file repo for Cachet integrating with Consul.

Uses the [CachetHQ Repo](https://github.com/cachethq/Cachet) as base.

The Docker Image of this is hosted at [Docker Hub](https://registry.hub.docker.com/u/metocean/cachet-consul/)

To use/pull it, execute these commands in a Terminal Window:
```bash
docker pull metocean/cachet-consul
```

The repo does **not** contain any configuration for cachet or consul (just a service file).
Configuration needs to be externally mounted in at runtime or by extending this repo and copying the configuration file in.

The same docker mount options apply from the [CachetHQ Repo](https://github.com/cachethq/Cachet) to this one, however more ports need to be opened when running the docker container to allow consul to communicate.

To view the Cachet runtime configuration please look at the [CahetHQ's Github Readme](https://github.com/cachethq/Cachet)
