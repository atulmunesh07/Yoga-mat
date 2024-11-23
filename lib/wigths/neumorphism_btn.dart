import 'package:flutter/material.dart';

import 'colors.dart';

class NeumorphismBtn extends StatelessWidget {
  final double size;
  final Widget? child;
  final VoidCallback? onPressed;
  final double blur;
  final double distance;
  final List<Color>? colors;
  final String? imageUrl;
  final double? pading;

  const NeumorphismBtn({super.key,
    required this.size,
     this.child,
    this.onPressed,
     this.blur =20,
    this.distance=10,
    this.colors,
    this.imageUrl,
     this.pading
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onPressed,
      child: Container(

        height: size,
        width: size,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        padding: EdgeInsets.all(pading??3),
        decoration: BoxDecoration(
            color:colors==null ? AppColor.bgColors:colors![1],
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                  color: Colors.white,
                  blurRadius: 20,
                  offset: Offset(-distance, -distance)
              ),
              BoxShadow(
                  color: AppColor.bgDark,
                  blurRadius: 20,
                  offset: Offset(distance, distance)
              )
            ]
        ),
        child: imageUrl!=null? CircleAvatar(
          backgroundImage: AssetImage(imageUrl!),
        ): Container(
          decoration: BoxDecoration(
              color: AppColor.bgColors,
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: colors??
                  [
                    Colors.white,
                    AppColor.bgDark
                  ])
          ),
          child: child,
        ),
      ),
    );
  }
}
