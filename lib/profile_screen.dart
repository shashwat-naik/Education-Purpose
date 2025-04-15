import 'package:education_purpose/app_styles.dart';
import 'package:education_purpose/size_config.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    final List<String> postImg = [
      'assets/post1.png',
      'assets/post2.png',
    ];
    final List<String> PopArticle = [
      'assets/article_img.png',
      'assets/article_img1.png',
      'assets/article_img2.png',
      'assets/article_img3.png',
    ];

    return Scaffold(
      backgroundColor: kLighterWhite,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ), // Used for creating space from top margin of phone (Personal Touch)
              Row(
                children: [
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(kBorderRadius),
                      child: Image.asset(
                        'assets/profile_img.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: SizeConfig.blockSizeHorizontal! * 3,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              // 'Shashwat Naik',
                              'Naik ',
                              style: kPoppinsBold.copyWith(
                                color: kDarkBlue,
                                fontSize: SizeConfig.blockSizeHorizontal! * 4,
                              ),
                            ),
                            Text(
                              'Author & Writer',
                              style: kPoppinsRegular.copyWith(
                                color: kDarkBlue,
                                fontSize: SizeConfig.blockSizeHorizontal! * 3,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          constraints: BoxConstraints(
                            maxHeight: 42,
                            maxWidth: SizeConfig.blockSizeHorizontal! * 30,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(kBorderRadius),
                            color: kBlue,
                          ),
                          child: Center(
                            child: Text(
                              'Following',
                              style: kPoppinsMedium.copyWith(
                                color: kWhite,
                                fontSize: SizeConfig.blockSizeHorizontal! * 3,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 2.5,
              ),
              Text(
                'Discover the world through the words of a seasoned travel news writer. Stay updated with the latest destinations, travel trends, and insider tips.',
                style: kPoppinsMedium.copyWith(
                  color: kGrey,
                  fontSize: SizeConfig.blockSizeHorizontal! * 3,
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 2.5,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.blockSizeHorizontal! * 2.5,
                  vertical: SizeConfig.blockSizeVertical! * 3,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    kBorderRadius,
                  ),
                  color: kDarkBlue,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            '54.21k',
                            style: kPoppinsBold.copyWith(
                              color: kWhite,
                              fontSize: SizeConfig.blockSizeHorizontal! * 4,
                            ),
                          ),
                          Text(
                            'Followers',
                            style: kPoppinsMedium.copyWith(
                              color: kWhite,
                              fontSize: SizeConfig.blockSizeHorizontal! * 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 1,
                      height: SizeConfig.blockSizeVertical! * 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: kLighterBlue,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            '2.11k',
                            style: kPoppinsBold.copyWith(
                              color: kWhite,
                              fontSize: SizeConfig.blockSizeHorizontal! * 4,
                            ),
                          ),
                          Text(
                            'Posts',
                            style: kPoppinsMedium.copyWith(
                              color: kWhite,
                              fontSize: SizeConfig.blockSizeHorizontal! * 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 1,
                      height: SizeConfig.blockSizeVertical! * 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: kLighterBlue,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            '3.6k',
                            style: kPoppinsBold.copyWith(
                              color: kWhite,
                              fontSize: SizeConfig.blockSizeHorizontal! * 4,
                            ),
                          ),
                          Text(
                            'Following',
                            style: kPoppinsMedium.copyWith(
                              color: kWhite,
                              fontSize: SizeConfig.blockSizeHorizontal! * 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 2.5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Naik\'s Post',
                    style: kPoppinsBold.copyWith(
                        color: kDarkBlue,
                        fontSize: SizeConfig.blockSizeHorizontal! * 4),
                  ),
                  Text(
                    'View All',
                    style: kPoppinsMedium.copyWith(
                        color: kBlue,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3),
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 1,
              ),
              SizedBox(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 95,
                      margin: EdgeInsets.only(
                        bottom: SizeConfig.blockSizeVertical! * 0.5,
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 85,
                            width: 85,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: kWhite,
                              borderRadius:
                                  BorderRadius.circular(kBorderRadius),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 24,
                                  spreadRadius: 0,
                                  offset: const Offset(0, 3),
                                  color: kDarkBlue.withOpacity(0.051),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(kBorderRadius),
                              child: Image.asset(
                                postImg[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: SizeConfig.blockSizeVertical! * 2.5,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'News: Travel',
                                  style: kPoppinsRegular.copyWith(
                                    color: kGrey,
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal! * 3,
                                  ),
                                ),
                                Text(
                                  'Top places to visit.',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: kPoppinsSemibold.copyWith(
                                    color: kDarkBlue,
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal! * 3.5,
                                  ),
                                ),
                                SizedBox(
                                  height: SizeConfig.blockSizeVertical! * 1,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset('assets/calender.png'),
                                        SizedBox(
                                          width:
                                              SizeConfig.blockSizeHorizontal! *
                                                  1.8,
                                        ),
                                        Text(
                                          '10th Nov',
                                          style: kPoppinsRegular.copyWith(
                                            color: kGrey,
                                            fontSize: SizeConfig
                                                    .blockSizeHorizontal! *
                                                2.8,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset('assets/time.png'),
                                        SizedBox(
                                          width:
                                              SizeConfig.blockSizeHorizontal! *
                                                  1.8,
                                        ),
                                        Text(
                                          '09:30 pm',
                                          style: kPoppinsRegular.copyWith(
                                            color: kGrey,
                                            fontSize: SizeConfig
                                                    .blockSizeHorizontal! *
                                                2.8,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 2.5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular from Naik',
                    style: kPoppinsBold.copyWith(
                        color: kDarkBlue,
                        fontSize: SizeConfig.blockSizeHorizontal! * 4),
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 2.5,
              ),
              SizedBox(
                height: 143,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 143,
                      width: 248,
                      margin: EdgeInsets.only(
                        right: SizeConfig.blockSizeHorizontal! * 2.5,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(kBorderRadius),
                        child: Image.asset(
                          PopArticle[index % PopArticle.length],
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
