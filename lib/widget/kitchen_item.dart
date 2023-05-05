import 'package:d/widget/reusable_text.dart';
import 'package:flutter/material.dart';

import '../const.dart';
import '../screens/kitchen_item_popup.dart';

class KitchenItem extends StatelessWidget {
  const KitchenItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: borderColor),
      ),
      child: Row(
        children: [
          Image.asset("assets/images/pngwing 1.png"),
          const SizedBox(width: 20,),
          Expanded(
            child: Column(
              children: [
                Row(
                  children:  [
                    const ReusableText(title: "Indian Tomato",weight: FontWeight.w500,),
                    const  Spacer(),
                    InkWell(
                      onTap: (){
                        showDialog(context: context, builder: (_){
                          return const KitchenItemPopup();});
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: lightColor,
                        ),
                        child: Icon(Icons.shopping_cart_outlined,color: buttonColor,),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 5,),
                Row(
                  children:  [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      decoration: BoxDecoration(
                        color: skyColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const ReusableText(
                        title: "Left 2kg",
                        size: 12,
                        weight: FontWeight.w400,
                      ),),
                    const Spacer(flex: 2,),
                    const Icon(Icons.remove,),
                    const Spacer(),
                    const Icon(Icons.add,),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}