# Use the official OWASP ZAP stable image from GitHub Container Registry
FROM ghcr.io/zaproxy/zaproxy:stable

# Expose ZAP daemon port
EXPOSE 8080

# Start ZAP in daemon mode
CMD ["zap.sh", "-daemon", "-host", "0.0.0.0", "-port", "8080", "-config", "api.disablekey=true"]
