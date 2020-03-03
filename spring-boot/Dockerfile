FROM adoptopenjdk:11.0.6_10-jdk-hotspot as build
WORKDIR /opt/build
COPY . .
RUN ./gradlew --no-daemon build

FROM adoptopenjdk:11.0.6_10-jre-hotspot as runtime
WORKDIR /opt/app
COPY --from=build /opt/build/build/libs/app.jar .
EXPOSE 8081

