
#!/bin/bash

# ==========================================
# Industry-Level Linux Service Management Script
# Author: DevOps Team
# ==========================================

# CONFIGURABLE VARIABLES
SERVICE_NAME="myapp"
SERVICE_UNIT="/etc/systemd/system/${SERVICE_NAME}.service"
SERVICE_LOG="/var/log/${SERVICE_NAME}.log"
APP_SCRIPT="/opt/${SERVICE_NAME}.sh"

# 1. Create Application Script
echo "Creating application script..."
cat << EOF > $APP_SCRIPT
#!/bin/bash
echo "[$(date)] ${SERVICE_NAME} started" >> $SERVICE_LOG
while true; do
  echo "[$(date)] ${SERVICE_NAME} is running..." >> $SERVICE_LOG
  sleep 60
done
EOF
chmod +x $APP_SCRIPT

# 2. Create Systemd Service Unit
echo "Creating systemd service unit..."
cat << EOF > $SERVICE_UNIT
[Unit]
Description=MyApp Daemon Service
After=network.target

[Service]
ExecStart=${APP_SCRIPT}
Restart=on-failure
User=root

[Install]
WantedBy=multi-user.target
EOF

# 3. Reload Systemd to Recognize New Service
echo "Reloading systemd daemon..."
systemctl daemon-reload

# 4. Enable the Service to Start on Boot
echo "Enabling the service..."
systemctl enable $SERVICE_NAME

# 5. Start the Service
echo "Starting the service..."
systemctl start $SERVICE_NAME

# 6. Check Service Status
echo "Checking service status..."
systemctl status $SERVICE_NAME --no-pager

# 7. View Logs
echo "Tailing service logs..."
journalctl -u $SERVICE_NAME -n 10 --no-pager

# 8. Optional: Stop and Disable Service (Uncomment to use)
# echo "Stopping the service..."
# systemctl stop $SERVICE_NAME
# echo "Disabling the service..."
# systemctl disable $SERVICE_NAME
