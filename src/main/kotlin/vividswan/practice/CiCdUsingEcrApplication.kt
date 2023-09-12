package vividswan.practice

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class CiCdUsingEcrApplication

fun main(args: Array<String>) {
	runApplication<CiCdUsingEcrApplication>(*args)
}
