
// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'trufi_localization.dart';

// ignore_for_file: unnecessary_brace_in_string_interps

/// The translations for French (`fr`).
class TrufiLocalizationFr extends TrufiLocalization {
  TrufiLocalizationFr([String locale = 'fr']) : super(locale);

  @override
  String get title => 'Trufi App';

  @override
  String get tagline => 'Transports en commun à Cochabamba';

  @override
  String get description => 'La meilleure façon de se déplacer en trufis, micros et bus dans Cochabamba.';

  @override
  String version(Object version) {
    return 'Version ${version}';
  }

  @override
  String get alertLocationServicesDeniedTitle => 'Pas d\'emplacement';

  @override
  String get alertLocationServicesDeniedMessage => 'Assurez-vous que votre appareil dispose d\'un GPS et que les paramètres de localisation sont activés.';

  @override
  String get commonOK => 'OK';

  @override
  String get commonCancel => 'Annuler';

  @override
  String get commonGoOffline => 'Se déconnecter';

  @override
  String get commonGoOnline => 'Se connecter';

  @override
  String get commonDestination => 'Destination';

  @override
  String get commonOrigin => 'Origine';

  @override
  String get commonNoInternet => 'Pas de connexion Internet.';

  @override
  String get commonFailLoading => 'Échec du chargement des données';

  @override
  String get commonUnknownError => 'Erreur inconnue';

  @override
  String get commonError => 'Erreur';

  @override
  String get noRouteError => 'Désolé, nous n\'avons pas pu trouver d\'itinéraire. Que voulez-vous faire?';

  @override
  String get noRouteErrorActionCancel => 'Essayer une autre destination';

  @override
  String get noRouteErrorActionReportMissingRoute => 'Signaler un itinéraire manquant';

  @override
  String get noRouteErrorActionShowCarRoute => 'Afficher l\'itinéraire en voiture';

  @override
  String get errorServerUnavailable => 'Nous sommes désolés. Le planificateur de trajet est temporairement indisponible. Veuillez réessayer plus tard.';

  @override
  String get errorOutOfBoundary => 'Le trajet n\'est pas possible. Vous essayez peut-être de planifier un trajet en dehors des limites de données cartographiques.';

  @override
  String get errorPathNotFound => 'Le trajet n\'est pas possible. Votre point de départ ou d\'arrivée peut ne pas être accessible en toute sécurité (par exemple, vous démarrez peut-être dans une rue résidentielle reliée uniquement à une autoroute).';

  @override
  String get errorNoTransitTimes => 'Pas de temps de transit disponible. La date peut-être dépassée ou trop tard dans le futur ou il peut ne pas y avoir de service de transit pour votre trajet au moment que vous l\'avez choisi.';

  @override
  String get errorServerTimeout => 'Le planificateur de trajet prend beaucoup trop de temps pour traiter votre demande. Veuillez réessayer plus tard.';

  @override
  String get errorTrivialDistance => 'L\'origine est à une distance insignifiante de la destination.';

  @override
  String get errorServerCanNotHandleRequest => 'La demande contient des erreurs que le serveur ne veut pas ou ne peut pas traiter.';

  @override
  String get errorUnknownOrigin => 'L\'origine est inconnue. Pouvez-vous être un peu plus descriptif?';

  @override
  String get errorUnknownDestination => 'La destination est inconnue. Pouvez-vous être un peu plus descriptif?';

  @override
  String get errorUnknownOriginDestination => 'L\'origine et la destination sont inconnues. Pouvez-vous être un peu plus descriptif?';

  @override
  String get errorNoBarrierFree => 'L\'origine et la destination ne sont pas accessibles en chaise roulante.';

  @override
  String get errorAmbiguousOrigin => 'Le planificateur de trajet n\'est pas sûr du lieu de départ. Veuillez choisir parmis les options suivantes ou être plus précis.';

  @override
  String get errorAmbiguousDestination => 'Le planificateur de trajet ne sait pas trop à quelle destination vous souhaitez aller. Veuillez choisir parmi les options suivantes ou être plus précis.';

  @override
  String get errorAmbiguousOriginDestination => 'L\'origine et la destination sont ambiguës. Veuillez choisir parmi les options suivantes ou être plus précis.';

  @override
  String get searchHintOrigin => 'Choisissez le point de départ';

  @override
  String get searchHintDestination => 'Choisissez une destination';

  @override
  String get searchItemChooseOnMap => 'Choisissez sur la carte';

  @override
  String get searchItemYourLocation => 'Votre emplacement';

  @override
  String get searchItemNoResults => 'Aucun résultat';

  @override
  String get searchTitlePlaces => 'Endroits';

  @override
  String get searchTitleRecent => 'Récent';

