
# Clync
### Table of contents
- [System requirements](#system-requirements)
- [Application structure](#project-structure)
- [How to format your code?](#how-you-can-do-code-formatting)
- [How you can improve code readability?](#how-you-can-improve-the-readability-of-code)
- [Libraries and tools used](#libraries-and-tools-used)

### System requirements

Dart SDK Version 3.0.0 or greater.
Flutter SDK Version 3.10.0 or greater.

After successful build, your application structure should look like this:

```
.
├── android                             - It contains files required to run the application on an Android platform.
├── assets                              - It contains all images and fonts of your application.
 └── Fonts                              - Contains the font used in the application. 
 └── Gifs                               - Contains the Gifs used in the application. 
 └── Icons                              - Contains the Icons used in the application. 
 └── Images                             - Contains the Images used in the application. 
 └── Svgs                               - Contains the Svgs used in the application. 
├── ios                                 - It contains files required to run the application on an iOS platform.
├── lib                                 - Most important folder in the application, used to write most of the Dart code..
  └── main.dart                         - Starting point of the application
     ├── core                           - Core utilities and configurations. 
         └── constants                  - Stores application-wide constants. 
         └── errors                     - Error handling classes. 
         └── network                    - Network-related classes and configurations. 
         └── Localization               - Contains the translated Arabic text. 
         └── routes                     - Navigation routes for the app. 
         └── Services                   - Contains all services used in the app. 
         └── Utils                      - Contains utility classes used in the app. 
         └── Webview                    - Contains the WebView for the app.
     ├── app_export.dart                - Common imports used across the app.  
├── data                                - Data layer of the app.
      └── apiClient                     - API client classes and methods. 
      └── models                        - Data models for requests/responses. 
      └── Local_database                - Storage database used in the app. 
      └── Services                      - Socket service classes. 
├── presentation                        - It contains widgets of the screens with their controllers and the models of the whole application.
       └── bindings                     - Dependency injection bindings. 
       └── controllers                  - Contains GetX controllers (Business Logic). 
       └── models                       - UI-related models (Data Models, if needed). 
       ├── screens                      - UI layer, containing all screen widgets
             └── Authentication         - Screens related to user authentication. 
             └── Financial              - All financial-related screens of the app. 
             └── Home                   - Home screen of the app. 
             └── Onboarding             - Onboarding screen of the app. 
             └── Profile                - User profile screen of the app. 
             └── Services               - Screens related to services in the app. 
             └── Settings               - Settings screen of the app. 
             └── Social                 - Screens related to social activities in the app. 
├── theme                               - It contains app theme and decoration classes
├── widgets                             - It contains all custom widget classes
```

### How to format your code?

- if your code is not formatted then run following command in your terminal to format code
  ```
  dart format .
  ```

### How you can improve code readability?

Resolve the errors and warnings that are shown in the application.

### Libraries and tools used

- get - State management
  https://pub.dev/packages/get
- connectivity_plus - For status of network connectivity
  https://pub.dev/packages/connectivity_plus
- shared_preferences - Provide persistent storage for simple data
  https://pub.dev/packages/shared_preferences
- cached_network_image - For storing internet image into cache
  https://pub.dev/packages/cached_network_image
# Don't Directly push to main Branch instead create a dev branch with your name like dev-abc abd push your code to that baranch then create PR (Pull Request to merge the code)
