import 'package:flutter/material.dart';
import 'package:pizza_food/Widgets/modelpizza.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // header
              _headerapp(context),
              SizedBox(height: MediaQuery.of(context).size.height * 0.039),
              _contentText(context),
              SizedBox(height: MediaQuery.of(context).size.height * 0.039),
              _menuContent(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _headerapp(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/img/pizza.png", height: 40),
                SizedBox(width: MediaQuery.of(context).size.height * 0.008),
                Text(
                  "PIZZA",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.001),
            Text(
              "Upgrade my plane",
              style: TextStyle(fontSize: 15, color: Colors.blueAccent),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Image.asset("assets/icon/menu.png", width: 35),
        ),
      ],
    );
  }

  Widget _contentText(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          // textAlign: TextAlign.left,
          "Pizza Palooa :",
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),

        Text(
          "Because ordinary ",
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),

        Text(
          "Isn't an Option !",
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _menuContent(BuildContext context) {
    return Container(
      // color: Colors.red,
      width: MediaQuery.of(context).size.width,
      height: 370,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Modelpizza();
        },
      ),
    );
  }
}
