import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final PreferredSizeWidget? bottom;

  const MainAppBar({
    super.key,
    this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: SvgPicture.asset("assets/images/logo_tab.svg"),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/images/icon_bell.svg"),
        )
      ],
      bottom: bottom,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
