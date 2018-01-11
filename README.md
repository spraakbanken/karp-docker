Docker setup for Karp-b
=======================

**This package - code and documentation - is still under construction.**

To install and run Karp-b in the Docker setup, do the following steps:

* Install [Docker](TODO)
* Download this repo `git clone https://github.com/spraakbanken/karp-docker.git`
* `cd karp-docker`
* Install karp-backend `git clone https://github.com/spraakbanken/karp-backend.git`
* Copy `karp-backend/config/config.json.example` to `karp-backend/config/conig.json` and modify it to suit your needs
  (see the [documentation](TODO pdf) for more information on this)
* Setup Karps configurations. Options:
    * To use the a default test lexicon:
        * Run `chmod u+x installpanacea.sh`
        * Run `./installpanacea.sh`
    * To set up your own lexicons:
        * Do the configurations necessary, see [documentation](TODO)
        * Then run `./setup.sh path/to/karp/config/lexiconconf.json` (copy lexiconfconf to docker)
* Run `docker-compose build`
* Run `docker-compose up -d`
* Run `docker-compose run --rm karp python offline.py --create_metadata`
* Run `docker-compose run --rm karp python offline.py --create_mode karp test`
* Run `docker-compose run --rm karp python offline.py --publish_mode karp test`
* Test: `curl 'localhost:8081/app/'`

