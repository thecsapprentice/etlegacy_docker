FROM schreckgestalt/etlegacy

# Install prereqs
RUN apt-get update && apt-get install -y \
    rsync \
 && rm -rf /var/lib/apt/lists/*


COPY et_start.sh /etlegacy/
ENTRYPOINT sh et_start.sh


