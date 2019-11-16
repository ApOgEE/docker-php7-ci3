# Projek Docker APOGEEK CI3

Projek ini dibuat untuk bermain dengan docker image `apogeek/php:7.3-ci3` dan CodeIgniter 3.

## Build Docker Image

Cara nak build docker image ni:

```bash
$ docker build -t apogeek/php:7.3-ci3 .
```

### Update Docker Hub

Lepas dah build, bolehlah update ke docker hub.

```bash
$ docker login
$ docker push apogeek/php:7.3-ci3
```

## Projek CodeIgniter baru

Cara nak buat projek CI3 baru guna docker image ni.

```bash
$ docker-compose run --rm ci3app composer create-project ellislab/codeigniter .
```

Projek baru ni akan masuk dalam folder `appsrc`

## Run Docker Server dan Enjoy

Lepas dah sediakan semuanya kat atas tu, bolehlah kita run docker ni dan enjoy coding codeigniter 3. Cara nak run senang je guna `docker-compose` ni:

```bash
$ docker-compose up -d
```

CI3 app yang kita develop ni boleh tengok kat browser http://localhost
