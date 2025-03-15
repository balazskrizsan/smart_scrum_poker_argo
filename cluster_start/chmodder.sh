chmod +x start-all.sh
chmod +x start-apps.sh
chmod +x start-elk.sh
chmod +x delete-all.sh
chmod +x delete-apps.sh
chmod +x delete-elk.sh

find ./start -type f -name "*.sh" -exec chmod +x {} \;
