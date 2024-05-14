import 'package:flutter/material.dart';
import 'package:fluttertokners/src/presentation/ui/onboarding/common_app_bar.dart';
import 'package:fluttertokners/src/presentation/ui/tokens/supply_container.dart';
import 'package:fluttertokners/src/presentation/ui/tokens/token_container/token_container.dart';
import 'package:fluttertokners/src/presentation/ui/tokens/tokens_page/tokens_page.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Tokens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CommonAppBar(
      body: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          return SingleChildScrollView(
            child: Column(
              children: [
                TokensPage(sizingInformation: sizingInformation),
                TokenContainer(sizingInformation: sizingInformation),
                SupplyContainer(sizingInformation: sizingInformation)
              ],
            ),
          );

        },
      ),
    );
  }
}
