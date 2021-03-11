#!/bin/bash

REPO_PATH=/var/www/html/repos
# specify all local repositories in a single variable 
LOCAL_REPOS="base centosplus extras updates epel remi-glpi91 
remi-glpi92 zemi-glpi93 remi-glpi94 remi-modular remi-php54 
remi-php70 remi-php71 remi-php72 remi-php73 remi-php74 remi
remi-safe"

# loop to update repos one at a time 
for REPO in ${LOCAL_REPOS}; do
reposync -g -l -d -m --repoid="$REPO" --newest-only --download-metadata --download_path="$REPO_PATH"/
createrepo "$REPO_PATH"/"$REPO"/
done
