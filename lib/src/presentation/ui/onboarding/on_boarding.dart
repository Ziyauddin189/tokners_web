import 'package:flutter/material.dart';
import 'package:fluttertokners/src/presentation/ui/home/description_container/description_container.dart';
import 'package:fluttertokners/src/presentation/ui/home/footer_container/footer_container.dart';
import 'package:fluttertokners/src/presentation/ui/home/home_container/home_container.dart';
import 'package:fluttertokners/src/presentation/ui/home/home_page/home_page.dart';
import 'package:fluttertokners/src/presentation/ui/home/presale_container/presale_container.dart';
import 'package:fluttertokners/src/presentation/ui/home/quarter_container/quarter_container.dart';
import 'package:fluttertokners/src/presentation/ui/home/tokner_coming_container/tokner_coming_container.dart';
import 'package:fluttertokners/src/presentation/ui/onboarding/common_app_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';

class OnBoarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CommonAppBar(
      body: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          return SingleChildScrollView(
            child: Column(
              children: [
                HomePage(sizingInformation: sizingInformation),
                HomeContainer(sizingInformation: sizingInformation),
                DescriptionContainer(sizingInformation: sizingInformation),
                QuarterContainer(sizingInformation: sizingInformation),
                ToknerComingContainer(sizingInformation: sizingInformation),
                PresaleContainer(sizingInformation: sizingInformation),
                const SizedBox(height: 50,),
                FooterContainer(sizingInformation: sizingInformation),
              ],
            ),
          );

        },
      ),
    );
  }
}


