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
    * To set up your own lexicons:
        * Do the configurations necessary, see [documentation](TODO)
        * Then un `./setup.sh path/to/karp/config/lexiconconf.json` (copy lexiconfconf to docker)
    * To use the a default test lexicon, run `installpanacea.sh`
* Run `docker-compose build`
* Run `docker-compose up -d`
* Test

