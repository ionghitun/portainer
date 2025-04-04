## Portainer with docker-compose

### Install notes

- copy `scripts/.env.example` to `scripts/.env` and edit it to match your settings
- change other env variables to your needs
- if necessary modify `scripts/nginx/custom.conf` to match you `DOMAIN_HOST`
- run `sh scripts/start.sh` to start the project
- run `sh scripts/stop.sh` to stop the project
- run `sh scripts/build.sh` to build or rebuild the project
- run `sh scripts/restart.sh` to restarts container
- navigate to `DOMAIN_HOST` to see portainer info

## Dependencies

- `nginx-proxy` - https://github.com/ionghitun/nginx-proxy

_Happy Coding!_
