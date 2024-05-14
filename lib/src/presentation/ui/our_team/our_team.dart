import 'package:flutter/material.dart';
import 'package:fluttertokners/src/presentation/ui/onboarding/common_app_bar.dart';
import 'package:fluttertokners/src/presentation/ui/our_team/team_page.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Team extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CommonAppBar(
      body: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          return SingleChildScrollView(
            child: Column(
              children: [
                TeamPage(sizingInformation: sizingInformation),
              ],
            ),
          );
        },
      ),
    );
  }
}
