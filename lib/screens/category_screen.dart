import 'package:d/const.dart';
import 'package:d/widget/reusable_text.dart';
import 'package:d/widget/search_card.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final List<String> heading = [
    "Fresh Food",
    "Fruits &\nVegetables",
    "Food\nCupboard",
    "Beverages",
    "Cleaning&\nHousehold",
    "Bakery",
    "Fruits &\nVegetables",
    "Food\nCupboard",
    "Beverages",
    "Cleaning &\nHousehold"
  ];
  final List<String> items = [
    "Butter &\nMargaeine",
    "Milk & Laban",
    "Milk & Laban",
    "Butter &\nMargaeine",
    "Milk & Laban",
    "Milk & Laban",
  ];
  final List<String> itemsImage = [
    "assets/images/butter.png",
    "assets/images/m1.png",
    "assets/images/m2.png",
    "assets/images/butter.png",
    "assets/images/m1.png",
    "assets/images/m2.png",
  ];
  int _currentIndex = 0;
  bool dairy = false;
  bool fish = false;
  bool dairy1 = false;
  bool fish1 = false;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SearchCard(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      color: lightColor,
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemCount: heading.length,
                        itemBuilder: (_, index) {
                          return InkWell(
                            onTap: (){
                              setState(() {
                                _currentIndex = index;
                              });
                            },
                            child: Container(
                              height: 70,
                              alignment: Alignment.center,
                              color: _currentIndex == index ? buttonColor : lightColor,
                              child: ReusableText(
                                title: heading[index],
                                weight: FontWeight.w400,
                                color: _currentIndex == index ? whiteColor : blackColor,
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return const Divider(height: 0,thickness: 1,);
                        },
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: (){
                                setState(() {
                                  dairy = !dairy;
                                });
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:  [
                                  ReusableText(
                                    title: "Dairy & Eggs",weight: FontWeight.w500,color: dairy ? buttonColor : blackColor,
                                  ),
                                  const Icon(Icons.keyboard_arrow_down_outlined,color: greyColor,)
                                ],
                              ),
                            ),
                            const SizedBox(height: 20,),
                            Visibility(
                              visible: dairy,
                              child: Items(items: items, itemsImage: itemsImage,showMessage: "Show All Dairy & Eggs Product",),
                            ),
                            const Divider(),
                            const SizedBox(height: 10,),
                            InkWell(
                              onTap: (){
                                setState(() {
                                  fish = !fish;
                                });
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:  [
                                  ReusableText(
                                    title: "Fish & Seafood",weight: FontWeight.w500,color: fish ? buttonColor : blackColor,
                                  ),
                                  const Icon(Icons.keyboard_arrow_down_outlined,color: greyColor,)
                                ],
                              ),
                            ),
                            const SizedBox(height: 20,),
                            Visibility(
                              visible: fish,
                              child: Items(items: items, itemsImage: itemsImage,showMessage: "Show All Fish & Seafood Product",),
                            ),
                            const Divider(),
                            const SizedBox(height: 10,),
                            InkWell(
                              onTap: (){
                                setState(() {
                                  dairy1 = !dairy1;
                                });
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:  [
                                  ReusableText(
                                    title: "Dairy & Eggs",weight: FontWeight.w500,color: dairy1 ? buttonColor : blackColor,
                                  ),
                                  const Icon(Icons.keyboard_arrow_down_outlined,color: greyColor,)
                                ],
                              ),
                            ),
                            const SizedBox(height: 20,),
                            Visibility(
                              visible: dairy1,
                              child: Items(items: items, itemsImage: itemsImage,showMessage: "Show All Dairy & Eggs Product",),
                            ),
                            const Divider(),
                            const SizedBox(height: 10,),
                            InkWell(
                              onTap: (){
                                setState(() {
                                  fish1 = !fish1;
                                });
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:  [
                                  ReusableText(
                                    title: "Fish & Seafood",weight: FontWeight.w500,color: fish1 ? buttonColor : blackColor,
                                  ),
                                  const Icon(Icons.keyboard_arrow_down_outlined,color: greyColor,)
                                ],
                              ),
                            ),
                            const SizedBox(height: 20,),
                            Visibility(
                              visible: fish1,
                              child: Items(items: items, itemsImage: itemsImage,showMessage: "Show All Fish & Seafood Product",),
                            ),
                            const Divider(),
                          ],
                        ),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Items extends StatelessWidget {
  const Items({
    super.key,
    required this.items,
    required this.itemsImage, required this.showMessage,
  });

  final List<String> items;
  final List<String> itemsImage;
  final String showMessage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView.builder(
            shrinkWrap: true,
            itemCount: items.length,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 0.5
            ),
            itemBuilder: (_,index){
              return Column(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration:  BoxDecoration(
                      shape: BoxShape.circle,
                      color: lightColor,
                      image: DecorationImage(image: AssetImage(itemsImage[index],),),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  ReusableText(title: items[index],weight: FontWeight.w500,textAlign: TextAlign.center,)
                ],
              );
            }),
        const SizedBox(height: 20,),
         ReusableText(title: showMessage,weight: FontWeight.w400,color: buttonColor,),
        const SizedBox(height: 10,)
      ],
    );
  }
}
