import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bumble",
          style: TextStyle(fontFamily: 'bumbleFont', fontSize: 40),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    debugPrint("back");
                  },

                  child: Image(
                    image: AssetImage("assets/image/icons/back_icon.png"),
                    height: 30,
                    width: 30,
                  ),
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    debugPrint("Filter option");
                  },
                  child: Image(
                    image: AssetImage("assets/image/icons/filter_icon.png"),
                    height: 30,
                    width: 30,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        enableFeedback: false,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/image/icons/profile_icon.png",
              width: 30,
              height: 30,
            ),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/image/icons/medal_icon.png",
              width: 30,
              height: 30,
            ),
            label: "For You",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/image/icons/bumble_icon.png",
              width: 30,
              height: 30,
            ),
            label: "People",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/image/icons/like_icon.png",
              width: 30,
              height: 30,
            ),
            label: "like",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/image/icons/chat_icon.png",
              width: 30,
              height: 30,
            ),
            label: "For You",
          ),
        ],
      ),
      body: Container(color: Colors.yellow),
    );
  }
}
