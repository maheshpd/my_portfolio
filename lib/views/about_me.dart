import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/global/app_assets.dart';
import 'package:my_portfolio/global/app_color.dart';
import 'package:my_portfolio/global/app_text_style.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      color: AppColor.bgColor2,
      child: Row(
        children: [
          Image.asset(
            AppAssets.profile2,
            height: 450,
            width: 400,
          ),
          Column(
            children: [
              FadeInRight(
                  duration: const Duration(milliseconds: 1400),
                  child: Text(
                    'About Me',
                    style: AppTextStyle.headingStyles(),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
