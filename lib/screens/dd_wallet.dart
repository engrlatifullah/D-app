import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../const.dart';
import '../widget/reusable_text.dart';

class DdWallet extends StatefulWidget {
  const DdWallet({Key? key}) : super(key: key);

  @override
  State<DdWallet> createState() => _DdWalletState();
}

class _DdWalletState extends State<DdWallet> {
  bool credit = true;
  bool transfer = false;

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
            title: "DD Wallet",
            size: 15,
            weight: FontWeight.w600,
            color: blackColor,
          ),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.12,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: lightBlueColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: [
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Image.asset("assets/images/Mask group (1).png")),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        ReusableText(
                          title: "Available balance",
                          weight: FontWeight.w400,
                          color: whiteColor,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ReusableText(
                          title: "QAR 300",
                          weight: FontWeight.w500,
                          size: 17,
                          color: whiteColor,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: DottedBorder(
                radius: const Radius.circular(10),
                borderType: BorderType.RRect,
                color: lightGreyColor,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: SizedBox(
                  height: 50,
                  child: Row(
                    children: [
                      const ReusableText(
                        title: "Redeem Amount",
                        size: 16,
                        weight: FontWeight.w400,
                      ),
                      const Spacer(),
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: buttonColor),
                        child: const ReusableText(
                          title: "Redeem",
                          size: 16,
                          weight: FontWeight.w500,
                          color: whiteColor,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: skyColor,
                borderRadius: BorderRadius.circular(10),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.info_outline, color: lightGreyColor),
                  SizedBox(
                    width: 10,
                  ),
                  ReusableText(
                    title: "Insufficient Transferable balance",
                    weight: FontWeight.w400,
                    color: lightGreyColor,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                    onTap: () {
                      setState(() {
                        credit = true;
                        transfer = false;
                      });
                    },
                    child: ReusableText(
                      title: "Credits",
                      weight: FontWeight.w500,
                      color: credit ? blackColor : lightGreyColor,
                      size: 16,
                    )),
                InkWell(
                    onTap: () {
                      setState(() {
                        credit = false;
                        transfer = true;
                      });
                    },
                    child: ReusableText(
                      title: "Transfer",
                      weight: FontWeight.w500,
                      color: transfer ? blackColor : lightGreyColor,
                      size: 16,
                    )),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Container(
                  height: 3,
                  color: borderColor,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 4,
                        color: credit ? buttonColor : transparentColor,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 4,
                        color: transfer ? buttonColor : transparentColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  itemBuilder: (_, index) {
                    return Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  ReusableText(
                                    title: "Purchased Item",
                                    weight: FontWeight.w500,
                                  ),
                                  Spacer(),
                                  ReusableText(
                                    title: "QAR 44.00",
                                    weight: FontWeight.w500,
                                    color: lightRedColor,
                                  ),
                                  SizedBox(width: 10,),
                                  Icon(Icons.keyboard_arrow_down_outlined,color: lightGreyColor,)
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    );
                  },
                  separatorBuilder: (_, index) {
                    return const Divider(height: 30,);
                  },
                  itemCount: 4),
            ),
          ],
        ),
      ),
    );
  }
}
