Docker setup for Karp-b
=======================

**This package - code and documentation - is still under construction.**

To install and run Karp-b in the Docker setup, do the following steps:

* Install [Docker](TODO)
* Download the files `git clone ...`
* `cd karp-docker`
* Install karp-b `git clone ....` (do script for this)
* Copy `backend/config/config.json.example` to `backend/config/conig.json and modify` it to suit your needs
  (see the [documentation](TODO pdf) for more information on this)
* Do the same for `backend/config/lexiconconf.json.example` and `backend/config/modes.json.example`
* Setup Karps configurations (see documentation)
* Run `./setup.sh path/to/karp/config/lexiconconf.json`
* Run `docker-compose build`
* Run `docker-compose up -d`
* Test

