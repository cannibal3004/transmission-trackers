#/bin/bash
cd /app
pip install -r /app/requirements.txt
while (true); do
	python /app/transmission-trackers.py
	sleep 1m
done
