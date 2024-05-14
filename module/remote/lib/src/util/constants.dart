import 'dart:developer';

import 'package:enum_to_string/enum_to_string.dart';
enum Flavor { dev, stag, prod }

class Constants {
  const Constants(
      {required this.endpoint,
      required this.faq,
      required this.aboutUs,
      required this.privacyPolicy,
      required this.termsCondition,
      required this.googleKey});

  factory Constants.shared() {
    if (_instance != null) {
      return _instance!;
    }

    final flavor = EnumToString.fromString(Flavor.values, const String.fromEnvironment('FLAVOR'));

    log('flavor: $flavor');

    switch(flavor) {
      case Flavor.prod:
        return Constants._prod();

      case Flavor.stag:
        return Constants._stag();

      case Flavor.dev:
      default:
        return Constants._dev();
    }
  }

  factory Constants._dev() {
    return const Constants(
      endpoint: 'https://api.themoviedb.org/3',
      faq: "https://www.actcorp.in/faq",
      aboutUs: "https://www.actcorp.in/about-us/company",
      privacyPolicy: "https://www.actcorp.in/legal/privacy-policy",
      termsCondition: "https://www.actcorp.in/legal/terms-and-conditions",
      googleKey: "AIzaSyCnV7dAkjMda8vI5yJ88iEPyOxbcMTa3O4",
    );
  }

  factory Constants._prod() {
    return const Constants(
      endpoint: 'https://api.bookscape.com/',
      faq: "https://www.actcorp.in/faq",
      aboutUs: "https://www.actcorp.in/about-us/company",
      privacyPolicy: "https://www.actcorp.in/legal/privacy-policy",
      termsCondition: "https://www.actcorp.in/legal/terms-and-conditions",
      googleKey: "AIzaSyCnV7dAkjMda8vI5yJ88iEPyOxbcMTa3O4",
    );
  }

  factory Constants._stag() {
    return const Constants(
      endpoint: 'https://uatapi.bookscape.com/',
      faq: "https://www.actcorp.in/faq",
      aboutUs: "https://www.actcorp.in/about-us/company",
      privacyPolicy: "https://www.actcorp.in/legal/privacy-policy",
      termsCondition: "https://www.actcorp.in/legal/terms-and-conditions",
      googleKey: "AIzaSyCnV7dAkjMda8vI5yJ88iEPyOxbcMTa3O4",
    );
  }


  final String googleKey;
  final String endpoint;
  final String faq;
  final String aboutUs;
  final String termsCondition;
  final String privacyPolicy;

  static Constants? _instance;
}
