package ro.szzsa.gallery.service;

import java.util.ArrayList;

import javax.annotation.PostConstruct;

import org.springframework.stereotype.Service;

import ro.szzsa.gallery.model.GalleryData;
import ro.szzsa.gallery.model.Image;

/**
 *
 */
@Service
public class DriveService {

    // TODO: extract to DB
    private static GalleryData data;

    // TODO: extract to DB
    private static DriveHelper driveHelper;

    @PostConstruct
    public void init() {
        try {
            driveHelper = new DriveHelper();
            data = new GalleryData();
            data.setImages(new ArrayList<Image>());
            refreshData();
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
    }

    public synchronized void refreshData() {
        try {
            data.getImages().clear();
            for (String fileId : driveHelper.getFileIds()) {
                data.getImages().add(new Image(fileId));
            }
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
    }

    public synchronized GalleryData getData() {
        return data;
    }
}
