# local-wordpress

A local dockerized wordpress instance with a MariaDB database backend, all contained in its own separate network.

## Usage

Run `./init.sh` to spin up the environment.
The deployment will be accessible via [localhost](https://localhost:80) unless you run this from within WSL2 on Windows (read below).

Run `dcd` or `docker-compose down` to tear down the deployment once you are done tinkering.

### Windows host and WSL2

If you run this from within a WSL2 Linux, after spinning up the containers you need to know the local IP address
of your WSL Linux so that in your web browser you can connect to the correct address.
Localhost won't be the correct target.

Inside Linux, run `ip addr show eth0`. The correct IP address is listed after the `inet` header.

Let's assume your IP shows as `172.28.90.103/20`

In your internet browser, visit `http:172.28.90.103:80` to access the wordpress container.
