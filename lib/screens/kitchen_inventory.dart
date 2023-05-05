import 'package:flutter/material.dart';

import '../const.dart';
import '../widget/kitchen_item.dart';
import '../widget/reusable_text.dart';

class KitchenInventory extends StatelessWidget {
  const KitchenInventory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: lightColor,
          elevation: 0,
          iconTheme: const IconThemeData(color: blackColor),
          centerTitle: true,
          title: const ReusableText(
            title: "Kitchen Inventory",
            size: 15,
            weight: FontWeight.w600,
            color: blackColor,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return const KitchenItem();
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      height: 20,
                    );
                  },
                  itemCount: 8,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
