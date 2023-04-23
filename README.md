# ft_server

This is another project for the 42 curriculum, in which you are asked to set up a web server using Docker. The server should be able to run multiple services, including Nginx, MySQL, and WordPress, and should be configured to support SSL encryption.

## Getting Started

To get started with the project, you will need to have Docker installed on your computer. You can download Docker from the official website at https://www.docker.com/products/docker-desktop.

Once you have Docker installed, you can clone this repository and navigate to the project directory:

```
git clone https://github.com/masakiva/ft_server.git
cd ft_server
```

You can then build the Docker image using the following command:

```
docker build -t ft_server .
```

This will build an image with the name `ft_server` based on the `Dockerfile` in the project directory. 

You can run the container using the following command:

```
docker run -it --rm -p 80:80 -p 443:443 ft_server
```

This will start the container and expose ports 80 and 443 to the host machine, allowing you to access the web server.

## Services

The web server is configured to run the following services:

- Nginx web server
- MySQL database server
- PhpMyAdmin
- WordPress

## SSL Encryption

The web server is configured to support SSL encryption using a self-signed certificate. You can access the secure site by visiting `https://localhost`.

## Project Requirements

The project is designed to test your ability to set up a web server using Docker and configure it to run multiple services. You will need to ensure that your server meets the following requirements:

- The web server must be able to run Nginx, MySQL, and WordPress.
- The web server must be configured to support SSL encryption.
- The web server must be able to autoindex directories.
- The web server must be able to redirect to the correct website based on the URL.
- The web server must be able to protect directories with a username and password.

## Resources

Here are some resources that you may find useful when working on this project:

- [Docker documentation](https://docs.docker.com/)
- [Nginx documentation](https://nginx.org/en/docs/)
- [MySQL documentation](https://dev.mysql.com/doc/)
- [WordPress documentation](https://wordpress.org/support/)
- [Self-signed SSL certificate tutorial](https://www.linode.com/docs/security/ssl/create-a-self-signed-tls-certificate/)
