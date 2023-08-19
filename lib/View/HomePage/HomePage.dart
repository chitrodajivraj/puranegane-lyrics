import 'package:awesome_drawer_bar/awesome_drawer_bar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:puranegane_lyrics_app/Config/Utils/colors.dart';
import 'package:puranegane_lyrics_app/Config/Utils/images.dart';
import 'package:puranegane_lyrics_app/Config/Utils/strings.dart';
import 'package:puranegane_lyrics_app/Config/Utils/styles.dart';
import 'package:puranegane_lyrics_app/Controller/HomePageController/HomePageController.dart';
import 'package:puranegane_lyrics_app/Model/HomeCategoryModel/HomeCategoryModel.dart';
import 'package:puranegane_lyrics_app/Widget/CustomAppBar.dart';
import 'package:puranegane_lyrics_app/Widget/CustomDrawer/CustomDrawer.dart';
import 'package:puranegane_lyrics_app/Widget/CustomTextField.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomePageController cnt_home = Get.put(HomePageController());
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  void _openDrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      drawer: CustomDrawer(),
      body: SafeArea(
        child: Stack(
          children: [

            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(left: 20.0,right: 20,top: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      appbarTitle,
                      style: TextStyle(
                        fontSize: 24,
                        color: black,
                        fontFamily: fontafamily,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SearchTextField(
                        controller: cnt_home.txtSearch,
                      hintText: "Search"
                    ),
                    SizedBox(height: 20),
                    HomeScreenCategoryData(),
                  ],
                ),
              ),
            ),

            NewCustomAppBar(
                iconLeft: SvgPicture.asset(notification_svg,color: black,height: 24,width: 24),
                isIconLeft: true,
                iconRight2: InkWell(
                    onTap: () {
                      // AwesomeDrawerBar(
                      //   // controller: AwesomeDrawerBarController,
                      //   menuScreen: MENU_SCREEN,
                      //   mainScreen: MAIN_SCREEN,
                      //   borderRadius: 24.0,
                      //   showShadow: true,
                      //   angle: 0.0,
                      //   backgroundColor: Colors.grey,
                      //   slideWidth: MediaQuery.of(context).size.width*(AwesomeDrawerBar.isRTL? .45: 0.65),
                      // );
                    },
                    child: SvgPicture.asset(menu_svg,color: black,height: 24,width: 24)),
                isIconRight2: true,
                title: "",
                textColor: black
            ),
            // CustomAppBar(
            //   isbackArrow: true,
            //   backIcon: SvgPicture.asset(menu_svg,color: black,height: 24,width: 24),
            //   width: Get.width,
            //   height: 60,
            //   // text: 'Home Screen',
            //   // textColor: black,
            //   appBarColor: white,
            // ),
          ],
        ),
      ),
    );
  }
  Widget HomeScreenCategoryData(){
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: cnt_home.homeCategoryList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 10,
        childAspectRatio: 0.6,
      ),
      itemBuilder: (contxt, indx){
        return _homecategoryList(indx);
      },
    );
  }
  Widget _homecategoryList(int index){
    HomeCategoryModel obj_homecat = cnt_home.homeCategoryList[index];
    return Container(
      height: 150,
      width: 200,
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Container(height: 200,color: Colors.red,),
          // CachedNetworkImage(
          //     imageUrl: obj_homecat.image??"",
          //   fit: BoxFit.fitHeight,
          //   errorWidget: (context, url, error) => Image.asset(obj_homecat.image??""),
          // )
          SizedBox(height: 4),
          SizedBox(
            width: 150,
            child: Text(
              obj_homecat.artiestName??"",
              maxLines: 2,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: black,
                fontSize: 16,
                fontFamily: fontafamily,
                fontWeight: FontWeight.w700
              ),
            ),
          ),
          Text(
            obj_homecat.totalSongs??"",
            style: TextStyle(
                color: stroke,
                fontSize: 14,
                fontFamily: fontafamily,
                fontWeight: FontWeight.w500
            ),
          )
        ],
      ),
    );
  }
}
// 104948