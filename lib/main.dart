import 'package:flutter/material.dart';
import 'app_styles.dart';
import 'size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kLighterWhite,
        body: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List<String> hashtags = [
    '#Health',
    '#Fitness',
    '#Wellness',
    '#Nutrition',
    '#Mindset',
    '#Yoga',
    '#Exercise',
    '#Meditation',
    '#SelfCare',
    '#Happiness'
  ];
  final List<String> articleImg = [
    'assets/article_img.png',
    'assets/article_img1.png',
    'assets/article_img2.png',
    'assets/article_img3.png',
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        children: [
          Row(
            children: [
              Container(
                height: 51,
                width: 51,
                decoration: BoxDecoration(
                  color: kLightBlue,
                  borderRadius: BorderRadius.circular(kBorderRadius),
                  image: const DecorationImage(
                    // image: NetworkImage(
                    // 'https://cdn3d.iconscout.com/3d/premium/thumb/man-avatar-3d-icon-download-in-png-blend-fbx-gltf-file-formats--men-people-male-pack-avatars-icons-5187871.png?f=webp')
                    image: AssetImage('assets/avatar.png'),
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome Back!',
                    style: kPoppinsBold.copyWith(
                        fontSize: SizeConfig.blockSizeHorizontal! * 4),
                  ),
                  Text(
                    'Sunday, 15 December',
                    style: kPoppinsRegular.copyWith(
                        color: kGrey,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kBorderRadius),
              color: kWhite,
              boxShadow: [
                BoxShadow(
                  color: kDarkBlue.withOpacity(0.051),
                  offset: Offset(0.0, 3.0),
                  blurRadius: 24.0,
                  spreadRadius: 0.0,
                )
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    style: kPoppinsRegular.copyWith(
                        color: kBlue,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3),
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 13),
                      hintText: 'Search for articles',
                      border: kBorder,
                      errorBorder: kBorder,
                      disabledBorder: kBorder,
                      focusedBorder: kBorder,
                      focusedErrorBorder: kBorder,
                      hintStyle: kPoppinsRegular.copyWith(
                          color: kLightGrey,
                          fontSize: SizeConfig.blockSizeHorizontal! * 3),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: kBlue,
                    borderRadius: BorderRadius.circular(kBorderRadius),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/search_icon.png'),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 16,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: hashtags.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 38),
                  child: Text(
                    hashtags[index],
                    style: kPoppinsMedium.copyWith(
                      color: kGrey,
                      fontSize: SizeConfig.blockSizeHorizontal! * 3,
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 304,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: articleImg.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(12),
                  margin: EdgeInsets.only(right: 20),
                  height: 304,
                  width: 255,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kBorderRadius),
                    color: kWhite,
                    boxShadow: [
                      BoxShadow(
                        color: kDarkBlue.withOpacity(0.051),
                        offset: Offset(0.0, 3.0),
                        blurRadius: 24.0,
                        spreadRadius: 0.0,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 184,
                        // height: 164,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kBorderRadius),
                          color: kWhite,
                          image: DecorationImage(
                              image: AssetImage(articleImg[index]),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Flexible(
                        child: Text(
                          'Feel the thrill on the only surf simulator in Lakshadweep 2025.',
                          style: kPoppinsBold.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 19,
                                backgroundColor: kLightBlue,
                                backgroundImage: AssetImage(
                                  'assets/avatar1.png',
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Sang Dong-Min',
                                    style: kPoppinsSemibold.copyWith(
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! * 3,
                                    ),
                                  ),
                                  Text(
                                    'Dec 15,2025',
                                    style: kPoppinsRegular.copyWith(
                                        color: kGrey,
                                        fontSize:
                                            SizeConfig.blockSizeHorizontal! *
                                                2.5),
                                  )
                                ],
                              )
                            ],
                          ),
                          Container(
                            height: 38,
                            width: 38,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(kBorderRadius),
                              color: kLightWhite,
                            ),
                            child: Image.asset('assets/share.png'),
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
