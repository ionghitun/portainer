# Portainer Docker Stack

This project provides a Docker Compose setup for running Portainer behind nginx and nginx-proxy.

## Prerequisites

- Docker Engine & Docker Compose
- Git
- Linux or Windows WSL2
- A working nginx-proxy network (see [nginx-proxy setup](https://github.com/ionghitun/nginx-proxy))

## Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/ionghitun/portainer.git
   cd portainer
   ```
2. **Copy and configure environment variables**
   ```bash
   cp scripts/.env.example scripts/.env
   # Edit other variables in scripts/.env as needed
   ```
3. **Update virtual host configuration**
    - Modify `scripts/nginx/custom.conf` to match your `DOMAIN_HOST`.
4. **Start the project**
   ```bash
   sh scripts/start.sh
   ```
5. **Access Portainer**
    - Open your browser and navigate to your configured `DOMAIN_HOST` (e.g., https://portainer.dev.local).

## Available scripts

```bash
./scripts/start.sh    # Start the containers
./scripts/down.sh     # Stop the containers
./scripts/build.sh    # Build or rebuild the containers
./scripts/restart.sh  # Restart the containers
```

## Troubleshooting

- **Docker Issues**: For older versions you might want to remove `COMPOSE_BAKE` from `.env`.
- **Docker Compose Issues**: Please update and ensure you can use `docker compose`, not old version `docker-compose`

## License

This project is licensed under the MIT License. See [LICENSE](LICENSE) for details.

## Contributing

Contributions are welcome! Please open issues or submit pull requests following the repository guidelines.

_Happy Coding_
