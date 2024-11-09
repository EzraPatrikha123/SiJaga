import 'package:flutter/material.dart';

class MenuButton extends StatefulWidget {
  int activePage;
  MenuButton(this.activePage);

  @override
  State<MenuButton> createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  int _selectedItem = 0;
  void getLink(index){
    setState(() {
      _selectedItem = index;
    });
    if (index == 0){
      Navigator.pushReplacementNamed(context, '/');
    }
    else if(index == 1){
      Navigator.pushReplacementNamed(context, "/history");
    }
    else if (index == 2){
      Navigator.pushReplacementNamed(context, "/data");
    }
    else if(index == 3){
      Navigator.pushReplacementNamed(context, "/chat");
    }
  }
  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
  backgroundColor: Colors.blue,
  selectedItemColor: const Color.fromARGB(255, 0, 0, 0),
  unselectedItemColor: const Color.fromARGB(125, 151, 151, 151),
  currentIndex: widget.activePage,
  onTap: getLink,
  items: [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
    BottomNavigationBarItem(icon: Icon(Icons.history), label: ''),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
    BottomNavigationBarItem(icon: Icon(Icons.menu), label: ''),
  ],
);
  }
}