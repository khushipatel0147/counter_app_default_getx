import 'package:counter_app_default_getx/contoller/mathController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MathController>(
      init: MathController(),
      builder: (controller) =>
          SafeArea(
              child: Scaffold(
                appBar: AppBar(
                    title: Text(
                      "Math App",
                      style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 1,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    leading: BackButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        color: Colors.white),
                    backgroundColor: Colors.black),
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height:60,
                        width: 250,
                        decoration: BoxDecoration(color: Colors.black,
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Text("${controller.i}", style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            color: Colors.white,
                          ),),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          controller.plus();
                        },
                        child: Text(
                          "+",
                          style: TextStyle(
                            fontSize: 20,
                            letterSpacing: 1,
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          controller.minus();
                        },
                        child: Text(
                          "-",
                          style: TextStyle(
                            fontSize: 20,
                            letterSpacing: 1,
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          controller.xx();
                        },
                        child: Text(
                          "2X",
                          style: TextStyle(
                            fontSize: 20,
                            letterSpacing: 1,
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          controller.xxx();
                        },
                        child: Text(
                          "3X",
                          style: TextStyle(
                            fontSize: 20,
                            letterSpacing: 1,
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          controller.xxxx();
                        },
                        child: Text(
                          "4X",
                          style: TextStyle(
                            fontSize: 20,
                            letterSpacing: 1,
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          controller.clear();
                        },
                        child: Text(
                          "Clear",
                          style: TextStyle(
                            fontSize: 20,
                            letterSpacing: 1,
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                      ),
                    ],
                  ),
                ),
              )),
    );
  }
}
