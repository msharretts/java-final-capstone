package com.techelevator;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

@Configuration
@ConfigurationProperties(prefix="app")
public class AppConfiguration {
    private String googleapikey;

    public String getGoogleapikey() {
        return googleapikey;
    }

    public void setGoogleapikey(String googleapikey) {
        this.googleapikey = googleapikey;
    }
}
