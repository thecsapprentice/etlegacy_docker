#!/bin/bash

# Copy omnibot and merge with externally provided data
mkdir -p /omni-bot
rsync -avzq ./legacy/omni-bot/ ./omnibot
rsync -avzq /omni-bot/ ./omnibot

# Copy any maps or external data to our 'local' etmain
mkdir -p /etmain
mkdir -p /et_data/etmain
mkdir -p /root/.etlegacy/etmain
rsync -avzq /et_data/etmain/ /root/.etlegacy/etmain
rsync -avzq /etmain/ /root/.etlegacy/etmain

./etlded +set g_protect 1 +set omnibot_enable 1 +set omnibot_path "./omnibot" +exec server.cfg +set sv_wwwBaseURL "$WEB_HOST" +set com_hunkmegs 256