  @override
  String get searchTitleFavorites => 'Favoris';

  @override
  String get searchTitleResults => 'Résultats de la recherche';

  @override
  String get searchPleaseSelectOrigin => 'Sélectionnez un point de départ';

  @override
  String get searchPleaseSelectDestination => 'Sélectionnez la destination';

  @override
  String get searchFailLoadingPlan => 'Échec du chargement du plan.';

  @override
  String get searchMapMarker => 'Position dans le plan';

  @override
  String get chooseLocationPageTitle => 'Choisissez un point sur le plan';

  @override
  String get chooseLocationPageSubtitle => 'Agrandir et déplacer la carte pour centrer le marqueur';

  @override
  String instructionJunction(Object street1, Object street2) {
    return '${street1} & ${street2}';
  }

  @override
  String instructionWalk(Object duration, Object distance, Object location) {
    return 'Marcher ${duration} (${distance}) vers\n${location}';
  }

  @override
  String instructionRide(Object vehicle, Object duration, Object distance, Object location) {
    return 'En ${vehicle} pendant ${duration} (${distance}) vers\n${location}';
  }

  @override
  String get instructionVehicleBus => 'Bus';

  @override
  String get instructionVehicleMicro => 'Micro';

  @override
  String get instructionVehicleMinibus => 'Minibus';

  @override
  String get instructionVehicleTrufi => 'Trufi';

  @override
  String get instructionVehicleCar => 'Voiture';

  @override
  String get instructionVehicleGondola => 'Gondole';

  @override
  String get instructionVehicleLightRail => 'Light Rail Train';

  @override
  String instructionDurationMinutes(Object value) {
    return '${value} min.';
  }

  @override
  String instructionDistanceKm(Object value) {
    return '${value} km.';
  }

  @override
  String instructionDistanceMeters(Object value) {
    return '${value} m.';
  }

  @override
  String get menuConnections => 'Afficher les itinéraires';

  @override
  String get menuAbout => 'À propos';

  @override
  String get menuTeam => 'Équipe';

  @override
  String get menuFeedback => 'Envoyer un commentaire';

  @override
  String get menuOnline => 'En ligne';

  @override
  String get menuAppReview => 'Évaluer l\'application';

  @override
  String get menuShareApp => 'Share the app';

  @override
  String shareAppText(Object url) {
    return 'Download Trufi App, the public transport app for Cochabamba, at ${url}';
  }

  @override
  String get feedbackContent => 'Avez-vous des suggestions pour notre application ou avez-vous trouvé des erreurs dans les données? Nous aimerions le savoir! Assurez-vous d\'ajouter votre adresse électronique ou votre numéro de téléphone pour que nous puissions vous répondre.';

  @override
  String get feedbackTitle => 'Envoyez-nous un e-mail';

  @override
  String get aboutContent => 'Nous sommes une équipe bolivienne et internationale de personnes qui aiment et soutiennent les transports en commun. Nous avons développé cette application pour faciliter l\'utilisation du système de transport en commun à Cochabamba et dans les environs.';

  @override
  String get aboutLicenses => 'Licences';

  @override
  String get aboutOpenSource => 'This app is released as open source on GitHub. Feel free to contribute or bring it to your own city.';

  @override
  String get teamContent => 'Nous sommes une équipe internationale appelée Trufi Association qui a créé cette application avec l\'aide de nombreux bénévoles! Voulez-vous améliorer l\'application Trufi et faire partie de notre équipe? Merci de nous contacter via:';

  @override
  String teamSectionRepresentatives(Object representatives) {
    return 'Représentants: ${representatives}';
  }

  @override
  String teamSectionTeam(Object teamMembers) {
    return 'Équipe: ${teamMembers}';
  }

  @override
  String teamSectionTranslations(Object translators) {
    return 'Traductions: ${translators}';
  }

  @override
  String teamSectionRoutes(Object routeContributors, Object osmContributors) {
    return 'Itinéraires: ${routeContributors} et tous les utilisateurs ayant chargé des itinéraires dans OpenStreetMap, tels que ${osmContributors}.\nContactez-nous si vous souhaitez rejoindre la communauté OpenStreetMap!';
  }

  @override
  String get donate => 'Donate';

  @override
  String get readOurBlog => 'Read our blog';

  @override
  String get followOnFacebook => 'Follow us on Facebook';

  @override
  String get followOnTwitter => 'Follow us on Twitter';

  @override
  String get followOnInstagram => 'Follow us on Instagram';

  @override
  String get appReviewDialogTitle => 'Enjoying Trufi?';

  @override
  String get appReviewDialogContent => 'Support us with a review on the Google Play Store.';

  @override
  String get appReviewDialogButtonDecline => 'Not now';

