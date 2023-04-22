# copy-volume
Tiny docker image to copy contents of one docker volume into another without super user rights

## Usage

```bash
$ docker run --rm -v volume1:/from -v volume2:/to botwing/copy-volume
```
## Explanation
We needed to run end2end tests inside docker containers during TeamCity build. We wanted to start with same database each build and mounted it as docker volume, but teamcity user didn't have enough access rights, so we decided to use docker for that task:

```bash
$ docker run -v ~/db-data-bak:/from -v ~/db-data:/to botwing/copy-volume
$ docker run --rm -v ~/db-data:/var/lib/postgresql/data postgres
$ run tests...
```

## License

[MIT](LICENSE)
