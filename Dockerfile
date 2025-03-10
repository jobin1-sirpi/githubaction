FROM rocker/shiny:latest

# Install dependencies
RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev

# Copy application files
COPY . /srv/shiny-server/

# Set permissions
RUN chown -R shiny:shiny /srv/shiny-server/

# Expose Shiny port
EXPOSE 3838

CMD ["/init"]
