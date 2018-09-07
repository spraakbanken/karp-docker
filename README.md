Docker setup for karp-backend
=============================

**This package - code and documentation - is still under construction.**

To install and run [karp-backend](https://github.com/spraakbanken/karp-backend) in the Docker setup, do the following steps:

* Install [Docker](https://docs.docker.com/install/#server)
* Clone this repo, in one of these ways
  * Examples below show *ssh* clones but *https* can also be used...
  * `git clone --recurse-submodules git@github.com/spraakbanken/karp-docker.git`
  * 1. `git clone git@github.com/spraakbanken/karp-docker.git`
    2. `cd karp-docker`
    3. `git submodule init`
    4. `git submodule update`
* `cd karp-docker` if not already here (and stay here for the next commands)
* Copy `karp-backend/config/config.json.example` to `karp-backend/config/config.json` and modify it to suit your needs
  (see the [documentation](https://github.com/spraakbanken/karp-backend/blob/master/doc/manual.md) for more information on this)
* Setup Karp's configurations. Options:
    * To use the a default test lexicon:
        * Run `chmod u+x install-panacea`
        * Run `./install-panacea` or e.g. `./install-panacea python3.6`
            - `install-panacea` takes the python command as argument.
            - **NOTE** Currently only up to python 3.6 is supported. 
    * To set up your own lexicons:
        * Do the configurations necessary, see [documentation](https://github.com/spraakbanken/karp-backend/blob/master/doc/manual.md)
        * Then run `./setup.sh path/to/karp/config/lexiconconf.json` (copy lexiconfconf to docker)
* Run `docker-compose build`
* Run `docker-compose up -d`
* `cd karp-backend`
* Run `docker-compose run --rm  karp python offline.py --create_metadata`
* Run `docker-compose run --rm karp python offline.py --create_mode karp test`
* Run `docker-compose run --rm karp python offline.py --publish_mode karp test`
* Test: `curl 'localhost:8081/app/'`
