package com.campusdual.appmazing.ws.core.rest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestController;

import com.campusdual.appmazing.openapi.core.service.ITestApi;

@RestController
public class TestRestController implements ITestApi {

	@Override
	public ResponseEntity<String> testRest() {
		return new ResponseEntity<>("It Works!", HttpStatus.OK);
	}

}
