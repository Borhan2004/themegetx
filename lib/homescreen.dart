import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text('GetX Tutorials'),

    ),
    body: Column(
      children: [
        Card(
          child: ListTile(
            title: Text('GetX Dialogue Alert'),
            subtitle: Text('GetX Dialogue alert with GetX'),
            onTap: (){
              Get.defaultDialog(
              title: 'Delete chat'  ,
              titlePadding: EdgeInsets.only(top: 20),
              contentPadding: EdgeInsets.all(20),
              
              middleText: 'Are you sure you want to delete this chat?',
              confirm: TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text('Ok')),
              cancel: TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text('Cancel'))
           
              );
            },
          ),
        ),
        Card(
          child: ListTile(
            title: Text('GetX Bottom Sheet'),
            onTap: (){
              Get.bottomSheet(
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(41),
                    color: Colors.teal
                  ),
                  child: Column(
                    children: [
                    ListTile(
                      leading: Icon(Icons.light_mode),
                      title: Text('Light Theme'),
                      onTap: () {
                        Get.changeTheme(ThemeData.light());
                      },

                    ),
                    ListTile(
                      leading: Icon(Icons.dark_mode),
                      title: Text('Dark Mode'),
                      onTap: () {
                        Get.changeTheme(ThemeData.dark());
                      },
                    )
      ]),
                )
              );
            },
          ) ,
        )

      ],
    ),
    floatingActionButton: FloatingActionButton(onPressed: (){
      Get.snackbar('Borhan', 
      
      'Borhan is learning',
      icon: Icon(Icons.delete),
      onTap: (GetSnackBar? snack) {
        
      },
      mainButton: TextButton(onPressed: (){

      }, child: Text('Click')),
     borderRadius: 100,
      backgroundColor: Colors.blue,
      snackPosition: SnackPosition.TOP);
      
      
    }),

        
      
    );
  }
}
