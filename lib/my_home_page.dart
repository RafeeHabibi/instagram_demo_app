import 'package:flutter/material.dart';
import 'package:instagram_demo_app/pages/favorite_page.dart';
import 'package:instagram_demo_app/pages/home_page.dart';
import 'package:instagram_demo_app/pages/plus_page.dart';
import 'package:instagram_demo_app/pages/profile_page.dart';
import 'package:instagram_demo_app/pages/search_page.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int currentPageIndex = 0;
  final List<Widget> pageList = [
    HomePage(),
    SearchPage(),
    ProfilePage(),
    FavoritePage(),
    PlusPage()
  ];

  void changePage(int indexPage) {
    setState(() {
      currentPageIndex = indexPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 40,
          child: Image.asset('assets/images/insta_logo.png'),
        ),
        centerTitle: true,
        backgroundColor: Color(0xfff8faf8),
        elevation: 1.0,
        leading: Icon(Icons.camera_alt),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.send, color: Colors.blue),
          ),
        ],
      ),
      body: pageList[currentPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 0.0,      // This is A trick to remove lable text
        unselectedFontSize: 0.0,    // If BottomNavigationBarItem > 3, occure shiffting
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal,color: Colors.grey),
         items: [
           BottomNavigationBarItem(icon: Icon(Icons.home, color: currentPageIndex == 0 ? Colors.black : Colors.grey), label: 'Home'),
           BottomNavigationBarItem(icon: Icon(Icons.search, color: currentPageIndex == 1 ? Colors.black : Colors.grey), label: 'Explore'),
           BottomNavigationBarItem(icon: Icon(Icons.add_box, color: currentPageIndex == 2 ? Colors.black : Colors.grey), label: 'Add'),
           BottomNavigationBarItem(icon: Icon(Icons.favorite, color: currentPageIndex == 3 ? Colors.red : Colors.grey), label: 'Favorite'),
           BottomNavigationBarItem(icon: Icon(Icons.account_box, color: currentPageIndex == 4 ? Colors.black : Colors.grey), label: 'Profile'),
         ],
        onTap: (index){
          changePage(index);
        },
      ),
    );
  }
}
