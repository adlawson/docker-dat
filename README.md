# Dat server in Docker

<img src="http://maxogden.github.io/slides/realtimeconf/images/dat-logo.png" alt="Dat" align="right" width=80/>

This is a simple [Docker][docker] container for [Dat][dat]. It's pre-configured
to run a Dat server, useful for simple inspection and HTTP access to your data.

You can pull the container from the Docker Index or use it as a base for your
own.
```bash
$ docker pull adlawson/dat
```

## Using the container
The preferred way to run the container is by mounting an existing dat repo to
the `/data` docker volume. If the mounted directory isn't a dat repo, docker
will run `dat init`.
```bash
$ docker run -d -v /path/to/repo:/data -p 6461:6461 --name=dat adlawson/dat
$ curl localhost:6461/api
# => {"dat":"Hello","version":"5.x","changes":0,"approximateSize":{"documents":"0 B"}}
$ curl -H 'Content-Type: application/json' -d '{"foo": "bar"}' localhost:6461/api/rows
# => {"foo":"bar","key":"chy4xkcyw00000epkk6ttd315","version":1}
```

![Dat Editor][screenshot]

## License
The content of this library is released under the **MIT License** by
**Andrew Lawson**.<br/> You can find a copy of this license in
[`LICENSE`][license] or at http://opensource.org/licenses/mit.

<!-- Links -->
[docker]: https://www.docker.com
[dat]: http://dat-data.com

<!-- Project -->
[license]: /LICENSE
[screenshot]: screenshot.png
