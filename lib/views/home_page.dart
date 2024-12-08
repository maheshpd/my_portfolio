import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/global/app_assets.dart';
import 'package:my_portfolio/global/app_color.dart';
import 'package:my_portfolio/global/app_text_style.dart';
import 'package:my_portfolio/global/contants.dart';
import 'package:my_portfolio/views/about_me.dart';
import 'package:my_portfolio/widgets/profile_animation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      appBar: AppBar(
        backgroundColor: AppColor.bgColor,
        toolbarHeight: 90,
        titleSpacing: 100,
        elevation: 0,
        title: Row(
          children: [
            const Text('Portfolio'),
            const Spacer(),
            Text(
              'Home',
              style: AppTextStyle.headerTextStyle(),
            ),
            const SizedBox(
              width: 30,
            ),
            Text('About', style: AppTextStyle.headerTextStyle()),
            const SizedBox(
              width: 30,
            ),
            Text('Service', style: AppTextStyle.headerTextStyle()),
            const SizedBox(
              width: 30,
            ),
            Text('Portfolio', style: AppTextStyle.headerTextStyle()),
            const SizedBox(
              width: 30,
            ),
            Text('Contact', style: AppTextStyle.headerTextStyle()),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
            top: size.height * 0.05,
            // left: size.width * 0.1,
            // right: size.width * 0.1,
            ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeInDown(
                      duration: const Duration(milliseconds: 1200),
                      child: Text(
                        'Hello, It\'s Me.',
                        style:
                            AppTextStyle.monteseratStyle(color: Colors.white),
                      ),
                    ),
                    Contants.sizedBox(height: 15),
                    FadeInRight(
                      duration: const Duration(milliseconds: 1400),
                      child: Text(
                        'Mahesh Prasad',
                        style: AppTextStyle.headingStyles(),
                      ),
                    ),
                    Contants.sizedBox(height: 15),
                    FadeInLeft(
                      duration: const Duration(milliseconds: 1400),
                      child: Row(
                        children: [
                          Text(
                            'And I\'m a ',
                            style: AppTextStyle.monteseratStyle(
                                color: Colors.white),
                          ),
                          AnimatedTextKit(
                            animatedTexts: [
                              TyperAnimatedText("Android Native Developer",
                                  textStyle: AppTextStyle.monteseratStyle(
                                      color: Colors.lightBlue)),
                              TyperAnimatedText("Swift & SwiftUI Developer",
                                  textStyle: AppTextStyle.monteseratStyle(
                                      color: Colors.lightBlue)),
                              TyperAnimatedText("Flutter Developer",
                                  textStyle: AppTextStyle.monteseratStyle(
                                      color: Colors.lightBlue)),
                              TyperAnimatedText("Freelancer",
                                  textStyle: AppTextStyle.monteseratStyle(
                                      color: Colors.lightBlue)),
                            ],
                            repeatForever: true,
                            pause: const Duration(milliseconds: 1000),
                            displayFullTextOnTap: true,
                            stopPauseOnTap: true,
                          )
                        ],
                      ),
                    ),
                    Contants.sizedBox(height: 15),
                    FadeInDown(
                      duration: const Duration(milliseconds: 1600),
                      child: SizedBox(
                        width: size.width * 0.5,
                        child: Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book',
                          style: AppTextStyle.normalStyle(),
                        ),
                      ),
                    ),
                    Contants.sizedBox(height: 22),
                    FadeInUp(
                      duration: const Duration(milliseconds: 1600),
                      child: Row(
                        children: [
                          buildSocialButton(asset: AppAssets.facebook),
                          Contants.sizedBox(width: 12),
                          buildSocialButton(asset: AppAssets.twitter),
                          Contants.sizedBox(width: 12),
                          buildSocialButton(asset: AppAssets.linkedIn),
                          Contants.sizedBox(width: 12),
                          buildSocialButton(asset: AppAssets.insta),
                          Contants.sizedBox(width: 12),
                          buildSocialButton(asset: AppAssets.github)
                        ],
                      ),
                    ),
                    Contants.sizedBox(height: 22),
                    FadeInUp(
                      duration: const Duration(milliseconds: 1800),
                      child: buildMaterialButton(onTap: () {}))
                  ],
                ),
                  
                const ProfileAnimation()
              ],
            ),
            const SizedBox(height: 220,),
            const AboutMe(),
          ],
        ),
      ),
    );
  }

  MaterialButton buildMaterialButton({required VoidCallback onTap}) {
    return MaterialButton(
        color: AppColor.themeColor,
        splashColor: AppColor.lawGreen,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none),
        hoverColor: AppColor.aqua,
        elevation: 6,
        height: 46,
        minWidth: 130,
        focusElevation: 12,
        onPressed: onTap,
        child: Text('Download CV', style: AppTextStyle.headerTextStyle()));
  }

  Ink buildSocialButton({required String asset}) {
    return Ink(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
          border: Border.all(color: AppColor.themeColor, width: 2.0),
          color: AppColor.bgColor,
          shape: BoxShape.circle),
      padding: const EdgeInsets.all(6),
      child: InkWell(
        radius: 50,
        borderRadius: BorderRadius.circular(500),
        splashColor: AppColor.lawGreen,
        hoverColor: AppColor.aqua,
        onTap: () {},
        child: Image.asset(
          asset,
          width: 20,
          height: 18,
          color: AppColor.themeColor,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
