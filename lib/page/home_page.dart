import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:will_guardian/screen/home_screen.dart';
import 'package:will_guardian/values/constants/color_palette.dart';
import 'package:will_guardian/widgets/main_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  static const List<Widget> _screens = <Widget>[
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      vsync: this,
      length: _screens.length,
      initialIndex: 0,
    );
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(),
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: _screens,
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0x1f000000),
              blurRadius: 8,
              offset: Offset(0, 2),
            )
          ],
        ),
        child: _tabBar(),
      ),
    );
  }

  Widget _tabBar() {
    return Container(
      color: Colors.white,
      child: TabBar(
        controller: _tabController,
        labelColor: ColorPalette.energyGreen,
        labelStyle: const TextStyle(
          fontSize: 12,
          fontFamily: 'Kurious',
          fontWeight: FontWeight.w600,
          height: 1.5,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontFamily: 'Kurious',
          fontWeight: FontWeight.w400,
          height: 1.5,
        ),
        labelPadding: const EdgeInsets.all(0),
        unselectedLabelColor: ColorPalette.obsidian[200],
        indicator: const BoxDecoration(),
        tabs: <Widget>[
          _tabBarItem(
            svgIcon: "assets/images/icon_home.svg",
            label: "หน้าหลัก",
            index: 0,
          ),
          _tabBarItem(
            svgIcon: "assets/images/icon_asset.svg",
            label: "ทรัพย์สิน",
            index: 1,
          ),
          _tabBarItem(
            svgIcon: "assets/images/icon_heritage.svg",
            label: "มรดก",
            index: 2,
          ),
          _tabBarItem(
            svgIcon: "assets/images/icon_testament.svg",
            label: "พินัยกรรม",
            index: 3,
          ),
          _tabBarItem(
            svgIcon: "assets/images/icon_account.svg",
            label: "โปรไฟล์",
            index: 4,
          ),
        ],
        onTap: (int index) {
          setState(() {});
        },
      ),
    );
  }

  Widget _tabBarItem({
    required String svgIcon,
    required String label,
    required int index,
  }) {
    return Tab(
      height: 60,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            svgIcon,
            color: _tabController.index == index
                ? ColorPalette.energyGreen
                : ColorPalette.obsidian[200],
          ),
          Text(label),
        ],
      ),
    );
  }
}
