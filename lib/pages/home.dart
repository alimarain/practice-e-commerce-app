import 'package:e_commerce_app/widgets/support_widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List categories = [
    "images/headphone.jpg"
        "images/laptop/jpg"
        "images/tv.png"
        "images/watch.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hey Ali", style: AppWidget.boldTextFieldStyle()),
                    Text("Good Morning",
                        style: AppWidget.lightTextFieldStyle()),
                  ],
                ),
                Image.asset(
                  "images/user.jpg",
                  height: 70,
                  width: 70,
                  fit: BoxFit.cover,
                )
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
                // padding: EdgeInsets.only(left: 20.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                width: MediaQuery.of(context).size.width,
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search Here",
                      hintStyle: AppWidget.lightTextFieldStyle(),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      )),
                )),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("categories", style: AppWidget.semiboldTextFieldStyle()),
                Text("See All",
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold))
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20.0,
              ),
              height: 70,
              child: ListView.builder(
                  itemCount: categories.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CategoryTile(image: categories[index]);
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  String image;
  CategoryTile({required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      height: 90,
      width: 90,
      child: Column(
        children: [
          Image.asset(image),
        ],
      ),
    );
  }
}
