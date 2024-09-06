import 'package:chat_app/services/auth/auth_services.dart';
import 'package:chat_app/pages/settings_page.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  
  void logout(){
    //get auth service
    final auth = AuthServices();
    auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
            //logo
          DrawerHeader(
            child: Center(
              child: Icon(
                Icons.message,
                color: Theme.of(context).colorScheme.primary,
                size: 40,
              ),
            ),
          ),

          //home list tile
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: ListTile(
              title: const Text("A N A S A Y F A"),
              leading: const Icon(Icons.home),
              onTap: () {
                //pop the drawer
                Navigator.pop(context);
              },
            ),
          ),

          //settings list tile
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: ListTile(
              title: const Text("A Y A R L A R"),
              leading: const Icon(Icons.settings),
              onTap: () {
                //pop the drawer
                Navigator.pop(context);

                //navigate to settings page
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => const SettingsPage(),),);
              },
            ),
          ),
          ],
        ),

          

          //logout list tile
          Padding(
            padding: const EdgeInsets.only(left: 25, bottom: 25),
            child: ListTile(
              title: const Text("Ç I K I Ş"),
              leading: const Icon(Icons.logout),
              onTap: logout,
            ),
          ),
        ],
      ),
    );
  }
}