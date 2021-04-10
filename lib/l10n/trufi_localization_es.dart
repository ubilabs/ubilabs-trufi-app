
// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'trufi_localization.dart';

// ignore_for_file: unnecessary_brace_in_string_interps

/// The translations for Spanish Castilian (`es`).
class TrufiLocalizationEs extends TrufiLocalization {
  TrufiLocalizationEs([String locale = 'es']) : super(locale);

  @override
  String get title => 'Trufi App';

  @override
  String get tagline => 'Transporte público en Cochabamba';

  @override
  String get description => 'La mejor forma de viajar con trufis, micros y buses a través de Cochabamba.';

  @override
  String version(Object version) {
    return 'Versión ${version}';
  }

  @override
  String get alertLocationServicesDeniedTitle => 'Sin acceso a la ubicación';

  @override
  String get alertLocationServicesDeniedMessage => 'Por favor, asegúrese de que el GPS y las configuraciones de ubicación esten activadas en su dispositivo.';

  @override
  String get commonOK => 'Aceptar';

  @override
  String get commonCancel => 'Cancelar';

  @override
  String get commonGoOffline => 'Salir de línea';

  @override
  String get commonGoOnline => 'Ir en línea';

  @override
  String get commonDestination => 'Destino';

  @override
  String get commonOrigin => 'Origen';

  @override
  String get commonNoInternet => 'Sin conexión a internet.';

  @override
  String get commonFailLoading => 'Error al cargar datos';

  @override
  String get commonUnknownError => 'Error desconocido';

  @override
  String get commonError => 'Error';

  @override
  String get noRouteError => 'Lo sentimos, no pudimos encontrar una ruta. ¿Qué quiere hacer?';

  @override
  String get noRouteErrorActionCancel => 'Prueba con otro destino';

  @override
  String get noRouteErrorActionReportMissingRoute => 'Reportar una ruta faltante';

  @override
  String get noRouteErrorActionShowCarRoute => 'Mostrar ruta en auto';

  @override
  String get errorServerUnavailable => 'Lo sentimos. El planificador de ruta está fuera de servicio temporalmente. Inténtelo más tarde.';

  @override
  String get errorOutOfBoundary => 'Viaje no disponible. Puede que esté intentando planificar un viaje fuera de los límites disponibles.';

  @override
  String get errorPathNotFound => 'Viaje no disponible. Su punto de origen y/o destino pueden no ser seguros. Seleccione un inicio y final en calles residenciales.';

  @override
  String get errorNoTransitTimes => 'No hay tiempos de tránsito disponibles. La información podría no ser válida para la fecha actual o no hay rutas disponibles para su viaje.';

  @override
  String get errorServerTimeout => 'El planificador de rutas está tardando demasiado. Por favor, inténtelo más tarde.';

  @override
  String get errorTrivialDistance => 'Origen y destino están demasiado cerca.';

  @override
  String get errorServerCanNotHandleRequest => 'La solicitud tiene errores que el servidor no puede procesar.';

  @override
  String get errorUnknownOrigin => 'Origen desconocido. ¿Podría ser un poco más preciso?';

  @override
  String get errorUnknownDestination => 'Destino desconocido. ¿Podría ser un poco más preciso?';

  @override
  String get errorUnknownOriginDestination => 'Origen y destino desconocidos ¿Podría ser un poco más preciso?';

  @override
  String get errorNoBarrierFree => 'Origen y destino no son accesibles a silla de ruedas.';

  @override
  String get errorAmbiguousOrigin => 'El planificador de rutas no está seguro de su origen. Por favor, seleccione una de las siguientes opciones o introduzca un origen más exacto.';

  @override
  String get errorAmbiguousDestination => 'El planificador de rutas no está seguro de su destino. Por favor, seleccione una de las siguientes opciones o introduzca un destino más exacto.';

  @override
  String get errorAmbiguousOriginDestination => 'Origen y destino son ambiguos. Por favor, seleccione una de las siguientes opciones o introduzca un destino más exacto.';

