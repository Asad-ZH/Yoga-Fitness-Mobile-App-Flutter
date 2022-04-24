import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: Container(
        // color: const Color(0xFF212121),
        child: ListView(

          padding: EdgeInsets.zero,
          children: [

            UserAccountsDrawerHeader(
                accountName: Text('Ali Hasan'),
                accountEmail: Text('Alihasan8096@gmail.com'),
              currentAccountPicture: CircleAvatar(
                radius: 30.0,
                backgroundImage:
                NetworkImage('https://images.unsplash.com/photo-1552196563-55cd4e45efb3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHlvZ2F8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
                backgroundColor: Colors.transparent,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://images.unsplash.com/photo-1622737133809-d95047b9e673?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTV8fGFic3RyYWN0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'
                  ),
                fit: BoxFit.cover,
                )
              ),
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title:Text('Favourites',),
              // style: TextStyle(color: Colors. white),
              onTap: () =>null,
            ),ListTile(
              leading: Icon(Icons.people),
              title:Text('Friends'),
              onTap: () =>null,
            ),ListTile(
              leading: Icon(Icons.share),
              title:Text('Share'),
              onTap: () =>null,
            ),ListTile(
              leading: Icon(Icons.notifications),
              title:Text('Request'),
              onTap: () =>null,
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title:Text('Settings'),
              onTap: () =>null,
            ),ListTile(
              leading: Icon(Icons.description),
              title:Text('Policies'),
              onTap: () =>null,
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title:Text('Exit'),
              onTap: () =>null,
            )
          ],
        ),
      ),
    );

  }
}