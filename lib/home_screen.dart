import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapp/login_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  LoginController controller = Get.put(LoginController());

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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: controller.emailController.value,
                decoration: const InputDecoration(
                    hintText: 'Email', labelText: 'Email'),
              ),
              TextFormField(
                controller: controller.passwordController.value,
                decoration: const InputDecoration(
                    hintText: 'Password', labelText: 'Password'),
              ),
              const SizedBox(
                height: 40,
              ),
              Obx(() {
                return InkWell(
                  onTap: () {
                    controller.loginApi();
                  },
                  child: controller.loading.value
                      ? const CircularProgressIndicator()
                      : Container(
                          height: 40,
                          color: Colors.grey,
                          child: const Center(child: Text("Login")),
                        ),
                );
              })
            ],
          ),
        ));
  }
}
