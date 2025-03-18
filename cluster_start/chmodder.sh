chmod +x delete-all.sh
chmod +x delete-apps.sh
chmod +x delete-elk.sh
chmod +x delete-local-all.sh
chmod +x delete-local-apps.sh
chmod +x delete-local-elk.sh
chmod +x delete-local-pgadmin.sh
chmod +x delete-pgadmin.sh
chmod +x local-chmodder.sh
chmod +x start-all.sh
chmod +x start-apps.sh
chmod +x start-elk.sh
chmod +x start-local-all.sh
chmod +x start-local-apps.sh
chmod +x start-local-pgadmin.sh
chmod +x start-pgadmin.sh

find ./start -type f -name "*.sh" -exec chmod +x {} \;
