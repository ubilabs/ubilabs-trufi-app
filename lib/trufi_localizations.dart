import 'dart:async';

import 'package:flutter/foundation.dart' show SynchronousFuture;
import 'package:flutter/material.dart';

class TrufiLocalizations {
  TrufiLocalizations(this.locale);

  final Locale locale;

  static TrufiLocalizations of(BuildContext context) {
    return Localizations.of<TrufiLocalizations>(context, TrufiLocalizations);
  }

  static const String Title = "title";
  static const String TagLine = "tag_line";
  static const String Description = "description";
  static const String CommonDestination = "common_destination";
  static const String CommonOrigin = "common_origin";
  static const String CommonNoInternetConnection =
      "common_no_internet_connection";
  static const String CommonFailLoadingData = "common_fail_loading_data";
  static const String CommonUnknownError = "common_unknown_error";
  static const String SearchItemChooseOnMap = "search_item_choose_on_map";
  static const String SearchItemYourLocation = "search_item_your_location";
  static const String SearchItemNoResults = "search_item_no_results";
  static const String SearchSectionPlaces = "search_title_places";
  static const String SearchSectionRecent = "search_title_recent";
  static const String SearchSectionResults = "search_title_result";
  static const String SearchCurrentPosition = "search_current_position";
  static const String SearchSectionMapMarker = "search_map_marker";
  static const String SearchNavigateToMarker = "search_navigate_to_map_marker";
  static const String SearchFailLoadingPlan = "search_fail_loading_plan";
  static const String MapSectionChoosePoint = "map_choose_point";
  static const String MapSectionTapToChoose = "map_tap_to_choose";
  static const String InstructionWalk = "instruction_walk";
  static const String InstructionRide = "instruction_ride";
  static const String InstructionRideBus = "instruction_ride_bus";
  static const String InstructionRideMicro = "instruction_ride_micro";
  static const String InstructionRideMinibus = "instruction_ride_minibus";
  static const String InstructionRideTrufi = "instruction_ride_trufi";
  static const String InstructionTo = "instruction_to";
  static const String InstructionFor = "instruction_for";
  static const String MenuConnections = "menu_connection";
  static const String MenuAbout = "menu_about";
  static const String MenuTeam = "menu_team";
  static const String MenuFeedback = "menu_feedback";
  static const String FeedbackContent = "feedback_content";
  static const String FeedbackButton = "feedback_button";
  static const String AboutContent = "about_content";

