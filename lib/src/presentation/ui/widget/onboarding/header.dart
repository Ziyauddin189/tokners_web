import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttertokners/gen/assets.gen.dart';
import 'package:fluttertokners/gen/colors.gen.dart';
import 'package:fluttertokners/gen/fonts.gen.dart';
import 'package:fluttertokners/generated/l10n.dart';
import 'package:fluttertokners/route/app_router.gr.dart';
import 'package:fluttertokners/src/presentation/ui/widget/tokners_outline_button.dart';


class DesktopTopAppBar extends StatefulWidget {
  DesktopTopAppBar({super.key});

  @override
  State<DesktopTopAppBar> createState() => _DesktopTopAppBarState();
}

class _DesktopTopAppBarState extends State<DesktopTopAppBar> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
      child: Row(
        children: [
          Assets.images.icons.icLogo.svg(),
          const SizedBox(width: 8),
          Assets.images.icons.icTokners.svg(),
          const SizedBox(width: 84),
          _buildButtonsRow(context),
          const Spacer(),
          _buildTextButton(LanguageTranslation.current.sign_in, 4),
          const SizedBox(width: 30,),
          SizedBox(
            width: 147,
            child: ToknersOutlineButton(
              LanguageTranslation.current.sign_up,
              onPressed: () {},
            ),
          ),

        ],
      ),
    );
  }

  Widget _buildButtonsRow(BuildContext context) {
    _selectedIndex = _getInitialIndex(context);
    return Row(
      children: [
        _buildTextButton(LanguageTranslation.current.home, 0),
        const SizedBox(width: 30,),
        _buildTextButton(LanguageTranslation.current.our_team, 1),
        const SizedBox(width: 30,),
        _buildTextButton(LanguageTranslation.current.tokens, 2),
        const SizedBox(width: 30,),
        _buildTextButton(LanguageTranslation.current.lightpaper, 3),
      ],
    );
  }


  int _getInitialIndex(BuildContext context) {
    // Get the current route name
    String currentRoute = AutoRouter.of(context).current.name;

    // Map route names to corresponding indices
    Map<String, int> routeIndexMap = {
      'OnBoardingRoute': 0,
      'TeamRoute': 1,
      'TokensRoute': 2,
      // Add more route names and corresponding indices if needed
    };

    // Return the index based on the current route name
    return routeIndexMap[currentRoute] ?? 0; // Default to 0 if route not found
  }

  Widget _buildTextButton(String text, int index) {
    return TextButton(
      onPressed: () {
        setState(() {
          if (_selectedIndex != index) {
            _selectedIndex = index;
            switch (index) {
              case 0:
                AutoRouter.of(context).push(OnBoardingRoute());
                break;
              case 1:
                AutoRouter.of(context).push(TeamRoute());
                break;
              case 2:
                AutoRouter.of(context).push(TokensRoute());
                break;
              case 3:
              // Navigate to lightpaper route
                break;
              default:
                break;
            }
          }
        });
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            return Colors.transparent;
          },
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 14,
          fontWeight: _selectedIndex == index ? FontWeight.w900 : FontWeight.w100,
          color: Colors.white,
          fontFamily: FontFamily.centuryGothic,
        ),
      ),
    );
  }



}







// class MobileTopAppBar extends StatelessWidget {
//   const MobileTopAppBar({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: ColorName.backgroundShade,
//       appBar: AppBar(
//         backgroundColor: ColorName.backgroundShade,
//         title: Text(
//           'Your Title Here',
//           style: TextStyle(
//             fontSize: 18,
//             fontWeight: FontWeight.bold,
//             fontFamily: FontFamily.centuryGothic,
//           ),
//         ),
//       ),
//       drawer: Drawer(
//         child: Container(
//           color: ColorName.backgroundShade,
//           child: ListView(
//             padding: EdgeInsets.zero,
//             children: <Widget>[
//               DrawerHeader(
//                 decoration: BoxDecoration(
//                   color: ColorName.backgroundShade,
//                 ),
//                 child: Row(
//                   children: [
//                     Assets.images.icons.icLogo.svg(),
//                     const SizedBox(width: 8),
//                     Assets.images.icons.icTokners.svg(),
//                   ],
//                 ),
//               ),
//               ListTile(
//                 title: Text(
//                   'Home',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 18,
//                     fontFamily: FontFamily.centuryGothic,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 onTap: () {
//                   AutoRouter.of(context).push(OnBoardingRoute());
//                 },
//               ),
//               ListTile(
//                 title: Text(
//                   'Our Team',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 18,
//                     fontFamily: FontFamily.centuryGothic,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 onTap: () {
//                   AutoRouter.of(context).push(TeamRoute());
//                 },
//               ),
//               ListTile(
//                 title: Text(
//                   'Tokens',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 18,
//                     fontFamily: FontFamily.centuryGothic,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 onTap: () {
//                   AutoRouter.of(context).push(TokensRoute());
//                 },
//               ),
//               // Add more list tiles as needed
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }





class MobileTopAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MobileTopAppBar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorName.backgroundShade,
      leading: Assets.images.icons.icLogo.svg(),
      title: Assets.images.icons.icTokners.svg(),
      actions: [
        GestureDetector(
          onTap: () {
            Scaffold.of(context).openDrawer();
          },
          child: Assets.images.icons.icMenu.svg(),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
