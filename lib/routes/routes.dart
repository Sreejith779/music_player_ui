import 'package:flutter/material.dart';
import 'package:music_player/screens/homePage.dart';
import 'package:music_player/screens/searchPage.dart';

class Routes extends StatefulWidget {
  const Routes({Key? key}) : super(key: key);

  @override
  State<Routes> createState() => _RoutesState();
}

class _RoutesState extends State<Routes> {
  int _selectedIndex = 0;
  final tabs= [
    HomePage(),
 SearchPage(),
    HomePage(),
    HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      bottomNavigationBar: NavigationBar(

 
onDestinationSelected: (value){
  setState(() {
    _selectedIndex = value;
  });
},
        selectedIndex: _selectedIndex,
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.black,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home),
              label: "."),
          NavigationDestination(icon: Icon(Icons.search_outlined),
              label: "."),
          NavigationDestination(
              label: ".", icon: Icon(Icons.playlist_add),),
          NavigationDestination(
              label: ".", icon: Icon(Icons.more),),
        ],

      ),
      body: tabs[_selectedIndex],
    );
  }
}