  @override
  String get appReviewDialogButtonAccept => 'Write review';

  @override
  String get mapTypeLabel => 'Map Type';

  @override
  String get mapTypeStreetsCaption => 'Streets';

  @override
  String get mapTypeSatelliteCaption => 'Satellite';

  @override
  String get mapTypeTerrainCaption => 'Terrain';

  @override
  String get menuYourPlaces => 'Your places';

  @override
  String get savedPlacesSetIconLabel => 'Change symbol';

  @override
  String get savedPlacesSetNameLabel => 'Edit name';

  @override
  String get savedPlacesSetPositionLabel => 'Edit position';

  @override
  String get savedPlacesRemoveLabel => 'Remove place';

  @override
  String get savedPlacesSelectIconTitle => 'Select symbol';

  @override
  String get savedPlacesEnterNameTitle => 'Enter name';

  @override
  String get commonSave => 'Save';
}

/// The translations for French, as used in France (`fr_FR`).
class TrufiLocalizationFrFr extends TrufiLocalizationFr {
  TrufiLocalizationFrFr(): super('fr_FR');

  @override
  String get title => 'Trufi App';

  @override
  String get tagline => 'Transports en commun à Cochabamba';

  @override
  String get description => 'La meilleure façon de se déplacer en trufis, micros et bus dans Cochabamba.';

  @override
  String version(Object version) {
    return 'Version ${version}';
  }

  @override
  String get alertLocationServicesDeniedTitle => 'Pas d\'emplacement';

  @override
  String get alertLocationServicesDeniedMessage => 'Assurez-vous que votre appareil dispose d\'un GPS et que les paramètres de localisation sont activés.';

  @override
  String get commonOK => 'OK';

  @override
  String get commonCancel => 'Annuler';

  @override
  String get commonGoOffline => 'Se déconnecter';

  @override
  String get commonGoOnline => 'Se connecter';

  @override
  String get commonDestination => 'Destination';

  @override
  String get commonOrigin => 'Origine';

  @override
  String get commonNoInternet => 'Pas de connexion Internet.';

  @override
  String get commonFailLoading => 'Échec du chargement des données';

  @override
  String get commonUnknownError => 'Erreur inconnue';

  @override
  String get commonError => 'Erreur';

  @override
  String get noRouteError => 'Désolé, nous n\'avons pas pu trouver d\'itinéraire. Que voulez-vous faire?';

  @override
  String get noRouteErrorActionCancel => 'Essayer une autre destination';

  @override
  String get noRouteErrorActionReportMissingRoute => 'Signaler un itinéraire manquant';

  @override
  String get noRouteErrorActionShowCarRoute => 'Afficher l\'itinéraire en voiture';

  @override
  String get errorServerUnavailable => 'Nous sommes désolés. Le planificateur de trajet est temporairement indisponible. Veuillez réessayer plus tard.';

  @override
  String get errorOutOfBoundary => 'Le trajet n\'est pas possible. Vous essayez peut-être de planifier un trajet en dehors des limites de données cartographiques.';

  @override
  String get errorPathNotFound => 'Le trajet n\'est pas possible. Votre point de départ ou d\'arrivée peut ne pas être accessible en toute sécurité (par exemple, vous démarrez peut-être dans une rue résidentielle reliée uniquement à une autoroute).';

  @override
  String get errorNoTransitTimes => 'Pas de temps de transit disponible. La date peut-être dépassée ou trop tard dans le futur ou il peut ne pas y avoir de service de transit pour votre trajet au moment que vous l\'avez choisi.';

  @override
  String get errorServerTimeout => 'Le planificateur de trajet prend beaucoup trop de temps pour traiter votre demande. Veuillez réessayer plus tard.';

  @override
  String get errorTrivialDistance => 'L\'origine est à une distance insignifiante de la destination.';

  @override
  String get errorServerCanNotHandleRequest => 'La demande contient des erreurs que le serveur ne veut pas ou ne peut pas traiter.';

  @override
  String get errorUnknownOrigin => 'L\'origine est inconnue. Pouvez-vous être un peu plus descriptif?';

  @override
  String get errorUnknownDestination => 'La destination est inconnue. Pouvez-vous être un peu plus descriptif?';

  @override
  String get errorUnknownOriginDestination => 'L\'origine et la destination sont inconnues. Pouvez-vous être un peu plus descriptif?';

  @override
  String get errorNoBarrierFree => 'L\'origine et la destination ne sont pas accessibles en chaise roulante.';

  @override
  String get errorAmbiguousOrigin => 'Le planificateur de trajet n\'est pas sûr du lieu de départ. Veuillez choisir parmis les options suivantes ou être plus précis.';

