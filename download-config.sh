#!/bin/sh
sshpass -p "$SFTP_PASSWORD" sftp -o StrictHostKeyChecking=no "$SFTP_USERNAME"@$SFTP_SERVER:uploads/bazarr/bazarr-latest.zip bazarr-latest.zip
unzip -o "bazarr-latest.zip" -d "extracted_backup"
cp extracted_backup/bazarr.db ../config/db/
cp extracted_backup/config.yaml ../config/config/