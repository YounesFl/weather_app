J'ai utilisé deux API pour effectuer ce test : 

- The open weather map API https://openweathermap.org/api. C'est une API complète et gratuite qui permet de récupérer différentes informations comme la météo sur différents jours et endroits selon la latitude et longitude.

- L'API google map places qui m'a permit de faire l'autocomplete et de récupérer les coordonnées de la localisation en fonction du lieu choisi. 

J'ai utilisé : 
Freezed pour la génération de modèle.
Bloc cubit pour la gestion d'état.
Dio pour les requêtes API.
Geolocator pour récupérer la localisation du user.
Google_maps pour l'autocomplete des différents lieux.

📚 Steps
flutter pub get
flutter packages pub run build_runner build (In the case where it's necessary to generate the files)

🔌 APP ARCHITECUTRE :

This application is developed in clean architecture with a feature-first structure.

3 layers: PRESENTATION --> DOMAIN <-- DATA


---- PRESENTATIONS LAYER => VIEWS + CUBITS (app state)

VIEWS depend on --> their own STATES and CUBITS (for app state listening)
CUBITS depend on --> USECASES


---- DOMAIN LAYER => USECASES + ENTITIES + REPO (contrats)

USECASES depend on --> REPOSITORIES (abstracts) and ENTITIES


---- DATA LAYER => REPO IMPLS (uses DtoMappers) --> SOURCES

REPOSITORIES IMPL depend on --> SOURCES (abstracts) and DTO MAPPERS (abstracts) & implement --> REPOSITORIES

SOURCES IMPL depend on --> SOURCES (abstracts) and DTO MAPPERS (abstracts) & implement --> SOURCES


- Data sources should fulfill the source contracts
Data layer (or infrastructure layer) contains all data from the outside
(api, 3rd party librairies, io, file system...)
The implements of these contracts will be injected
inside the repositories. The repo should not know about any impl

- Repositories are used by the usecases in the domain layer
Repos are contracts. Their implementations are in the data layer
right before the sources

- A usecase (or interactor) represents the interaction between
the presentation layer (platform like app, web...) and the data layer
presentation -> domain -> data
A use case always starts with a verb and reprensentation an
action in the app (loginUser, createUser, fetchUserComments...)
A usecase always has a call method. It is a callable method therefore
usecase.call(params) is the same as usecase(params). "call" could be
omitted

- The presentation side of each feature contain the cubit folder with the state management/logic. The view file do not contain logic.

The design_system folder contain all the generic widget of the app.