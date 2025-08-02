import 'package:e_commerce_app/widgets/support_widgets.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          ],
        ),
      ),
    );
  }
}
