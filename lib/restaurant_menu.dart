import 'package:flutter/material.dart';

class RestaurantMenue extends StatefulWidget {
  const RestaurantMenue({Key key}) : super(key: key);

  @override
  _RestaurantMenueState createState() => _RestaurantMenueState();
}

class _RestaurantMenueState extends State<RestaurantMenue> {

  String item;
  List items = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Restaurant Menu'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomizedMealItem(imageLink: 'images/pasta.jpg', meal: '   Pasta',itemNum: '1',  ),
              SizedBox(height: 20,),
              CustomizedMealItem(imageLink: 'images/pizza.jpg', meal: '   Pizza', itemNum: '2' ),
              SizedBox(height: 20,),
              CustomizedMealItem(imageLink: 'images/burger.jpg', meal: '   Burger', itemNum: '2' ),
              SizedBox(height: 20,),
              CustomizedMealItem(imageLink: 'images/french fries.jpg', meal: '   French Fries',itemNum: '0' ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }

  Widget CustomizedMealItem({String imageLink, String meal,var itemNum}){
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.amber,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 8.0),
                blurRadius: 10.0,
              ),
            ],
          ),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 3,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  margin:EdgeInsets.fromLTRB(10,10,0,0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), // color:Colors.red,
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image(

                    fit: BoxFit.cover,
                    image: AssetImage(imageLink),
                  ),
                ),
                SizedBox(width: 30,),
                DropdownButton(
                  hint: Text('0'),
                  value: item,
                  items: items.map((itemName) {
                    return DropdownMenuItem(
                      child: Text(itemName),
                      value: itemName,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      item = value;
                    });
                  },
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                meal,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
