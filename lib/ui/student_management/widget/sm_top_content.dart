import 'package:flutter/material.dart';

import 'sm_join_time.dart';
import 'sm_top_profile_pic.dart';

class SmTopContent extends StatelessWidget {
  const SmTopContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        SmTopProfilePic(),
        SizedBox(width: 65.0),
        SmJoinTime(),
      ],
    );
  }
}
