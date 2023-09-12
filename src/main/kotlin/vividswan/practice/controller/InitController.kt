package vividswan.practice.controller

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

@RestController
class InitController {
    @GetMapping("/health-check")
    fun healthCheck(): String {
        return "valid"
    }
}
