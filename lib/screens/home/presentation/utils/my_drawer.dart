import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neostore_app/route/route_constants.dart';
import 'package:neostore_app/shared_preferences/user_shared_preference.dart';
import 'package:neostore_app/utils/app_colors.dart';
import 'package:neostore_app/utils/string_resources.dart';

import '../../../authentication/presentation/login_page/model/login_response_data.dart';
import '../common_model/drawer_model.dart';
import '../home_page/provider/home_provider.dart';

class MyDrawer extends ConsumerStatefulWidget {
  const MyDrawer({super.key});

  @override
  ConsumerState<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends ConsumerState<MyDrawer> {
  LoginResponseData? userData;
  int? cartCount = 0;

  final List<DrawerModel> drawerList = [
    DrawerModel(
        title: Text(StringResources.myCart,
            style: TextStyle(
                color: AppColors.White,
                fontSize: 48.sp,
                fontWeight: FontWeight.bold)),
        leadingIcon: const Icon(Icons.shopping_cart_outlined),
        showCartCount: true,
        cartCount: 0,
        route: RouteConstants.homeRoute),
    DrawerModel(
        title: Text(StringResources.tables,
            style: TextStyle(
                color: AppColors.White,
                fontSize: 48.sp,
                fontWeight: FontWeight.bold)),
        leadingIcon: const Icon(
          Icons.table_bar_sharp,
        ),
        route: RouteConstants.homeRoute),
    DrawerModel(
        title: Text(StringResources.sofas,
            style: TextStyle(
                color: AppColors.White,
                fontSize: 48.sp,
                fontWeight: FontWeight.bold)),
        leadingIcon: const Icon(Icons.chair),
        route: RouteConstants.homeRoute),
    DrawerModel(
        title: Text(StringResources.chairs,
            style: TextStyle(
                color: AppColors.White,
                fontSize: 48.sp,
                fontWeight: FontWeight.bold)),
        leadingIcon: const Icon(Icons.chair_alt_outlined),
        route: RouteConstants.homeRoute),
    DrawerModel(
        title: Text(StringResources.myCart,
            style: TextStyle(
                color: AppColors.White,
                fontSize: 48.sp,
                fontWeight: FontWeight.bold)),
        leadingIcon: const Icon(Icons.shopping_cart_outlined),
        route: RouteConstants.homeRoute),
    DrawerModel(
        title: Text(StringResources.cupboards,
            style: TextStyle(
                color: AppColors.White,
                fontSize: 48.sp,
                fontWeight: FontWeight.bold)),
        leadingIcon: const Icon(Icons.table_chart),
        route: RouteConstants.homeRoute),
    DrawerModel(
        title: Text(StringResources.myAccount,
            style: TextStyle(
                color: AppColors.White,
                fontSize: 48.sp,
                fontWeight: FontWeight.bold)),
        leadingIcon: const Icon(Icons.person),
        route: RouteConstants.homeRoute),
    DrawerModel(
        title: Text(StringResources.storeLocator,
            style: TextStyle(
                color: AppColors.White,
                fontSize: 48.sp,
                fontWeight: FontWeight.bold)),
        leadingIcon: const Icon(Icons.location_on),
        route: RouteConstants.homeRoute),
    DrawerModel(
        title: Text(StringResources.myCart,
            style: TextStyle(
                color: AppColors.White,
                fontSize: 48.sp,
                fontWeight: FontWeight.bold)),
        leadingIcon: const Icon(Icons.shopping_cart_outlined),
        route: RouteConstants.homeRoute),
    DrawerModel(
        title: Text(StringResources.logout,
            style: TextStyle(
                color: AppColors.White,
                fontSize: 48.sp,
                fontWeight: FontWeight.bold)),
        leadingIcon: const Icon(Icons.logout),
        route: RouteConstants.homeRoute),
  ];
  @override
  void initState() async {
    super.initState();
    final apiCallProvider = ref.watch(getUserDataProvider.notifier);
    await apiCallProvider.callUserDataApi();
    userData = UserPreference.getUserData();
    cartCount = UserPreference.getNoOfCart();
    drawerList[0].cartCount = cartCount;
  }

  Widget buildProfile() {
    return Column(
      children: [
        SizedBox(
          height: 107.h,
        ),
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
    );
  }

  Widget list() {
    return ListView.builder(itemBuilder: (context, index) {
      return itemListView(drawerList[index]);
    });
  }

  Widget itemListView(DrawerModel drawerModel) {
    return ListTile(
      leading: drawerModel.leadingIcon,
      title: drawerModel.title,
      trailing: drawerModel.showCartCount == true
          ? cartCountWidget(drawerModel.cartCount ?? 0)
          : null,
      onTap: () => onItemTap(drawerModel),
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
    Navigator.pushNamed(context, drawerModel.route);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: AppColors.MediumBlack,
        child: ListView(
          children: [buildProfile()],
        ),
      ),
    );
  }
}
