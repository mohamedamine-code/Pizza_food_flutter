import 'package:flutter/material.dart';

class Modelpizza extends StatelessWidget {
  const Modelpizza({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.all(10),
      height: 100,
      width: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: ClipOval(
              child: Image.asset(
                "assets/img/27 Best Meat Lover’s Pizza Recipes.jpeg",
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text("Pizza Margherita",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
          Text("Tomato, mozzarella, fresh basil (classic Italian).",style:TextStyle(color: const Color.fromARGB(120, 0, 0, 0),fontSize: 17)),
          const Spacer(),
          Row(
            children: [
              Text("\$80.00",style: TextStyle(fontSize: 20,color: Colors.blueAccent),),
              SizedBox(width: 5,),
              Text("\$80.00",style: TextStyle(decoration: TextDecoration.lineThrough,fontSize: 20,color: Colors.grey),),
              Spacer(),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.black,
                ),
                child: Center(
                  child: Icon(Icons.add,color: Colors.white,),
                ),
              )
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
