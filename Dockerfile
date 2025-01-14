FROM  eclipse-temurin:11

ENV PORT 8080
ENV CLASSPATH /opt/lib
EXPOSE 8080

# Copy jar file
COPY ./appmazing-boot/target/appmazing-boot.jar /opt/appmazing-boot.jar
WORKDIR /opt
CMD ["/bin/bash", "-c", "case $ENVIRONMENT_PROFILE in 'production') java $JVM_OPTIONS -jar appmazing-boot.jar --spring.profiles.active=production;; 'dev') java $JVM_OPTIONS -jar appmazing-boot.jar --spring.profiles.active=dev;; *) java $JVM_OPTIONS -jar appmazing-boot.jar --spring.profiles.active=staging;; esac;"]
