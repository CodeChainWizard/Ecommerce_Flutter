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
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: const Text("All", textAlign: TextAlign.center, style: TextStyle(height: 2),),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: const Text("Nearby", textAlign: TextAlign.center, style: TextStyle(height: 2),),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: const Text("Pizza", textAlign: TextAlign.center, style: TextStyle(height: 2),),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: const Text("Pissta", textAlign: TextAlign.center, style: TextStyle(height: 2),),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: const Text("Burger", textAlign: TextAlign.center, style: TextStyle(height: 2),),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: const Text("Ice-cream", textAlign: TextAlign.center, style: TextStyle(height: 2),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}