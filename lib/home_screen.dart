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
        title: const Text(
          "GetX State Management",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo.shade400,
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: const Text('GetX Dialog Alert'),
              subtitle: const Text("Showing Dialog Alert Box Using GetX"),
              onTap: () {
                Get.defaultDialog(
                  title: 'Delete Chat',
                  middleText: 'Are you sure you want to delete chat?',
                  titlePadding: const EdgeInsets.only(top: 15),
                  contentPadding: const EdgeInsets.all(18),
                  confirm: TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: const Text("Ok")),
                  cancel: TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: const Text("Cancel")),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('GetX Boottom Sheet'),
              subtitle: const Text("Showing Bottom Sheet Using GetX"),
              onTap: () {
                Get.bottomSheet(Container(
                  decoration: const BoxDecoration(
                      // color: Colors.grey,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Column(
                    children: [
                      ListTile(
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                        leading: const Icon(Icons.light_mode),
                        title: const Text("Light Mode"),
                      ),
                      ListTile(
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                        leading: const Icon(Icons.dark_mode),
                        title: const Text("Dark Mode"),
                      )
                    ],
                  ),
                ));
              },
            ),
          ),
          ListTile(
            title: const Text("Dark Mode"),
            onTap: () {
              Get.changeTheme(ThemeData.dark());
            },
          ),
          ListTile(
            title: const Text("Light Mode"),
            onTap: () {
              Get.changeTheme(ThemeData.light());
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.snackbar(
          'M Usman', 'Practicing GetX',
          backgroundColor: Colors.blue,
          snackPosition: SnackPosition.BOTTOM,
          icon: const Icon(Icons.favorite),
          // margin: EdgeInsets.only(bottom: 20),
        );
      }),
    );
  }
}
