set -e
cp karp-backend/config/lexiconconf.json{.panacea,}
cp karp-backend/config/lexiconconf.json dummyauth
cp karp-backend/config/modes.json{.panacea,}
cp karp-backend/config/mappings/fieldmappings_panacea.json{.panacea,}
cp karp-backend/config/mappings/mappingconf_panacea.json{.panacea,}
cd karp-backend
virtualenv venv
source venv/bin/activate
pip install -r requirements.txt
deactivate
cd ..
