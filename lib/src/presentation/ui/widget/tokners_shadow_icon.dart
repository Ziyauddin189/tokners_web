import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ToknersShadowIcon extends StatelessWidget {
  const ToknersShadowIcon(
      this.iconAsset, {
        Key? key,
        this.child,
        this.isSmallSize = false,
        required this.color, // Added color parameter
      }) : super(key: key);

  final String iconAsset;
  final Widget? child;
  final bool isSmallSize;
  final Color color; // Color parameter

  @override
  Widget build(BuildContext context) {
    Widget iconWidget = SvgPicture.asset(
      iconAsset,
    );

    iconWidget = Transform.scale(
      scale: 1,
      child: iconWidget,
    );

    Widget childWidget = Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color, // Use the provided color
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.4), // Use color with opacity
            blurRadius: 25.0,
            offset: const Offset(0, 15),
          ),
        ],
      ),
      child: Center(child: iconWidget), // Center the SVG icon inside the container
    );

    return childWidget;
  }
}
