import 'package:flutter/material.dart';
import 'package:sqflite_database_example/page/ApiWeather.dart';
import '/page/notes_page.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('The App'),
            accountEmail: Text('Mochamad Najib Budi Noorsyahbannie'),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('home'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NotesPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Cek Cuaca'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ApiWeather()));
            },
          ),
        ],
      ),
    );
  }
}
