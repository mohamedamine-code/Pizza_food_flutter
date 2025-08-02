import 'package:flutter/material.dart';
import 'package:pizza_food/Widgets/Modelpizza_horizantel.dart';
import 'package:pizza_food/Widgets/modelpizza.dart';

class SecondScrren extends StatelessWidget {
  const SecondScrren({super.key});

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
              _HorizanteList(context),
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
            SizedBox(height: MediaQuery.of(context).size.height * 0.005),
            Text(
              "Upgrade my plane",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
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

  Widget _HorizanteList(BuildContext context) {
    return Container(
      // color: Colors.red,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height - 200,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 3.5,
          mainAxisSpacing: 10,
          crossAxisSpacing: 20,
        ),
        shrinkWrap: true, //width / height
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return ModelpizzaHorizantel();
        },
      ),
    );
  }

  Widget _button(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SecondScrren()),
        );
      },
      style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("View All", style: TextStyle(fontSize: 18, color: Colors.white)),
          Icon(Icons.arrow_forward, color: Colors.white),
        ],
      ),
    );
  }
}
