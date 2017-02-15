FROM buffy-base

MAINTAINER Guenther Morhart

#
# Set environment variables
#
ENV DEBIAN_FRONTEND=noninteractive

#
# APT packages
#
RUN apt-get update && apt-get install -y \
    cron

RUN rm -rf /var/lib/apt/lists/*


COPY bin/* /app/files/
RUN chmod 0700 /app/files/tuwas.sh

# Reset environment variables
#
ENV DEBIAN_FRONTEND=

# Create the log file to be able to run tail
RUN touch /var/log/cron.log

# Run the command on container startup
#CMD cron && tail -f /var/log/cron.log