  @override
  String get errorAmbiguousDestination => 'Le planificateur de trajet ne sait pas trop à quelle destination vous souhaitez aller. Veuillez choisir parmi les options suivantes ou être plus précis.';

  @override
  String get errorAmbiguousOriginDestination => 'L\'origine et la destination sont ambiguës. Veuillez choisir parmi les options suivantes ou être plus précis.';

  @override
  String get searchHintOrigin => 'Choisissez le point de départ';

  @override
  String get searchHintDestination => 'Choisissez une destination';

  @override
  String get searchItemChooseOnMap => 'Choisissez sur la carte';

  @override
  String get searchItemYourLocation => 'Votre emplacement';

  @override
  String get searchItemNoResults => 'Aucun résultat';

  @override
  String get searchTitlePlaces => 'Endroits';

  @override
  String get searchTitleRecent => 'Récent';

  @override
  String get searchTitleFavorites => 'Favoris';

  @override
  String get searchTitleResults => 'Résultats de la recherche';

  @override
  String get searchPleaseSelectOrigin => 'Sélectionnez un point de départ';

  @override
  String get searchPleaseSelectDestination => 'Sélectionnez la destination';

  @override
  String get searchFailLoadingPlan => 'Échec du chargement du plan.';

  @override
  String get searchMapMarker => 'Position dans le plan';

  @override
  String get chooseLocationPageTitle => 'Choisissez un point sur le plan';

  @override
  String get chooseLocationPageSubtitle => 'Agrandir et déplacer la carte pour centrer le marqueur';

  @override
  String instructionJunction(Object street1, Object street2) {
    return '${street1} & ${street2}';
  }

  @override
  String instructionWalk(Object duration, Object distance, Object location) {
    return 'Marcher ${duration} (${distance}) vers\n${location}';
  }

  @override
  String instructionRide(Object vehicle, Object duration, Object distance, Object location) {
    return 'En ${vehicle} pendant ${duration} (${distance}) vers\n${location}';
  }

  @override
  String get instructionVehicleBus => 'Bus';

  @override
  String get instructionVehicleMicro => 'Micro';

  @override
  String get instructionVehicleMinibus => 'Minibus';

  @override
  String get instructionVehicleTrufi => 'Trufi';

  @override
  String get instructionVehicleCar => 'Voiture';

  @override
  String get instructionVehicleGondola => 'Gondole';

  @override
  String instructionDurationMinutes(Object value) {
    return '${value} min.';
  }

  @override
  String instructionDistanceKm(Object value) {
    return '${value} km.';
  }

  @override
  String instructionDistanceMeters(Object value) {
    return '${value} m.';
  }

  @override
  String get menuConnections => 'Afficher les itinéraires';

  @override
  String get menuAbout => 'À propos';

  @override
  String get menuTeam => 'Équipe';

  @override
  String get menuFeedback => 'Envoyer un commentaire';

  @override
  String get menuOnline => 'En ligne';

  @override
  String get menuAppReview => 'Évaluer l\'application';

  @override
  String get feedbackContent => 'Avez-vous des suggestions pour notre application ou avez-vous trouvé des erreurs dans les données? Nous aimerions le savoir! Assurez-vous d\'ajouter votre adresse électronique ou votre numéro de téléphone pour que nous puissions vous répondre.';

  @override
  String get feedbackTitle => 'Envoyez-nous un e-mail';

  @override
  String get aboutContent => 'Nous sommes une équipe bolivienne et internationale de personnes qui aiment et soutiennent les transports en commun. Nous avons développé cette application pour faciliter l\'utilisation du système de transport en commun à Cochabamba et dans les environs.';

  @override
  String get aboutLicenses => 'Licences';

  @override
  String get aboutOpenSource => 'This app is released as open source on GitHub. Feel free to contribute or bring it to your own city.';

  @override
  String get teamContent => 'Nous sommes une équipe internationale appelée Trufi Association qui a créé cette application avec l\'aide de nombreux bénévoles! Voulez-vous améliorer l\'application Trufi et faire partie de notre équipe? Merci de nous contacter via:';

  @override
  String teamSectionRepresentatives(Object representatives) {
    return 'Représentants: ${representatives}';
  }

  @override
  String teamSectionTeam(Object teamMembers) {
    return 'Équipe: ${teamMembers}';
  }

  @override
  String teamSectionTranslations(Object translators) {
    return 'Traductions: ${translators}';
  }

  @override
  String teamSectionRoutes(Object routeContributors, Object osmContributors) {
    return 'Itinéraires: ${routeContributors} et tous les utilisateurs ayant chargé des itinéraires dans OpenStreetMap, tels que ${osmContributors}.\nContactez-nous si vous souhaitez rejoindre la communauté OpenStreetMap!';
  }
}