package ro.szzsa.gallery.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/video")
public class VideoController {

    @RequestMapping(method = RequestMethod.GET)
    public String video() {
        return "video";
    }
}
