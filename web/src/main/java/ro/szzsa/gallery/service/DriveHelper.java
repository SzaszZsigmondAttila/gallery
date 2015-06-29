package ro.szzsa.gallery.service;

import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import com.google.api.client.auth.oauth2.Credential;
import com.google.api.client.extensions.java6.auth.oauth2.AuthorizationCodeInstalledApp;
import com.google.api.client.extensions.jetty.auth.oauth2.LocalServerReceiver;
import com.google.api.client.googleapis.auth.oauth2.GoogleAuthorizationCodeFlow;
import com.google.api.client.googleapis.auth.oauth2.GoogleClientSecrets;
import com.google.api.client.googleapis.javanet.GoogleNetHttpTransport;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.api.client.util.store.DataStoreFactory;
import com.google.api.client.util.store.FileDataStoreFactory;
import com.google.api.services.drive.Drive;
import com.google.api.services.drive.DriveScopes;
import com.google.api.services.drive.model.ChildList;
import com.google.api.services.drive.model.ChildReference;

public class DriveHelper {

    private static final String APPLICATION_NAME = "Gallery";

    private static final java.io.File DATA_STORE_DIR =
        new java.io.File(System.getProperty("user.home"), ".store/gallery");

    private static final JsonFactory JSON_FACTORY = JacksonFactory.getDefaultInstance();

    private static final String FOLDER_ID = "0B65USdI-58viY2U2RFBIYl9zTWM";

    private DataStoreFactory dataStoreFactory;

    private HttpTransport httpTransport;

    private Drive drive;

    public DriveHelper() throws Exception {
        httpTransport = GoogleNetHttpTransport.newTrustedTransport();
        dataStoreFactory = new FileDataStoreFactory(DATA_STORE_DIR);
        Credential credential = authorize();
        drive = new Drive.Builder(httpTransport, JSON_FACTORY, credential).setApplicationName(APPLICATION_NAME).build();
    }

    public List<String> getFileIds() throws IOException {
        List<String> fileIds = new ArrayList<>();
        Drive.Children.List request = drive.children().list(FOLDER_ID);
        do {
            ChildList children = request.execute();

            for (ChildReference child : children.getItems()) {
                fileIds.add(child.getId());
            }
            request.setPageToken(children.getNextPageToken());
        } while (request.getPageToken() != null &&
                 request.getPageToken().length() > 0);

        return fileIds;
    }

    private Credential authorize() throws Exception {
        GoogleClientSecrets clientSecrets = GoogleClientSecrets.load(JSON_FACTORY,
                                                                     new InputStreamReader(DriveHelper.class.getResourceAsStream("/client_secrets.json")));
        if (clientSecrets.getDetails().getClientId().startsWith("Enter")
            || clientSecrets.getDetails().getClientSecret().startsWith("Enter ")) {
            System.out.println("Enter Client ID and Secret from https://code.google.com/apis/console/?api=drive into "
                               + "drive-cmdline-sample/src/main/resources/client_secrets.json");
            return null;
        }

        GoogleAuthorizationCodeFlow flow = new GoogleAuthorizationCodeFlow.Builder(
                                                                                      httpTransport, JSON_FACTORY, clientSecrets,
                                                                                      Collections.singleton(DriveScopes.DRIVE))
                                               .setDataStoreFactory(dataStoreFactory)
                                               .build();

        return new AuthorizationCodeInstalledApp(flow, new LocalServerReceiver()).authorize("user");
    }
}
