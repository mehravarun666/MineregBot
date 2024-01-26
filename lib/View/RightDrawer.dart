import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.indigo,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/chatbot.png',
                  width: 80,
                  height: 80,
                ),
                SizedBox(height: 8),
                Text(
                  'MineRegBot',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icons/user.png',
                          width: 30,
                          height: 30,
                        ),
                        SizedBox(width: 15),
                        Text(
                          'Your Account',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icons/clock.png',
                          width: 30,
                          height: 30,
                        ),
                        SizedBox(width: 15),
                        Text(
                          'Chat History',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icons/settings-gear-icon.png',
                          width: 30,
                          height: 30,
                        ),
                        SizedBox(width: 15),
                        Text(
                          'Settings',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icons/logout.png',
                          width: 30,
                          height: 30,
                        ),
                        SizedBox(width: 15),
                        Text(
                          'Logout',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
