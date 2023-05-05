import 'package:flutter/material.dart';

import '../const.dart';
import '../widget/reusable_text.dart';
import 'friends_screen.dart';

class DdClub extends StatefulWidget {
  const DdClub({Key? key}) : super(key: key);

  @override
  State<DdClub> createState() => _DdClubState();
}

class _DdClubState extends State<DdClub> {
  final List<String> clubList = [
    "Grocery Item List",
    "Personal Care List",
    "Baby Zone",
    "Electronic Lab",
    "Grocery Item List",
    "Personal Care List",
    "Baby Zone",
  ];
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
            title: "DD Club",
            size: 15,
            weight: FontWeight.w600,
            color: blackColor,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: buttonColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SizedBox(),
                    ReusableText(
                      title: "Start a Group",
                      weight: FontWeight.w500,
                      size: 16,
                      color: whiteColor,
                    ),
                    Icon(Icons.add_box_outlined,color: whiteColor,)
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_){
                        return const Friends();
                      },),);
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.height * 0.08,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: lightGreyColor),
                      ),
                      child: const ReusableText(
                        title: "Join a Group",
                        size: 16,weight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.45,
                    height: MediaQuery.of(context).size.height * 0.08,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: lightGreyColor),
                    ),
                    child: const ReusableText(
                      title: "Search Items",
                      size: 16,weight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              const ReusableText(
                title: "Club List",
                size: 16,weight: FontWeight.w600,
              ),
              const SizedBox(height: 10,),
              Expanded(child: ListView.builder(
                itemCount: clubList.length,
                itemBuilder: (_,index){
                return  ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: borderColor,
                      borderRadius: BorderRadius.circular(10),

                    ),
                    child: Image.asset("assets/icons/Group 78.png"),
                  ),
                  title: ReusableText(
                    title: clubList[index],weight: FontWeight.w500,
                  ),
                );
              },),),
            ],
          ),
        ),
      ),
    );
  }
}
