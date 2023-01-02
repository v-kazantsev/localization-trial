import 'package:flutter/material.dart';
import '../app_colors.dart';
import '../components/notification_icon.dart';
import '../screens/screens.dart';
import '../components/navigation_bar_item.dart';
import '../localization/app_localization_context.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIndex = 1;
  String title = 'Мои коды';

  final pages = [
    const Page1(),
    const Page2(),
    const Page3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pale,
      appBar: AppBar(
        title: Text(
            title,
            style: Theme.of(context).textTheme.headline1,
          ),
        actions: const [NotificationIcon(), SizedBox(width: 25)],
        elevation: 0.0,
        centerTitle: false,
      ),
      body: pages[pageIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: AppColors.accent,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          )
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(58, 16, 58, 36),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavBarItem(
                isSelected: pageIndex == 0,
                icon: Icons.settings,
                onPressed: () => setState(() {
                  pageIndex = 0;
                  title = context.loc.settings;
                }),
              ),
              NavBarItem(
                isSelected: pageIndex == 1,
                icon: Icons.qr_code,
                label: context.loc.myCodes,
                onPressed: () => setState(() {
                  pageIndex = 1;
                  title = context.loc.myCodes;
                }),
              ),
              NavBarItem(
                isSelected: pageIndex == 2,
                icon: Icons.person,
                onPressed: () => setState(() {
                  pageIndex = 2;
                  title = context.loc.profile;
                }),
              ),
            ],
          ),
        )
      ),
    );
  }
}