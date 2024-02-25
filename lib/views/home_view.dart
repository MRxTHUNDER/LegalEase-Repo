import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_navigation/src/routes/get_transition_mixin.dart';
import 'package:legalease/consts/colors.dart';
import 'package:legalease/consts/consts.dart';
import 'package:legalease/consts/images.dart';
import 'package:legalease/consts/list.dart';
import 'package:legalease/res/components/custom_textfield.dart';
import 'package:legalease/views/laywer_dec.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.blueColor,
        elevation: 0.0,
        title: AppStyles.bold(
            title: "${Appstrings.welcome} User",
            color: AppColors.whitecolor,
            size: AppSizes.size20),
      ),
      body: Column(
        children: [
          Container(
            color: AppColors.blueColor,
            padding: EdgeInsets.all(10),
            height: 100,
            child: CustomTextField(
              hint: Appstrings.search,
              borderColor: AppColors.whitecolor,
              textColor: AppColors.whitecolor,
            ),
          ),
          20.heightBox,
          Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 210,
                    child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: 9,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {},
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(12)),
                                padding: const EdgeInsets.all(15),
                                margin: const EdgeInsets.only(right: 8),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      iconList[index],
                                      width: 125,
                                      color: AppColors.whitecolor,
                                    ),
                                    5.heightBox,
                                    AppStyles.normal(
                                        title: iconsTitleList[index],
                                        color: AppColors.whitecolor)
                                  ],
                                )),
                          );
                        }),
                  ),
                  10.heightBox,
                  Align(alignment: Alignment.topLeft, child: AppStyles.normal(title:" Laywer's ", color: AppColors.blueColor, size: AppSizes.size22, ),),
                  10.heightBox,

                  SizedBox(
                    height: 230, 
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                        itemCount: 12,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(

                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 239, 236, 236),
                              borderRadius: BorderRadius.circular(15)
                            ),
                            margin: const EdgeInsets.only(right: 12),
                            // color: Colors.blue,
                            height: 100,
                            width: 200,
                            child: Column(
                              children:  [
                                
                                Container(
                                  width: 200,
                                  alignment: Alignment.center,
                                  color: AppColors.blueColor,
                                  
                                  child: Image.asset(AppAssets.imglaw1,
                                width: 150,
                                fit: BoxFit.cover,),
                                ),
                                

                                5.heightBox,
                                GestureDetector(
                                  onTap: () {
                                    Get.to(() => DetailsView());
                                  }, 
                                  child: AppStyles.normal(title: "Laywer Name"),
                                ),
                                

                                5.heightBox,
                                AppStyles.normal(title: "Speciality"),
                              
                              ],
                              
                            ),
                          );
                        }),
                  ),
                  Align(alignment: Alignment.centerRight, child: AppStyles.normal(title:" View all ", color: AppColors.blueColor),)
                ],
              ))
        ],
      ),
    );
  }
}
