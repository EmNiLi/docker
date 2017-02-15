#!/bin/bash
less /app/files/echo.sh >> /etc/crontab



cron && tail -f /var/log/cron.log