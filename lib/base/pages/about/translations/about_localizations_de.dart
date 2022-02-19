


import 'about_localizations.dart';

/// The translations for German (`de`).
class AboutLocalizationDe extends AboutLocalization {
  AboutLocalizationDe([String locale = 'de']) : super(locale);

  @override
  String get aboutCollapseContent => 'Estimado usuario del transporte público, Trufi App Cochabamba es una aplicación que mejora tu experiencia de viaje en trufis y micros, y así te ayuda a moverte por la ciudad de Cochabamba.\n\n¿Necesitas ir a algún lado y no sabes qué trufi o micro tomar?\n\n¡Con Trufi App facilito es!\n\nTrufi Association es una ONG internacional que promueve un acceso más fácil al transporte público. En muchas ciudades no existen mapas, aplicaciones ni horarios oficiales. Nosotros los completamos, y a veces incluso trazamos rutas desde cero. Nuestras aplicaciones ayudan a todo el mundo a encontrar la mejor manera de ir de un punto A al punto B dentro de sus ciudades. Un sistema de transporte bien diseñado contribuye a una mayor sostenibilidad, un aire más limpio y una mejor calidad de vida.\n\nAmamos la Llajta y el transporte público, por eso Trufi  Association creó esta aplicación para que los cochalos y cualquier otro usuario puedan transportarse fácilmente por Cochabamba.\n';

  @override
  String get aboutCollapseTitle => '¡Somos el grupo más genial del mundo! ¿Alguna otra pregunta?';

  @override
  String get aboutContent => 'Wir sind ein bolivianisches und internationales Team, das den öffentlichen Nahverkehr liebt und unterstützen möchte. Wir haben diese App entwickelt, um den Menschen die Verwendung des öffentlichen Nahverkehrs in Cochabamba und der näheren Umgebung zu erleichtern.';

  @override
  String get aboutLicenses => 'Lizenzen';

  @override
  String get aboutOpenSource => 'Diese App ist Open Source und auf GitHub verfügbar. Zögere nicht, einen Beitrag zu leisten oder bringe sie in Deine Stadt!';

  @override
  String get menuAbout => 'Über';

  @override
  String tagline(Object city) {
    return 'Öffentliche Verkehrsmittel in $city';
  }

  @override
  String version(Object version) {
    return 'Version $version';
  }
}