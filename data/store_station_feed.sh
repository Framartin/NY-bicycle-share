mkdir -p API
cd API
DATEHEURE=$(date +%Y-%m-%d_%H-%M-%S_%Z) 
wget -O "$DATEHEURE.json" --quiet http://www.citibikenyc.com/stations/json/
