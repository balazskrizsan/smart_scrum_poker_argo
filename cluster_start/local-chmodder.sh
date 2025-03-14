chmod +x start-local-all.sh
chmod +x start-local-apps.sh
chmod +x delete-local-all.sh
chmod +x delete-local-apps.sh

find ./start-local -type f -name "*.sh" -exec chmod +x {} \;
