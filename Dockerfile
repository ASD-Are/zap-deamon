# Use official ZAP Docker image
FROM ghcr.io/zaproxy/zaproxy:stable

# Expose the port ZAP runs on
EXPOSE 8080

# Run ZAP in daemon mode on container start
ENTRYPOINT ["zap.sh", "-daemon", "-host", "0.0.0.0", "-port", "8080", "-config", "api.disablekey=true"]
