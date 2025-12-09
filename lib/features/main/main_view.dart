import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:safarni/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  static final GlobalKey<MainViewState> mainViewKey =
      GlobalKey<MainViewState>();

  @override
  State<MainView> createState() => MainViewState();
}

class MainViewState extends State<MainView> {
  late NotchBottomBarController _controller;

  @override
  void initState() {
    super.initState();
    _controller = NotchBottomBarController(index: 0);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void changeTab(int index) {
    _controller.jumpTo(index);
    setState(() {});
  }

  final List<Widget> _pages = const [
    Center(child: Text('Home')),
    Center(child: Text('Wishlist')),
    Center(child: Text('Compare')),
    Center(child: Text('Profile')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: IndexedStack(index: _controller.index, children: _pages),
      bottomNavigationBar: AnimatedNotchBottomBar(
        notchBottomBarController: _controller,
        kIconSize: 26,
        kBottomRadius: 28,
        color: Colors.white,
        notchColor: AppColors.primary,
        showLabel: true,
        bottomBarItems: const [
          BottomBarItem(
            inActiveItem: Icon(Icons.home_outlined),
            activeItem: Icon(Icons.home),
            itemLabel: 'Home',
          ),
          BottomBarItem(
            inActiveItem: Icon(Icons.bookmark_outline),
            activeItem: Icon(Icons.bookmark),
            itemLabel: 'Wishlist',
          ),
          BottomBarItem(
            inActiveItem: Icon(Icons.compare_arrows_outlined),
            activeItem: Icon(Icons.compare_arrows),
            itemLabel: 'Compare',
          ),
          BottomBarItem(
            inActiveItem: Icon(Icons.person_outline),
            activeItem: Icon(Icons.person),
            itemLabel: 'Profile',
          ),
        ],
        onTap: (index) {
          setState(() {
            _controller.jumpTo(index);
          });
        },
      ),
    );
  }
}