  @override
  String get searchHintOrigin => 'Seleccione punto de origen';

  @override
  String get searchHintDestination => 'Seleccione destino';

  @override
  String get searchItemChooseOnMap => 'Seleccionar en el mapa';

  @override
  String get searchItemYourLocation => 'Su ubicación';

  @override
  String get searchItemNoResults => 'Ningun resultado';

  @override
  String get searchTitlePlaces => 'Lugares';

  @override
  String get searchTitleRecent => 'Recientes';

  @override
  String get searchTitleFavorites => 'Favoritos';

  @override
  String get searchTitleResults => 'Resultados de búsqueda';

  @override
  String get searchPleaseSelectOrigin => 'Seleccione origen';

  @override
  String get searchPleaseSelectDestination => 'Seleccione destino';

  @override
  String get searchFailLoadingPlan => 'Error al cargar el itinerario.';

  @override
  String get searchMapMarker => 'Posición en el Mapa';

  @override
  String get chooseLocationPageTitle => 'Elige un punto en el mapa';

  @override
  String get chooseLocationPageSubtitle => 'Amplía y mueve el mapa para centrar el marcador';

  @override
  String instructionJunction(Object street1, Object street2) {
    return '${street1} y ${street2}';
  }

  @override
  String instructionWalk(Object duration, Object distance, Object location) {
    return 'Caminar ${duration} (${distance}) hasta\n${location}';
  }

