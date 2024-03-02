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
            Card(
              margin: EdgeInsets.only(top: 20.0),
              elevation: 4,
              child: SizedBox(
                width: 150,
                height: 190,
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: 150,
                          height: 100,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "assets/images/food1.jpg",
                              fit: BoxFit.cover,
                            ),
                          )),
                      Container(
                        margin: EdgeInsets.only(top: 5.0),
                        child: const Text("Food 1 Name"),
                      ),
                      const Text(
                        "\$10.0",
                        style: TextStyle(color: Colors.black45),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.star),
                          Text("4.5"),
                          Spacer(),
                          Container(
                            margin: EdgeInsets.only(left: 20.0),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Icon(
                              Icons.favorite_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.only(top: 20.0),
              elevation: 4,
              child: Container(
                width: 150,
                height: 190,
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: 150,
                          height: 100,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "assets/images/food2.jpg",
                              fit: BoxFit.cover,
                            ),
                          )),
                      Container(
                        margin: EdgeInsets.only(top: 5.0),
                        child: Text("Food 2 Name"),
                      ),
                      Text(
                        "\$10.0",
                        style: TextStyle(color: Colors.black45),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.star),
                          Text("4.5"),
                          Spacer(),
                          Container(
                            margin: EdgeInsets.only(left: 20.0),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Icon(
                              Icons.favorite_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
