while true;
do
    echo "[2020-07-02 02:30:27 +0000] [1486] [INFO] Autorestarting worker after current request." >> /var/log/django.txt
    echo "ESC[34m[2020-04-03T02:30:33.349] [TRACE] SSR - ESC[39mneedCacheUpdate:false" >> /var/log/node.txt
    echo "ESC[34m[2019-05-23T23:44:18.383] [TRACE] (CACHEMANAGER) - ESC[39mssr request comming -> 2019-05-22T23:46:49.104Z /en/works/copy-design" >> /var/log/cachemanager.txt
    sleep 1
done