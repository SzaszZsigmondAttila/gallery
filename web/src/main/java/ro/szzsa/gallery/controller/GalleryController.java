package ro.szzsa.gallery.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ro.szzsa.gallery.service.DriveService;

@Controller
@RequestMapping("/gallery")
public class GalleryController {

    @Autowired
    private DriveService driveService;

    @RequestMapping(method = RequestMethod.GET)
    public String gallery(Map<String, Object> model) {
        model.put("data", driveService.getData());
        return "gallery";
    }
}
