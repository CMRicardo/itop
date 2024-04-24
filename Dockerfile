# Use the official iTop image from Docker Hub
FROM vbkunin/itop

# Copy the iTop configuration volume
COPY ./my-itop-conf-volume /var/www/html/conf

# Copy the iTop database volume
COPY ./my-itop-db-volume /var/lib/mysql

# Expose port 8080
EXPOSE 8080

# Start the iTop container in detached mode
CMD ["docker", "run", "-d", "-p", "8080:80", "--name=my-itop", "-v", "my-itop-conf-volume:/var/www/html/conf", "-v", "my-itop-db-volume:/var/lib/mysql", "vbkunin/itop"]
