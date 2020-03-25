import 'package:flutter/material.dart';

void main(){
  runApp(home());
}

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {

  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget> [

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[

        ],
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }

  Widget get bottomNavigationBar {
    return Container(
      height: 77,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
        boxShadow: [BoxShadow(
          blurRadius: 8,
          color: Colors.grey,
        )],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
        child: BottomNavigationBar(items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.black,), title: Text("Home", style: TextStyle(
            fontFamily: "Quando", fontWeight: FontWeight.w700,),)),
          BottomNavigationBarItem(icon: Icon(Icons.search, color: Colors.black,), title: Text("Search", style: TextStyle(
            fontFamily: "Quando", fontWeight: FontWeight.w700,),)),
          BottomNavigationBarItem(icon: Icon(Icons.menu, color: Colors.black,), title: Text("Route", style: TextStyle(
            fontFamily: "Quando", fontWeight: FontWeight.w700,),)),
          BottomNavigationBarItem(icon: Icon(Icons.streetview, color: Colors.black,), title: Text("Ticket", style: TextStyle(
            fontFamily: "Quando", fontWeight: FontWeight.w700,),)),
          BottomNavigationBarItem(icon: Icon(Icons.more_vert, color: Colors.black,),title: Text("More", style: TextStyle(
            fontFamily: "Quando", fontWeight: FontWeight.w700,),)),
        ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          onTap: _onItemTapped,

        ),
      ),
    );
  }
}