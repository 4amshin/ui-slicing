import 'package:flutter/material.dart';
import 'package:ui_slicing/ui/barber_ui/model/hairstyles.dart';
import 'package:ui_slicing/ui/barber_ui/widget/br_home_widget/br_home_hairstyles_app_bar_background.dart';
import 'package:ui_slicing/ui/barber_ui/widget/br_home_widget/br_home_view_more_button.dart';

class BrHomeHairstyleOption extends StatefulWidget {
  const BrHomeHairstyleOption({Key? key}) : super(key: key);

  @override
  State<BrHomeHairstyleOption> createState() => _BrHomeHairstyleOptionState();
}

class _BrHomeHairstyleOptionState extends State<BrHomeHairstyleOption> {
  bool isSelect = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
            size: 20,
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Select Hairstyle",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: const [],
        flexibleSpace: const BrHomeHairstylesAppBarBackground(),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Note: ",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                Text(
                  "Different charges apply",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 400,
              child: GridView.builder(
                itemCount: hairstyles.length,
                physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 2,
                  mainAxisExtent: 130,
                ),
                itemBuilder: (context, index) {
                  Hairstyle data = hairstyles[index];
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        data.isSelected = !data.isSelected;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 45,
                            backgroundColor: Colors.indigo,
                            backgroundImage: AssetImage(
                              'assets/images/barber/hairstyle/${data.imgAsset}',
                            ),
                            child: CircleAvatar(
                              backgroundColor: data.isSelected
                                  ? Colors.indigoAccent[100]?.withOpacity(0.6)
                                  : Colors.transparent,
                              radius: 45,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            data.title ?? 'title',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: data.isSelected
                                  ? Colors.indigoAccent[100]
                                  : Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: const [
                Expanded(
                  child: BrHomeViewMoreButton(title: "Next"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