  static Map<String, Map<String, String>> _localizedValues = {
    'en': {
      Title: 'Trufi App',
      TagLine: 'Public transportation in Cochabamba',
      Description: 'The best way to travel with trufis, micros and busses through Cochabamba.',
      CommonDestination: 'Destination',
      CommonOrigin: 'Origin',
      CommonNoInternetConnection: 'No internet connection',
      CommonFailLoadingData: 'Failed to load data',
      CommonUnknownError: 'unknown error',
      SearchItemChooseOnMap: 'Choose on map',
      SearchItemYourLocation: 'Your location',
      SearchItemNoResults: 'No results',
      SearchSectionPlaces: 'Places',
      SearchSectionRecent: 'Recent',
      SearchSectionResults: 'Search Results',
      SearchCurrentPosition: 'Current Position',
      SearchFailLoadingPlan: 'Failed to load plan',
      SearchSectionMapMarker: 'Map Marker',
      SearchNavigateToMarker: 'Navigate to',
      MapSectionChoosePoint: 'Choose a point',
      MapSectionTapToChoose: 'Tap on map to choose',
      InstructionWalk: 'Walk',
      InstructionRide: 'Ride',
      InstructionRideBus: 'Bus',
      InstructionRideMicro: 'Micro',
      InstructionRideMinibus: 'Minibus',
      InstructionRideTrufi: 'Trufi',
      InstructionTo: 'to',
      InstructionFor: 'for',
      MenuConnections: 'Show routes',
      MenuAbout: 'About',
      MenuTeam: 'Become part of the Team',
      MenuFeedback: 'Send Feedback',
      FeedbackContent: 'Do you have suggestions for our app or found some errors in the data? We would love to hear from you! Please make sure to add your email address or telephone, so we can respond to you.',
      FeedbackButton: 'Send us an E-mail',
      AboutContent: 'We are a bolivian and international team of people that love and support public transport. We have developed this app to make it easy for people to use the transport system in Cochabamba and the surrounding area.',

    },
    'es': {
      Title: 'Trufi App',
      TagLine: 'Transporte público en Cochabamba',
      Description: 'La mejor forma de viajar con trufis, micros y buses a través de Cochabamba.',
      CommonDestination: 'Destino',
      CommonOrigin: 'Origen',
      CommonNoInternetConnection: 'Sin conexión a internet',
      CommonFailLoadingData: 'Error al cargar datos',
      CommonUnknownError: 'Error desconocido',
      SearchItemChooseOnMap: 'Seleccionar en el mapa',
      SearchItemYourLocation: 'Tu ubicación',
      SearchItemNoResults: 'Ningun resultado',
      SearchSectionPlaces: 'Lugares',
      SearchSectionRecent: 'Recientes',
      SearchSectionResults: 'Resultados de búsqueda',
      SearchCurrentPosition: 'Posición actual',
      SearchFailLoadingPlan: 'Error al cargar plan',
      SearchSectionMapMarker: 'Posición en el Mapa',
      SearchNavigateToMarker: 'Ir hasta',
      MapSectionChoosePoint: 'Elige un punto en el mapa',
      MapSectionTapToChoose: 'Toca el mapa para elegir un punto',
      InstructionWalk: 'Caminar',
      InstructionRide: 'Tomar',
      InstructionRideBus: 'Bus',
      InstructionRideMicro: 'Micro',
      InstructionRideMinibus: 'Minibus',
      InstructionRideTrufi: 'Trufi',
      InstructionTo: 'hasta',
      InstructionFor: 'por',
      MenuConnections: 'Muestra rutas',
      MenuAbout: 'Acerca',
      MenuTeam: 'Forme parte del equipo',
      MenuFeedback: 'Envía comentarios',
      FeedbackContent: '¿Tienes sugerencias para nuestra aplicación o encontraste algunos errores en los datos? Nos encantaría saberlo! Asegúrate de agregar tu dirección de correo electrónico o teléfono para que podamos responderte.',
      FeedbackButton: 'Envianos un correo',
      AboutContent: 'Somos un equipo boliviano e internacional de personas que amamos y apoyamos el transporte público. Desarrollamos esta aplicación para facilitar el uso del transporte en la región de Cochabamba.',
    },
    'de': {
      Title: 'Trufi App',
      TagLine: 'Öffentliche Verkehrsmittel in Cochabamba',
      Description: 'Der beste Weg mit Trufis, Mikros und Bussen durch Cochabamba zu reisen.',
      CommonDestination: 'Fahrtziel',
      CommonOrigin: 'Startpunkt',
      CommonNoInternetConnection: 'Keine Internetverbindung',
      CommonFailLoadingData: 'Fehler beim Laden der Daten',
      CommonUnknownError: 'Unbekannter Fehler',
      SearchItemChooseOnMap: 'Auf der Karte auswählen',
      SearchItemYourLocation: 'Ihr Standort',
      SearchItemNoResults: 'Keine Ergebnisse',
      SearchSectionPlaces: 'Orte',
      SearchSectionRecent: 'Zuletzt gesucht',
      SearchSectionResults: 'Suchergebnisse',
      SearchCurrentPosition: 'Aktuelle Position',
      SearchFailLoadingPlan: 'Fehler beim Laden dem Plan',
      SearchSectionMapMarker: 'Kartenmarkierung',
      SearchNavigateToMarker: 'Navigieren',
      MapSectionChoosePoint: 'Auf der Karte ein Punkt Auswählen',
      MapSectionTapToChoose: 'Auf der Karte ein Punkt Auswählen',
      InstructionWalk: 'Gehen Sie',
      InstructionRide: 'Fahren Sie mit',
      InstructionRideBus: 'dem Bus',
      InstructionRideMicro: 'dem Micro',
      InstructionRideMinibus: 'dem Minibus',
      InstructionRideTrufi: 'der Trufi',
      InstructionTo: 'zur',
      InstructionFor: 'für',
      MenuConnections: 'Verbindungen',
      MenuAbout: 'Über',
      MenuTeam: 'Werde Teil des Teams',
      MenuFeedback: 'Feedback',
      FeedbackContent: 'Haben Sie Vorschläge für unsere App oder haben Sie Fehler in den Daten gefunden? Wir würden gerne von Ihnen hören! Bitte geben Sie Ihre E-Mail-Adresse oder Ihr Telefon an, damit wir Ihnen antworten können.',
      FeedbackButton: 'E-mail schicken',
      AboutContent: 'Wir sind ein bolivianisches und internationales Team, die den öffentlichen Verkehrsmittel lieben und unterstützen möchten. Wir haben diese App entwickelt, um den Menschen zu erleichtern, das Transportsystem in Cochabamba und Umgebung zu nutzen.',
    },
  };

