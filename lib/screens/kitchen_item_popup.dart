import 'package:d/widget/reusable_text.dart';
import 'package:flutter/material.dart';

import '../const.dart';

class KitchenItemPopup extends StatelessWidget {
  const KitchenItemPopup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.48,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                const SizedBox(),
                const ReusableText(
                  title: "Indian Tomato",
                  size: 16,
                  weight: FontWeight.w500,
                ),
                InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.close)),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 100,
              child: Image.asset(
                "assets/images/pngwing 1.png",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: lightColor),
              child: const ReusableText(
                title:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Auctor tristique proin semper lorem enim. Id cursus orci risus massa eget. Tincidunt ",
                color: lightGreyColor,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: borderColor),
                    ),
                    height: 50,
                    child: Row(
                      children: const [
                        SizedBox(
                          width: 15,
                        ),
                        ReusableText(
                          title: "unit",
                          color: lightGreyColor,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        SizedBox(
                          height: 40,
                          child: VerticalDivider(
                            color: lightGreyColor,
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 10),
                              hintText: "Qty",
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: lightColor,
                  ),
                  child: const Icon(
                    Icons.shopping_cart_outlined,
                    color: buttonColor,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
