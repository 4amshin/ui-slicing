import 'package:flutter/material.dart';

class SmHomePage extends StatelessWidget {
  const SmHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Color(0xff1339a4),
          size: 20,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.more_horiz,
              color: Color(0xff1339a4),
              size: 25,
            ),
          ),
        ],
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundColor: Color(0xffffb8b2),
                  backgroundImage: AssetImage(
                    'assets/images/student_management/profile.png',
                  ),
                  radius: 50,
                ),
                const SizedBox(width: 80.0),
                Container(
                  height: 100.0,
                  width: 6,
                  decoration: const BoxDecoration(
                    color: Color(0xffc5cce9),
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        16.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 25.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Joined",
                      style: TextStyle(fontSize: 12, color: Color(0xffc0c3c8)),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "7 mon ago",
                      style: TextStyle(
                        color: Color(0xff1339a4),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
