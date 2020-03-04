FROM adoptopenjdk:11.0.6_10-jdk-hotspot as build
WORKDIR /project
COPY build.gradle gradlew settings.gradle ./
COPY ./gradle ./gradle
RUN ./gradlew --no-daemon getDeps
COPY ./src ./src
RUN ./gradlew --build-cache --no-daemon build

FROM adoptopenjdk:11.0.6_10-jre-hotspot
WORKDIR /app
COPY --from=build /project/build/libs/app.jar .
COPY ./launch.sh .
EXPOSE 8080
ENTRYPOINT [ "/opt/app/launch.sh" ]
