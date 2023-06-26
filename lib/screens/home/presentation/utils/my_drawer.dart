import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neostore_app/route/route_constants.dart';
import 'package:neostore_app/shared_preferences/user_shared_preference.dart';
import 'package:neostore_app/utils/app_colors.dart';
import 'package:neostore_app/utils/string_resources.dart';

import '../../../authentication/presentation/login_page/model/login_response_data.dart';
import '../common_model/drawer_model.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  LoginResponseData? userData;
  int? cartCount = 0;

  final List<DrawerModel> drawerList = [
    DrawerModel(
        title: Text(StringResources.myCart,
            style: TextStyle(
                color: AppColors.White,
                fontSize: 48.sp,
                fontWeight: FontWeight.bold)),
        leadingIcon: const Icon(
          Icons.shopping_cart_outlined,
          color: AppColors.White,
        ),
        showCartCount: true,
        cartCount: 0,
        route: RouteConstants.myCart),
    DrawerModel(
        title: Text(StringResources.tables,
            style: TextStyle(
                color: AppColors.White,
                fontSize: 48.sp,
                fontWeight: FontWeight.bold)),
        leadingIcon: const Icon(Icons.table_bar_sharp, color: AppColors.White),
        route: RouteConstants.productList),
    DrawerModel(
        title: Text(StringResources.sofas,
            style: TextStyle(
                color: AppColors.White,
                fontSize: 48.sp,
                fontWeight: FontWeight.bold)),
        leadingIcon: const Icon(Icons.chair, color: AppColors.White),
        route: RouteConstants.productList),
    DrawerModel(
        title: Text(StringResources.chairs,
            style: TextStyle(
                color: AppColors.White,
                fontSize: 48.sp,
                fontWeight: FontWeight.bold)),
        leadingIcon:
            const Icon(Icons.chair_alt_outlined, color: AppColors.White),
        route: RouteConstants.productList),
    DrawerModel(
        title: Text(StringResources.cupboards,
            style: TextStyle(
                color: AppColors.White,
                fontSize: 48.sp,
                fontWeight: FontWeight.bold)),
        leadingIcon: const Icon(Icons.table_chart, color: AppColors.White),
        route: RouteConstants.productList),
    DrawerModel(
        title: Text(StringResources.myAccount,
            style: TextStyle(
                color: AppColors.White,
                fontSize: 48.sp,
                fontWeight: FontWeight.bold)),
        leadingIcon: const Icon(Icons.person, color: AppColors.White),
        route: RouteConstants.myAccount),
    DrawerModel(
        title: Text(StringResources.storeLocator,
            style: TextStyle(
                color: AppColors.White,
                fontSize: 48.sp,
                fontWeight: FontWeight.bold)),
        leadingIcon: const Icon(Icons.location_on, color: AppColors.White),
        route: RouteConstants.storeLocator),
    DrawerModel(
        title: Text(StringResources.myOrders,
            style: TextStyle(
                color: AppColors.White,
                fontSize: 48.sp,
                fontWeight: FontWeight.bold)),
        leadingIcon: const Icon(Icons.list_alt, color: AppColors.White),
        route: RouteConstants.myOrder),
    DrawerModel(
        title: Text(StringResources.logout,
            style: TextStyle(
                color: AppColors.White,
                fontSize: 48.sp,
                fontWeight: FontWeight.bold)),
        leadingIcon: const Icon(Icons.logout, color: AppColors.White),
        route: RouteConstants.logout),
  ];
  @override
  void initState() {
    super.initState();
    userData = UserPreference.getUserData();
    cartCount = UserPreference.getNoOfCart();
    drawerList[0].cartCount = cartCount;
  }

  Widget buildProfile() {
    return Padding(
      padding: EdgeInsets.only(top: 107.h, bottom: 50.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
              radius: 46,
              backgroundImage: NetworkImage(userData?.profilePic ??
                  'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png')),
          SizedBox(
            height: 54.h,
          ),
          Text(
            userData?.username ?? "NA",
            style: TextStyle(
                color: AppColors.White,
                fontSize: 69.sp,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 40.h,
          ),
          Text(
            userData?.email ?? "NA",
            style: TextStyle(
                color: AppColors.White,
                fontSize: 39.sp,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget list() {
    return ListView.builder(
        itemCount: drawerList.length,
        itemBuilder: (context, index) {
          return itemListView(drawerList[index]);
        });
  }

  Widget itemListView(DrawerModel drawerModel) {
    return Container(
      decoration: const BoxDecoration(
          border:
              Border(top: BorderSide(color: AppColors.LightBlack, width: 1.0))),
      child: ListTile(
        leading: drawerModel.leadingIcon,
        title: drawerModel.title,
        trailing: drawerModel.showCartCount == true
            ? cartCountWidget(drawerModel.cartCount ?? 0)
            : null,
        onTap: () => onItemTap(drawerModel),
      ),
    );
  }

  Widget cartCountWidget(int count) {
    return CircleAvatar(
      backgroundColor: AppColors.BgRedColor,
      child: Text(
        "$count",
        style: TextStyle(
            fontSize: 39.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.White),
      ),
    );
  }

  void onItemTap(DrawerModel drawerModel) {
    if (drawerModel.route == RouteConstants.logout) {
      UserPreference.setIsUserLoggedIn("");
      UserPreference.setAccessToken("");
      Navigator.pushNamedAndRemoveUntil(
          context, RouteConstants.loginRoute, (Route<dynamic> route) => false);
    } else {
      Navigator.pushNamed(context, drawerModel.route);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Container(
          color: AppColors.DarkGrey,
          child: Column(
            children: [buildProfile(), Expanded(child: list())],
          ),
        ),
      ),
    );
  }
}