  String get title {
    return _localizedValues[locale.languageCode][Title];
  }

  String get tagLine {
    return _localizedValues[locale.languageCode][TagLine];
  }
  String get description {
    return _localizedValues[locale.languageCode][Description];
  }

  String get commonDestination {
    return _localizedValues[locale.languageCode][CommonDestination];
  }

  String get commonOrigin {
    return _localizedValues[locale.languageCode][CommonOrigin];
  }

  String get commonNoInternet {
    return _localizedValues[locale.languageCode][CommonNoInternetConnection];
  }

  String get commonFailLoading {
    return _localizedValues[locale.languageCode][CommonFailLoadingData];
  }

  String get commonUnknownError {
    return _localizedValues[locale.languageCode][CommonUnknownError];
  }

  String get searchItemChooseOnMap {
    return _localizedValues[locale.languageCode][SearchItemChooseOnMap];
  }

  String get searchItemYourLocation {
    return _localizedValues[locale.languageCode][SearchItemYourLocation];
  }

  String get searchItemNoResults {
    return _localizedValues[locale.languageCode][SearchItemNoResults];
  }

  String get searchTitlePlaces {
    return _localizedValues[locale.languageCode][SearchSectionPlaces];
  }

  String get searchTitleRecent {
    return _localizedValues[locale.languageCode][SearchSectionRecent];
  }

  String get searchTitleResults {
    return _localizedValues[locale.languageCode][SearchSectionResults];
  }

  String get searchCurrentPosition {
    return _localizedValues[locale.languageCode][SearchCurrentPosition];
  }

  String get searchMapMarker {
    return _localizedValues[locale.languageCode][SearchSectionMapMarker];
  }

  String get searchNavigate {
    return _localizedValues[locale.languageCode][SearchNavigateToMarker];
  }

  String get searchFailLoadingPlan {
    return _localizedValues[locale.languageCode][SearchFailLoadingPlan];
  }

  String get instructionWalk {
    return _localizedValues[locale.languageCode][InstructionWalk];
  }

  String get instructionRide {
    return _localizedValues[locale.languageCode][InstructionRide];
  }

  String get instructionRideBus {
    return _localizedValues[locale.languageCode][InstructionRideBus];
  }

  String get instructionRideMicro {
    return _localizedValues[locale.languageCode][InstructionRideMicro];
  }

  String get instructionRideMinibus {
    return _localizedValues[locale.languageCode][InstructionRideMinibus];
  }

  String get instructionRideTrufi {
    return _localizedValues[locale.languageCode][InstructionRideTrufi];
  }

  String get instructionTo {
    return _localizedValues[locale.languageCode][InstructionTo];
  }

  String get instructionFor {
    return _localizedValues[locale.languageCode][InstructionFor];
  }

  String get mapChoosePoint {
    return _localizedValues[locale.languageCode][MapSectionChoosePoint];
  }

  String get mapTapToChoose {
    return _localizedValues[locale.languageCode][MapSectionTapToChoose];
  }

  String get menuConnections {
    return _localizedValues[locale.languageCode][MenuConnections];
  }

  String get menuAbout {
    return _localizedValues[locale.languageCode][MenuAbout];
  }

  String get menuTeam {
    return _localizedValues[locale.languageCode][MenuTeam];
  }


  String get menuFeedback {
    return _localizedValues[locale.languageCode][MenuFeedback];
  }

  String get feedbackContent {
    return _localizedValues[locale.languageCode][FeedbackContent];
  }

  String get feedbackButton {
    return _localizedValues[locale.languageCode][FeedbackButton];
  }


  String get aboutContent {
    return _localizedValues[locale.languageCode][AboutContent];
  }
}

class TrufiLocalizationsDelegate
    extends LocalizationsDelegate<TrufiLocalizations> {
  const TrufiLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      ['en', 'es', 'de'].contains(locale.languageCode);

  @override
  Future<TrufiLocalizations> load(Locale locale) {
    // Returning a SynchronousFuture here because an async "load" operation
    // isn't needed to produce an instance of DemoLocalizations.
    return SynchronousFuture<TrufiLocalizations>(TrufiLocalizations(locale));
  }

  @override
  bool shouldReload(TrufiLocalizationsDelegate old) => false;
}
