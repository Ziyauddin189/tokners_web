// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class LanguageTranslation {
  LanguageTranslation();

  static LanguageTranslation? _current;

  static LanguageTranslation get current {
    assert(_current != null,
        'No instance of LanguageTranslation was loaded. Try to initialize the LanguageTranslation delegate before accessing LanguageTranslation.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<LanguageTranslation> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = LanguageTranslation();
      LanguageTranslation._current = instance;

      return instance;
    });
  }

  static LanguageTranslation of(BuildContext context) {
    final instance = LanguageTranslation.maybeOf(context);
    assert(instance != null,
        'No instance of LanguageTranslation present in the widget tree. Did you add LanguageTranslation.delegate in localizationsDelegates?');
    return instance!;
  }

  static LanguageTranslation? maybeOf(BuildContext context) {
    return Localizations.of<LanguageTranslation>(context, LanguageTranslation);
  }

  /// `Tokners`
  String get tokners {
    return Intl.message(
      'Tokners',
      name: 'tokners',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Our team`
  String get our_team {
    return Intl.message(
      'Our team',
      name: 'our_team',
      desc: '',
      args: [],
    );
  }

  /// `Tokens`
  String get tokens {
    return Intl.message(
      'Tokens',
      name: 'tokens',
      desc: '',
      args: [],
    );
  }

  /// `Connect wallet`
  String get connect_wallet {
    return Intl.message(
      'Connect wallet',
      name: 'connect_wallet',
      desc: '',
      args: [],
    );
  }

  /// `Lightpaper`
  String get lightpaper {
    return Intl.message(
      'Lightpaper',
      name: 'lightpaper',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get sign_in {
    return Intl.message(
      'Sign In',
      name: 'sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get sign_up {
    return Intl.message(
      'Sign Up',
      name: 'sign_up',
      desc: '',
      args: [],
    );
  }

  /// `At Tokners we are`
  String get all_tokens {
    return Intl.message(
      'At Tokners we are',
      name: 'all_tokens',
      desc: '',
      args: [],
    );
  }

  /// `Reimagining social media through the power of the blockchain.`
  String get remaining {
    return Intl.message(
      'Reimagining social media through the power of the blockchain.',
      name: 'remaining',
      desc: '',
      args: [],
    );
  }

  /// `We are creating social media 3.0 with influencers, celebrities and creators being able to launch their own digital currency by simply creating a profile with media content posted as Non fungible Tokens that can be owned and traded on the Tknrs network`
  String get we_are_creating {
    return Intl.message(
      'We are creating social media 3.0 with influencers, celebrities and creators being able to launch their own digital currency by simply creating a profile with media content posted as Non fungible Tokens that can be owned and traded on the Tknrs network',
      name: 'we_are_creating',
      desc: '',
      args: [],
    );
  }

  /// `What makes us different?`
  String get what_makes {
    return Intl.message(
      'What makes us different?',
      name: 'what_makes',
      desc: '',
      args: [],
    );
  }

  /// `We would only launch tokens with the express permission of the creators.`
  String get we_would {
    return Intl.message(
      'We would only launch tokens with the express permission of the creators.',
      name: 'we_would',
      desc: '',
      args: [],
    );
  }

  /// `There are several thousand celebrities and creators on twitter, tiktok, Instagram and YouTube with followings in the millions who we would be actively engaging before we go viral.\n\nWe would get them on our platform and they would see the opportunity to create a fan driven digital economy where their digital content can be traded as NFTs and their most loyal fans can have the monetary value of their creator/'s currency increase significantly as they promote their digital currency across their channels while our native token holders benefit from the Weentar popularity.`
  String get there_are {
    return Intl.message(
      'There are several thousand celebrities and creators on twitter, tiktok, Instagram and YouTube with followings in the millions who we would be actively engaging before we go viral.\n\nWe would get them on our platform and they would see the opportunity to create a fan driven digital economy where their digital content can be traded as NFTs and their most loyal fans can have the monetary value of their creator/\'s currency increase significantly as they promote their digital currency across their channels while our native token holders benefit from the Weentar popularity.',
      name: 'there_are',
      desc: '',
      args: [],
    );
  }

  /// `OUR TEAM`
  String get our_team_c {
    return Intl.message(
      'OUR TEAM',
      name: 'our_team_c',
      desc: '',
      args: [],
    );
  }

  /// `TOKENS`
  String get tokens_c {
    return Intl.message(
      'TOKENS',
      name: 'tokens_c',
      desc: '',
      args: [],
    );
  }

  /// `CONNECT WALLET`
  String get connect_wallet_c {
    return Intl.message(
      'CONNECT WALLET',
      name: 'connect_wallet_c',
      desc: '',
      args: [],
    );
  }

  /// `LIGHTPAPER`
  String get lightpaper_c {
    return Intl.message(
      'LIGHTPAPER',
      name: 'lightpaper_c',
      desc: '',
      args: [],
    );
  }

  /// `© 2021 Tokners. All rights reserved.`
  String get all_rights {
    return Intl.message(
      '© 2021 Tokners. All rights reserved.',
      name: 'all_rights',
      desc: '',
      args: [],
    );
  }

  /// `Design by Oleg Kulik`
  String get design_by {
    return Intl.message(
      'Design by Oleg Kulik',
      name: 'design_by',
      desc: '',
      args: [],
    );
  }

  /// `First Connect your TrustWallet to the "Connect Wallet" on the Homepage.',\n                        `
  String get first_connect {
    return Intl.message(
      'First Connect your TrustWallet to the "Connect Wallet" on the Homepage.\',\n                        ',
      name: 'first_connect',
      desc: '',
      args: [],
    );
  }

  /// `Then send minimum of 0.1 BNB or maximum of 10 BNB to the Presale wallet`
  String get then_send {
    return Intl.message(
      'Then send minimum of 0.1 BNB or maximum of 10 BNB to the Presale wallet',
      name: 'then_send',
      desc: '',
      args: [],
    );
  }

  /// `Then after you will received your $WNTR to your address within 24hours. `
  String get then_after {
    return Intl.message(
      'Then after you will received your \$WNTR to your address within 24hours. ',
      name: 'then_after',
      desc: '',
      args: [],
    );
  }

  /// `How to buy`
  String get how_to_buy {
    return Intl.message(
      'How to buy',
      name: 'how_to_buy',
      desc: '',
      args: [],
    );
  }

  /// `Presale Details`
  String get presale_details {
    return Intl.message(
      'Presale Details',
      name: 'presale_details',
      desc: '',
      args: [],
    );
  }

  /// `Tokner is coming`
  String get tokner_is_coming {
    return Intl.message(
      'Tokner is coming',
      name: 'tokner_is_coming',
      desc: '',
      args: [],
    );
  }

  /// `Cryptocurrency adoption is at less than 1% of the global world population with some countries and entities actively fighting against its mass adoption and the smartest developers and nerds holding the fort. \n`
  String get crypto {
    return Intl.message(
      'Cryptocurrency adoption is at less than 1% of the global world population with some countries and entities actively fighting against its mass adoption and the smartest developers and nerds holding the fort. \n',
      name: 'crypto',
      desc: '',
      args: [],
    );
  }

  /// `Bitcoin was the first, and it has since grown to thousands of tokens launched all aiming to fix one problem or the other with some quite simply FOMOing the moment. Our goal is to bring mass adoption to the cryptocurrency space by dumbing it down. How far down? So down that even a celebrity can explain it in simple words to their followers and have them download an app, buy into the social currency of their favourite person and watch their investment as is with other crypto currency project. \n`
  String get bitcoin {
    return Intl.message(
      'Bitcoin was the first, and it has since grown to thousands of tokens launched all aiming to fix one problem or the other with some quite simply FOMOing the moment. Our goal is to bring mass adoption to the cryptocurrency space by dumbing it down. How far down? So down that even a celebrity can explain it in simple words to their followers and have them download an app, buy into the social currency of their favourite person and watch their investment as is with other crypto currency project. \n',
      name: 'bitcoin',
      desc: '',
      args: [],
    );
  }

  /// `We are trying to do to this space what investment apps did for the "nonexistent retail investors". We are gamefying digital currency, bringing in popular faces instead of hard to understand projects to make it the norm and inadvertently being the "gateway drug" for a lot of people to finally give this space a real look. \n`
  String get we_are_trying {
    return Intl.message(
      'We are trying to do to this space what investment apps did for the "nonexistent retail investors". We are gamefying digital currency, bringing in popular faces instead of hard to understand projects to make it the norm and inadvertently being the "gateway drug" for a lot of people to finally give this space a real look. \n',
      name: 'we_are_trying',
      desc: '',
      args: [],
    );
  }

  /// `"Personalities would become the new currency, and services would be built on top of them". \n`
  String get personalities {
    return Intl.message(
      '"Personalities would become the new currency, and services would be built on top of them". \n',
      name: 'personalities',
      desc: '',
      args: [],
    );
  }

  /// `A new digital economy is coming. People would be just as powerful as countries and creators would be paid beyond the peanuts that conventional social media platforms can offer. \n`
  String get a_new {
    return Intl.message(
      'A new digital economy is coming. People would be just as powerful as countries and creators would be paid beyond the peanuts that conventional social media platforms can offer. \n',
      name: 'a_new',
      desc: '',
      args: [],
    );
  }

  /// `There would be new markets and advertisers with little to offer would not find home there. Like Kanye said, `
  String get there_would {
    return Intl.message(
      'There would be new markets and advertisers with little to offer would not find home there. Like Kanye said, ',
      name: 'there_would',
      desc: '',
      args: [],
    );
  }

  /// `Well, Kanye didn't exactly say that, but it sounds like something we hope he would say.\n`
  String get well {
    return Intl.message(
      'Well, Kanye didn\'t exactly say that, but it sounds like something we hope he would say.\n',
      name: 'well',
      desc: '',
      args: [],
    );
  }

  /// `Currency is digital, it has been that way for a while now, but this time there would be no dead presidents on the money, there would people like you on the money, and you would own it because it would make the most sense in the world.`
  String get currency {
    return Intl.message(
      'Currency is digital, it has been that way for a while now, but this time there would be no dead presidents on the money, there would people like you on the money, and you would own it because it would make the most sense in the world.',
      name: 'currency',
      desc: '',
      args: [],
    );
  }

  /// `Weentar is coming`
  String get weentar_is_coming {
    return Intl.message(
      'Weentar is coming',
      name: 'weentar_is_coming',
      desc: '',
      args: [],
    );
  }

  /// `Tknrs Tokenomics and Token Distribution`
  String get tknrs {
    return Intl.message(
      'Tknrs Tokenomics and Token Distribution',
      name: 'tknrs',
      desc: '',
      args: [],
    );
  }

  /// `Tknrs Token Distribution Schedule Total Supply`
  String get tknrs_token {
    return Intl.message(
      'Tknrs Token Distribution Schedule Total Supply',
      name: 'tknrs_token',
      desc: '',
      args: [],
    );
  }

  /// `Tknrs Tokens`
  String get tknrs_tok {
    return Intl.message(
      'Tknrs Tokens',
      name: 'tknrs_tok',
      desc: '',
      args: [],
    );
  }

  /// `Premined Tokens`
  String get premined_tokens {
    return Intl.message(
      'Premined Tokens',
      name: 'premined_tokens',
      desc: '',
      args: [],
    );
  }

  /// `Daily Token Distribution`
  String get daily_tkn {
    return Intl.message(
      'Daily Token Distribution',
      name: 'daily_tkn',
      desc: '',
      args: [],
    );
  }

  /// `Proposal regarding Total Supply, ICO and Pricing Total Supply (after periodical increase of supply):`
  String get proposal {
    return Intl.message(
      'Proposal regarding Total Supply, ICO and Pricing Total Supply (after periodical increase of supply):',
      name: 'proposal',
      desc: '',
      args: [],
    );
  }

  /// `Supply at Genesis:`
  String get supply_at_gen {
    return Intl.message(
      'Supply at Genesis:',
      name: 'supply_at_gen',
      desc: '',
      args: [],
    );
  }

  /// `from the Genesis supply, 2,500,000,000 will be reserved for the ICO while 500,000,000 will be allocated for team members, founders and to onboard celebrities and influencers. `
  String get from_the_gen {
    return Intl.message(
      'from the Genesis supply, 2,500,000,000 will be reserved for the ICO while 500,000,000 will be allocated for team members, founders and to onboard celebrities and influencers. ',
      name: 'from_the_gen',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate
    extends LocalizationsDelegate<LanguageTranslation> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<LanguageTranslation> load(Locale locale) =>
      LanguageTranslation.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
