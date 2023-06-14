import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor = const Color(0xffE91C1A);
  final String title;
  final AppBar appBar;
  final List<Widget> widgets;
  final bool? isMenu;
  final Function? menuIconClicked;
  const MyAppBar(
      {Key? key,
      required this.widgets,
      required this.title,
      required this.appBar,
      @Default(false) this.isMenu,
      this.menuIconClicked})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: isMenu == true
          ? IconButton(
              onPressed: () {
                menuIconClicked;
              },
              icon: const Icon(Icons.menu_outlined))
          : IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
      title: Text(
        title,
        style: TextStyle(
            fontSize: 60.sp, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      backgroundColor: backgroundColor,
      actions: widgets,
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}

/* Widget customAppBar(
    {required String title,
    @Default(Icons.search_outlined) IconData? trailingIcon,
    @Default(true) bool? showTrailingIcon,
    required Function() leadingIconCallback,
    required Function() trailingIconCallback}) {
  return AppBar(
    width: double.infinity,
    child: Row(
      children: [
        IconButton(
            onPressed: () {
              leadingIconCallback.call();
            },
            icon: const Icon(Icons.arrow_back_ios)),
        Expanded(
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 60.sp),
            ),
          ),
        ),
        if (showTrailingIcon == true)
          IconButton(
              onPressed: () {
                trailingIconCallback.call();
              },
              icon: Icon(trailingIcon)),
      ],
    ),
  );
} */
