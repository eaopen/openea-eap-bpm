#FROM openjdk:11-jdk-stretch
FROM szopen/openjdk:11-jdk-cn
ENV LANG C.UTF-8
VOLUME /tmp
ARG DEPENDENCY=target/dependency
COPY ${DEPENDENCY}/BOOT-INF/lib /app/lib
COPY ${DEPENDENCY}/META-INF /app/META-INF
COPY ${DEPENDENCY}/BOOT-INF/classes /app
EXPOSE 8080
ENTRYPOINT ["java","-cp","app:app/lib/*","org.openea.bpm.rest.EapBpmRestApplication"]