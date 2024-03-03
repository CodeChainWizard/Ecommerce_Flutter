import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.menu_open,
                  size: 30.0,
                ),
                GestureDetector(
                  onTap: () {
                    Get.snackbar("Hey Buddy!!", "Process Working on");
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black38,
                      ),
                    ),
                    child: const Icon(
                      Icons.notifications,
                      size: 30.0,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 22.0),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: "Search Food...",
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () => _searchController.clear(),
                  ),
                  prefixIcon: IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      if (_searchController.text.isEmpty) {
                        Get.snackbar("Hey Buddy!!", "Enter text for Search");
                      } else {
                        Get.snackbar("Hey Buddy!!", "Process Working on");
                      }
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              height: 30,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(left: 7.0),
                        child: Row(
                          children: [
                            Icon(Icons.menu_sharp),
                            SizedBox(
                              width: 5.0,
                            ),
                            const Text(
                              "All",
                              textAlign: TextAlign.center,
                              style: TextStyle(height: 2),
                            ),
                          ],
                        ),
                      )),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(left: 7.0),
                      child: const Row(
                        children: [
                          Icon(Icons.location_on),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "Nearby",
                            textAlign: TextAlign.center,
                            style: TextStyle(height: 2),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(left: 7.0),
                      child: const Row(
                        children: [
                          Icon(Icons.local_pizza_outlined),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "Pizza",
                            textAlign: TextAlign.center,
                            style: TextStyle(height: 2),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(left: 7.0),
                      child: const Row(
                        children: [
                          Icon(Icons.emoji_food_beverage_outlined),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "Pasta",
                            textAlign: TextAlign.center,
                            style: TextStyle(height: 2),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(left: 7.0),
                      child: const Row(
                        children: [
                          Icon(Icons.fastfood),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "Burger",
                            textAlign: TextAlign.center,
                            style: TextStyle(height: 2),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(left: 7.0),
                      child: const Row(
                        children: [
                          Icon(Icons.icecream_sharp),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "Ice-cream",
                            textAlign: TextAlign.center,
                            style: TextStyle(height: 2),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0,),
            Container(
              child: Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildFoodCard("assets/images/food1.jpg", "Food 1 Name"),
                          buildFoodCard("assets/images/food2.jpg", "Food 2 Name"),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildFoodCard("assets/images/food3.jpg", "Food 3 Name"),
                          buildFoodCard("assets/images/food4.jpg", "Food 4 Name"),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildFoodCard("assets/images/food5.jpg", "Food 5 Name"),
                          buildFoodCard("assets/images/food6.jpg", "Food 6 Name"),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildFoodCard("assets/images/food7.jpg", "Food 5 Name"),
                          buildFoodCard("assets/images/food8.jpg", "Food 6 Name"),
                        ],
                      ),
                      SizedBox(height: 40.0,),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0, bottom: 20.0),
              width: 500,
              child: ElevatedButton(
                onPressed: (){
                  Get.snackbar("Hey Buddy!!", "Order Placed");
                },
                child: Text("Order"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFoodCard(String imagePath, String label) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      width: 170,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          color: Colors.black,
        ),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Container(
              margin: EdgeInsets.only(top: 5.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Image.asset(
                imagePath,
                width: 150,
                height: 130,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 5.0),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(height: 2),
          ),
        ],
      ),
    );
  }
}
