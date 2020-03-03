FROM adoptopenjdk:11.0.6_10-jdk-hotspot as build
WORKDIR /opt/build
COPY build.gradle gradlew settings.gradle ./
COPY ./gradle ./gradle
RUN ./gradlew --no-daemon getDeps
COPY ./src ./src
RUN ./gradlew --build-cache --no-daemon build

FROM adoptopenjdk:11.0.6_10-jre-hotspot
WORKDIR /opt/app
COPY --from=build /opt/build/build/libs/app.jar .
COPY ./launch.sh .
EXPOSE 8080
ENTRYPOINT [ "/opt/app/launch.sh" ]
