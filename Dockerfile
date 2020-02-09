FROM alpine:latest


COPY setup.sh /opt/setup.sh
RUN chmod +x /opt/setup.sh && /opt/setup.sh


ENV CHROME_BIN=/usr/bin/chromium-browser \
    CHROME_PATH=/usr/lib/chromium/
