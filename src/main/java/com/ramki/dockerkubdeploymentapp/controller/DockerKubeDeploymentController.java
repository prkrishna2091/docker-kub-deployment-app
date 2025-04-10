package com.ramki.dockerkubdeploymentapp.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/dk-kube")
public class DockerKubeDeploymentController {

    @GetMapping("/welcome")
    public String welcome() {
        return "Hello DockerKubeDeploymentApp";
    }

    @GetMapping("/other")
    public String other() {
        return "Hello..! finally you are in kubernetes deployment";
    }
}
