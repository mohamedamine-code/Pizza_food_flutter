import 'package:flutter/material.dart';
import 'package:pizza_food/Screen/SecondScren.dart' show SecondScrren;
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
              SizedBox(height: MediaQuery.of(context).size.height * 0.020),
              // SizedBox(height: MediaQuery.of(context).size.height * 0.020),
              _menuContent(context),
              // SizedBox(height: MediaQuery.of(context).size.height * 0.039),
              Align(
                alignment: Alignment.bottomRight,
                child: _button(context)),
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

  Widget _contentText(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          // textAlign: TextAlign.left,
          "Pizza Palooa :",
          style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.001),

        Text(
          "Because ordinary ",
          style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.001),

        Text(
          "Isn't an Option !",
          style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
      ],
    );
  }

  Widget _menuContent(BuildContext context) {
    return Container(
      // color: Colors.red,
      width: MediaQuery.of(context).size.width,
      height: 430,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Modelpizza();
        },
      ),
    );
  }

  Widget _button(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScrren()));
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("View All",style: TextStyle(fontSize: 18, color: Colors.white),),
          Icon(Icons.arrow_forward , color: Colors.white,)
        ],
      )
    );
  }
}
