#!/bin/sh
/app/download-config.sh # Download latest bazarr config backup and extract it
exec /init              # Start bazarr as the main process