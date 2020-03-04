package com.example;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class ApplicationTests {

    /* TODO:
        At the moment gradle runs all tests on build.
        The @SpringBootTest annotation requires a database connection to be available,
        which I assume is not the case when building the docker image for publishing.
        See what we can do about this.
    */

    // @Test
    // void contextLoads() {
        
    // }

}
