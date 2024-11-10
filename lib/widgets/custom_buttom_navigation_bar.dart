import 'package:flutter/material.dart';
import 'package:shopicon/widgets/custom_bottom_navigation_bar_items.dart';

class CustomButtomNavigationBar extends StatefulWidget {
  const CustomButtomNavigationBar({super.key});

  @override
  State<CustomButtomNavigationBar> createState() => _CustomButtomNavigationBarState();
}

class _CustomButtomNavigationBarState extends State<CustomButtomNavigationBar> {
  int _page = 0;
  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  void _navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  void _onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     /* appBar: AppBar(
        title: Text('$username'),
      ),*/
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        onPageChanged: _onPageChanged,
        children:firstScreenItems,
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: _page,
        onTap: _navigationTapped,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home",
              backgroundColor: Colors.white
              ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.credit_card,
              ),
              label: "Discover",
              ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark,
              ),
              label: "Bookmarks"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "Profile"),
        ],
      ),
    );
  }
}
