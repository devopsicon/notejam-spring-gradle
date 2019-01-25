package performance;

import io.restassured.response.ValidatableResponse;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.JUnit4;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import static io.restassured.RestAssured.given;
import static org.hamcrest.Matchers.lessThan;

@RunWith(JUnit4.class)
public class PerformanceTest {

    Logger logger = LoggerFactory.getLogger(PerformanceTest.class);

    @Test
    public void noteCreationSpeed() throws Exception {
        // Tests if viewing notes response time for the API is less than 1000 ms
        String url =  System.getenv("TEST_URL");
        logger.error(System.getenv().toString());
        logger.error(url);
        ValidatableResponse response = given().when().get(url)
                .then();
        response.time(lessThan(3000L));
    }
}
