# Use official OWASP ZAP stable image
FROM owasp/zap2docker-stable

# Expose ZAP port
EXPOSE 8080

# Run ZAP in daemon mode with no API key
CMD ["zap.sh", "-daemon", "-host", "0.0.0.0", "-port", "8080", "-config", "api.disablekey=true"]
