import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttertokners/app.dart';
import 'package:fluttertokners/route/app_router.gr.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CommonAppBar extends StatelessWidget {
  final Widget body;

  const CommonAppBar({required this.body});

  @override
  Widget build(BuildContext context) {
    final router = context.router;
    return Scaffold(
      backgroundColor: ColorName.backgroundShade,
      drawer: Drawer(
        child: Container(
          color: ColorName.backgroundShade,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: ColorName.backgroundShade,
                ),
                child: Row(
                  children: [
                    Assets.images.icons.icLogo.svg(),
                    const SizedBox(width: 8),
                    Assets.images.icons.icTokners.svg(),
                  ],
                ),
              ),
              _buildDrawerItem(
                context,
                'Home',
                    () {
                  router.push(OnBoardingRoute());
                },
                router.current.name == OnBoardingRoute.name,
              ),
              _buildDrawerItem(
                context,
                'Our Team',
                    () {
                  router.push(TeamRoute());
                },
                router.current.name == TeamRoute.name,
              ),
              _buildDrawerItem(
                context,
                'Tokens',
                    () {
                  router.push(TokensRoute());
                },
                router.current.name == TokensRoute.name,
              ),
            ],
          ),
        ),
      ),
      body: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          if (!sizingInformation.isDesktop) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 56, 20, 30),
                  child: Container(
                    height: 25,
                    child: Row(
                      children: [
                        Assets.images.icons.icLogo.svg(),
                        const SizedBox(width: 8),
                        Assets.images.icons.icTokners.svg(),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            Scaffold.of(context).openDrawer();
                          },
                          child: Assets.images.icons.icMenu.svg(),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(child: body),
              ],
            );
          } else {
            return Column(
              children: [
                SizedBox(),
                Expanded(child: body),
              ],
            );
          }
        },
      ),
    );
  }

  Widget _buildDrawerItem(
      BuildContext context,
      String title,
      VoidCallback onTap,
      bool isSelected,
      ) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          color: isSelected ? Colors.blue : Colors.white,
          fontSize: 18,
          fontFamily: FontFamily.centuryGothic,
          fontWeight: FontWeight.w700,
        ),
      ),
      onTap: onTap,
    );
  }
}
