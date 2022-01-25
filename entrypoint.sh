#!/bin/sh

echo "==== Do action $INPUT_FTP_IO_ACTION ===="

lftp --debug \
  -u "$INPUT_FTP_USER","$INPUT_FTP_PASSWORD" \
  "$INPUT_FTP_SERVER" \
  -e "set ssl:verify-certificate no; set ftp:ssl-allow no; mirror --verbose $([ "$INPUT_FTP_IO_ACTION" == 'upload' ] && echo "--reverse") $([ "$INPUT_DRY_RUN" == true ] && echo "--dry-run") $INPUT_SOURCE_FOLDER $INPUT_TARGET_FOLDER .; quit;"
