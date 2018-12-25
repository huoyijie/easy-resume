package com.iggy_huo.easyresume;

import com.iggy_huo.easyresume.resume.Resume;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.reactive.function.server.RouterFunction;
import org.springframework.web.reactive.function.server.RouterFunctions;
import org.springframework.web.reactive.function.server.ServerResponse;
import reactor.core.publisher.Hooks;

import static org.springframework.web.reactive.function.BodyInserters.fromObject;
import static org.springframework.web.reactive.function.server.RequestPredicates.GET;

@SpringBootApplication
public class EasyResumeApplication {

	public static void main(String[] args) {
		Hooks.onOperatorDebug();
		SpringApplication.run(EasyResumeApplication.class, args);
	}

	@Bean
	public RouterFunction<ServerResponse> routerFunction() {
		return RouterFunctions
				.route(GET("/demo"), serverRequest -> ServerResponse.ok().body(fromObject("Demo OK")))
				.andRoute(GET("/").or(GET("/index")), serverRequest -> ServerResponse.ok().render("index", Resume.IGGY_HUO_RESUME))
				.andRoute(GET("/render/{template}/{name}"), serverRequest -> ServerResponse.ok().render(
						serverRequest.pathVariable("template").replaceAll("-", "/"),
						Resume.load(serverRequest.pathVariable("name"))));
	}

}
