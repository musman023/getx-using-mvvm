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
        children: [],
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
