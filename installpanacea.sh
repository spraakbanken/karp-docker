cp config/lexiconconf.json{.panacea,}
cp config/lexiconcon.json dummyauth
cp config/modes.json{.panacea,}
cp config/mappings/fieldmappings_panacea.json{.panacea,}
cp config/mappings/mappingconf_panacea.json{.panacea,}
docker-compose run --rm karp python upload_offline.py --create_mode karp <todays_date>
docker-compose run --rm karp python upload_offline.py --publish_mode karp <todays_date>


