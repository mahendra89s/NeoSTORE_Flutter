import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neostore_app/screens/home/presentation/common_model/product_categories.dart';
import 'package:neostore_app/shared_preferences/user_shared_preference.dart';
import 'package:neostore_app/utils/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController(
    initialPage: 0,
  );
  late final List<ProductCategories> categoryList;
  @override
  void initState() {
    categoryList = UserPreference.getProductCategories() ?? [];
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  int activePageIndex = 0;
  final List<Widget> pages = [
    Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/slider_img1.jpeg"),
              fit: BoxFit.cover)),
    ),
    Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/slider_img2.jpeg"),
              fit: BoxFit.cover)),
    ),
    Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/slider_img3.jpeg"),
              fit: BoxFit.cover)),
    ),
    Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/slider_img4.jpeg"),
              fit: BoxFit.cover)),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(children: [
          SizedBox(
            width: double.infinity,
            height: 686.h,
            child: PageView.builder(
              controller: _controller,
              itemCount: pages.length,
              itemBuilder: (context, index) => pages[index],
              onPageChanged: (value) {
                setState(() {
                  activePageIndex = value;
                });
              },
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: 100.h,
            child: SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(
                    pages.length,
                    (index) => Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.h,
                          ),
                          child: InkWell(
                            onTap: () {
                              _controller.animateToPage(index,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeIn);
                            },
                            child: CircleAvatar(
                              radius: 8,
                              backgroundColor: activePageIndex == index
                                  ? AppColors.DarkGrey
                                  : AppColors.BgRedColor,
                            ),
                          ),
                        )),
              ),
            ),
          )
        ]),
        SizedBox(height: 45.h),
        Expanded(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 35.h),
          child: GridView.builder(
              itemCount: categoryList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      MediaQuery.of(context).orientation == Orientation.portrait
                          ? 2
                          : 3,
                  crossAxisSpacing: 35.h,
                  mainAxisSpacing: 35.h),
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(categoryList[index]
                                      .iconImage ??
                                  'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png'),
                              fit: BoxFit.cover)),
                    ));
              }),
        ))
      ],
    );
  }
}