  @override
  String instructionRide(Object vehicle, Object duration, Object distance, Object location) {
    return 'Tomar ${vehicle} por ${duration} (${distance}) hasta\n${location}';
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
  String get instructionVehicleCar => 'Coche';

  @override
  String get instructionVehicleGondola => 'Góndola';

  @override
  String get instructionVehicleLightRail => 'Light Rail Train';

  @override
  String instructionDurationMinutes(Object value) {
    return '${value} min';
  }

  @override
  String instructionDistanceKm(Object value) {
    return '${value} km';
  }

  @override
  String instructionDistanceMeters(Object value) {
    return '${value} m';
  }

  @override
  String get menuConnections => 'Muestra rutas';

  @override
  String get menuAbout => 'Acerca';

  @override
  String get menuTeam => 'Sobre el equipo';

  @override
  String get menuFeedback => 'Enviar comentarios';

  @override
  String get menuOnline => 'En línea';

  @override
  String get menuAppReview => 'Valora la aplicación';

  @override
  String get menuShareApp => 'Share the app';

  @override
  String shareAppText(Object url) {
    return 'Download Trufi App, the public transport app for Cochabamba, at ${url}';
  }

  @override
  String get feedbackContent => '¿Tiene sugerencias para nuestra aplicación o ha encontrado algunos errores en los datos? Nos encantaría saberlo! Asegúrese de agregar su dirección de correo electrónico o teléfono para que podamos responderlo.';

  @override
  String get feedbackTitle => 'Envíanos un correo electrónico';

  @override
  String get aboutContent => 'Somos un equipo boliviano e internacional de personas que amamos y apoyamos el transporte público. Desarrollamos esta aplicación para facilitar el uso del transporte en la región de Cochabamba.';

  @override
  String get aboutLicenses => 'Licencias';

  @override
  String get aboutOpenSource => 'This app is released as open source on GitHub. Feel free to contribute or bring it to your own city.';

  @override
  String get teamContent => 'Somos un equipo internacional llamado Trufi Association y hemos desarrollado esta app con la ayuda de muchos voluntarios. ¿Quieres mejorar la Trufi App y ser parte de nuestro equipo? Contáctanos a:';

  @override
  String teamSectionRepresentatives(Object representatives) {
    return 'Representantes: ${representatives}';
  }

  @override
  String teamSectionTeam(Object teamMembers) {
    return 'Equipo: ${teamMembers}';
  }

  @override
  String teamSectionTranslations(Object translators) {
    return 'Traducciones: ${translators}';
  }

  @override
  String teamSectionRoutes(Object routeContributors, Object osmContributors) {
    return 'Rutas: ${routeContributors} y todos los usuarios que subieron rutas a OpenStreetMap, como ${osmContributors}. ¡Contáctanos si quieres unirte a la comunidad OpenStreetMap!';
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

/// The translations for Spanish Castilian, as used in Spain (`es_ES`).
class TrufiLocalizationEsEs extends TrufiLocalizationEs {
  TrufiLocalizationEsEs(): super('es_ES');

  @override
  String get title => 'Trufi App';

  @override
  String get tagline => 'Transporte público en Cochabamba';

  @override
  String get description => 'La mejor forma de viajar con trufis, micros y buses a través de Cochabamba.';

  @override
  String version(Object version) {
    return 'Versión ${version}';
  }

  @override
  String get alertLocationServicesDeniedTitle => 'Sin acceso a la ubicación';

  @override
  String get alertLocationServicesDeniedMessage => 'Por favor, asegúrese de que el GPS y las configuraciones de ubicación esten activadas en su dispositivo.';

  @override
  String get commonOK => 'Aceptar';

  @override
  String get commonCancel => 'Cancelar';

  @override
  String get commonGoOffline => 'Salir de línea';

  @override
  String get commonGoOnline => 'Ir en línea';

  @override
  String get commonDestination => 'Destino';

  @override
  String get commonOrigin => 'Origen';

  @override
  String get commonNoInternet => 'Sin conexión a internet.';

  @override
  String get commonFailLoading => 'Error al cargar datos';

  @override
  String get commonUnknownError => 'Error desconocido';

  @override
  String get commonError => 'Error';

  @override
  String get noRouteError => 'Lo sentimos, no pudimos encontrar una ruta. ¿Qué quiere hacer?';

  @override
  String get noRouteErrorActionCancel => 'Prueba con otro destino';

  @override
  String get noRouteErrorActionReportMissingRoute => 'Reportar una ruta faltante';

  @override
  String get noRouteErrorActionShowCarRoute => 'Mostrar ruta en auto';

  @override
  String get errorServerUnavailable => 'Lo sentimos. El planificador de ruta está fuera de servicio temporalmente. Inténtelo más tarde.';

  @override
  String get errorOutOfBoundary => 'Viaje no disponible. Puede que esté intentando planificar un viaje fuera de los límites disponibles.';

  @override
  String get errorPathNotFound => 'Viaje no disponible. Su punto de origen y/o destino pueden no ser seguros. Seleccione un inicio y final en calles residenciales.';

  @override
  String get errorNoTransitTimes => 'No hay tiempos de tránsito disponibles. La información podría no ser válida para la fecha actual o no hay rutas disponibles para su viaje.';

  @override
  String get errorServerTimeout => 'El planificador de rutas está tardando demasiado. Por favor, inténtelo más tarde.';

  @override
  String get errorTrivialDistance => 'Origen y destino están demasiado cerca.';

  @override
  String get errorServerCanNotHandleRequest => 'La solicitud tiene errores que el servidor no puede procesar.';

  @override
  String get errorUnknownOrigin => 'Origen desconocido. ¿Podría ser un poco más preciso?';

  @override
  String get errorUnknownDestination => 'Destino desconocido. ¿Podría ser un poco más preciso?';

  @override
  String get errorUnknownOriginDestination => 'Origen y destino desconocidos ¿Podría ser un poco más preciso?';

  @override
  String get errorNoBarrierFree => 'Origen y destino no son accesibles a silla de ruedas.';

  @override
  String get errorAmbiguousOrigin => 'El planificador de rutas no está seguro de su origen. Por favor, seleccione una de las siguientes opciones o introduzca un origen más exacto.';

  @override
  String get errorAmbiguousDestination => 'El planificador de rutas no está seguro de su destino. Por favor, seleccione una de las siguientes opciones o introduzca un destino más exacto.';

  @override
  String get errorAmbiguousOriginDestination => 'Origen y destino son ambiguos. Por favor, seleccione una de las siguientes opciones o introduzca un destino más exacto.';

  @override
  String get searchHintOrigin => 'Seleccione punto de origen';

  @override
  String get searchHintDestination => 'Seleccione destino';

  @override
  String get searchItemChooseOnMap => 'Seleccionar en el mapa';

  @override
  String get searchItemYourLocation => 'Su ubicación';

  @override
  String get searchItemNoResults => 'Ningun resultado';

  @override
  String get searchTitlePlaces => 'Lugares';

  @override
  String get searchTitleRecent => 'Recientes';

  @override
  String get searchTitleFavorites => 'Favoritos';

  @override
  String get searchTitleResults => 'Resultados de búsqueda';

  @override
  String get searchPleaseSelectOrigin => 'Seleccione origen';

  @override
  String get searchPleaseSelectDestination => 'Seleccione destino';

  @override
  String get searchFailLoadingPlan => 'Error al cargar el itinerario.';

  @override
  String get searchMapMarker => 'Posición en el Mapa';

  @override
  String get chooseLocationPageTitle => 'Elige un punto en el mapa';

  @override
  String get chooseLocationPageSubtitle => 'Amplía y mueve el mapa para centrar el marcador';

  @override
  String instructionJunction(Object street1, Object street2) {
    return '${street1} y ${street2}';
  }

  @override
  String instructionWalk(Object duration, Object distance, Object location) {
    return 'Caminar ${duration} (${distance}) hasta\n${location}';
  }

  @override
  String instructionRide(Object vehicle, Object duration, Object distance, Object location) {
    return 'Tomar ${vehicle} por ${duration} (${distance}) hasta\n${location}';
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
  String get instructionVehicleCar => 'Coche';

  @override
  String get instructionVehicleGondola => 'Góndola';

  @override
  String instructionDurationMinutes(Object value) {
    return '${value} min';
  }

  @override
  String instructionDistanceKm(Object value) {
    return '${value} km';
  }

  @override
  String instructionDistanceMeters(Object value) {
    return '${value} m';
  }

  @override
  String get menuConnections => 'Muestra rutas';

  @override
  String get menuAbout => 'Acerca';

  @override
  String get menuTeam => 'Sobre el equipo';

  @override
  String get menuFeedback => 'Enviar comentarios';

  @override
  String get menuOnline => 'En línea';

  @override
  String get menuAppReview => 'Valora la aplicación';

  @override
  String get feedbackContent => '¿Tiene sugerencias para nuestra aplicación o ha encontrado algunos errores en los datos? Nos encantaría saberlo! Asegúrese de agregar su dirección de correo electrónico o teléfono para que podamos responderlo.';

  @override
  String get feedbackTitle => 'Envíanos un correo electrónico';

  @override
  String get aboutContent => 'Somos un equipo boliviano e internacional de personas que amamos y apoyamos el transporte público. Desarrollamos esta aplicación para facilitar el uso del transporte en la región de Cochabamba.';

  @override
  String get aboutLicenses => 'Licencias';

  @override
  String get aboutOpenSource => 'This app is released as open source on GitHub. Feel free to contribute or bring it to your own city.';

  @override
  String get teamContent => 'Somos un equipo internacional llamado Trufi Association y hemos desarrollado esta app con la ayuda de muchos voluntarios. ¿Quieres mejorar la Trufi App y ser parte de nuestro equipo? Contáctanos a:';

  @override
  String teamSectionRepresentatives(Object representatives) {
    return 'Representantes: ${representatives}';
  }

  @override
  String teamSectionTeam(Object teamMembers) {
    return 'Equipo: ${teamMembers}';
  }

  @override
  String teamSectionTranslations(Object translators) {
    return 'Traducciones: ${translators}';
  }

  @override
  String teamSectionRoutes(Object routeContributors, Object osmContributors) {
    return 'Rutas: ${routeContributors} y todos los usuarios que subieron rutas a OpenStreetMap, como ${osmContributors}. ¡Contáctanos si quieres unirte a la comunidad OpenStreetMap!';
  }
}
