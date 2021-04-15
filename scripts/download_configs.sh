#!/bin/bash

host="root@snowball.ethz.ch"

ssh -tt -p 2085 ${host} bash -c './save_configs.sh'

# Get the name of the newest config directory.
directory="$(ssh -p 2085 ${host} bash -c '"ls -t -I \"*.zip\"" | grep configs_ | head -1')"

echo "Downloading ${directory} from ${host}"

# Copy the content of the config directory to the local copy of the submission repo's config directory.
scp -P 2085 -r "${host}:${directory}/*" "$(dirname "$0")/../configs/"

# Clean up on the server.
echo "Removing ${directory} from ${host}"
ssh -p 2085 ${host} bash -c "\"rm -r ${directory}\""
ssh -p 2085 ${host} bash -c "\"rm ${directory}.zip\""
