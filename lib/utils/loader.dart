import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neostore_app/utils/app_colors.dart';

class Loader extends StatelessWidget {
  const Loader({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(1080, 1920),
        builder: (_, child) {
          return const Center(
            child: CircularProgressIndicator(
              color: AppColors.BgRedColor,
            ),
          );
        });
  }
}
