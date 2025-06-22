package com.nadiya.taskmanager.project_2.controller

import org.springframework.stereotype.Controller
import org.springframework.ui.Model
import org.springframework.web.bind.annotation.GetMapping
import java.util.*

@Controller
class MyController {

    @GetMapping("//")
    fun index(model: Model): String {
        model.addAttribute("message", "Привіт з JTE та Spring на Kotlin!")
        model.addAttribute("userName", "Іван")
        model.addAttribute("age", 30)
        model.addAttribute("items", listOf("Яблуко", "Банан", "Апельсин"))

        val userInfo = mutableMapOf<String, String>()
        userInfo["ім'я"] = "Олена"
        userInfo["місто"] = "Київ"
        userInfo["професія"] = "Розробник"
        model.addAttribute("userInfo", userInfo)

        return "index"
    }

    @GetMapping("/another")
    fun anotherPage(): String {
        return "another_template"
    }
}