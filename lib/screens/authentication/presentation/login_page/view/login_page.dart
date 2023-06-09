import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neostore_app/config/common_api_status_model.dart';
import 'package:neostore_app/route/route_constants.dart';
import 'package:neostore_app/screens/authentication/presentation/login_page/model/login_request.dart';
import 'package:neostore_app/screens/authentication/presentation/login_page/model/login_state.dart';
import 'package:neostore_app/utils/toast.dart';

import '../provider/login_state_notifier.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FocusNode usernameFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();
  var username = "";
  var passwrd = "";
  LoginRequest loginRequest = const LoginRequest(email: "", password: "");
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  void event(LoginState state) {
    switch (state.status) {
      case Status.error:
        {
          CustomToast.showToast("Error Occurred!!!");
          break;
        }
      case Status.failure:
        {
          CustomToast.showToast(state.errorMsg);
          break;
        }
      case Status.success:
        {
          Navigator.pushNamedAndRemoveUntil(context, RouteConstants.homeRoute,
              (Route<dynamic> route) => false);
          break;
        }
      default:
        {}
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget forgetPassword() {
      return TextButton(
          onPressed: () {},
          child: Text(
            "Forget Password?",
            style: TextStyle(
                fontSize: 54.sp,
                fontWeight: FontWeight.w500,
                color: Colors.white),
          ));
    }

    Widget loginButton(WidgetRef ref) {
      final apiCallProvider = ref.watch(authenticateProvider.notifier);
      final LoginState loginState = ref.watch(authenticateProvider);
      return InkWell(
        onTap: () async {
          if (_formKey.currentState!.validate()) {
            await apiCallProvider.callAuthenticationUserApi(loginRequest);
            event(loginState);
          }
        },
        child: Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(5.0))),
            child: loginState.status == Status.loading
                ? const Center(
                    child: CircularProgressIndicator(
                      color: Color(0xffE91C1A),
                    ),
                  )
                : Center(
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                          fontSize: 78.sp,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xffE91C1A)),
                    ),
                  )),
      );
    }

    Widget neoStoreText() {
      return Text(
        "NeoSTORE",
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 135.sp),
      );
    }

    Widget email() {
      return TextFormField(
          focusNode: usernameFocus,
          controller: usernameController,
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(10),
            prefixIcon: const Icon(
              Icons.mail,
              color: Colors.white,
            ),
            hintText: "Email",
            hintStyle: TextStyle(
                color:
                    usernameFocus.hasFocus ? Colors.white : Colors.transparent,
                fontWeight: FontWeight.w500),
            labelText: "Email",
            errorStyle: const TextStyle(color: Colors.white),
            labelStyle: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(0.0),
                borderSide: const BorderSide(color: Colors.white)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(0.0),
                borderSide: const BorderSide(color: Colors.white)),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(0.0),
                borderSide: const BorderSide(color: Colors.white)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(0.0),
                borderSide: const BorderSide(color: Colors.white)),
          ),
          validator: (value) {
            if (value == null ||
                !RegExp(r'^[\w-_\.]+@([\w-].)+[a-z]{2,5}').hasMatch(value)) {
              return 'Enter valid email id!!';
            }
            loginRequest = loginRequest.copyWith(email: value);
            return null;
          },
          onChanged: (value) => () {});
    }

    Widget password() {
      return TextFormField(
          focusNode: passwordFocus,
          controller: passwordController,
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(10),
            prefixIcon: const Icon(
              Icons.lock_open,
              color: Colors.white,
            ),
            hintText: "Password",
            hintStyle: TextStyle(
                color:
                    usernameFocus.hasFocus ? Colors.white : Colors.transparent,
                fontWeight: FontWeight.w500),
            labelText: "Password",
            errorStyle: const TextStyle(color: Colors.white),
            labelStyle: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(0.0),
                borderSide: const BorderSide(color: Colors.white)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(0.0),
                borderSide: const BorderSide(color: Colors.white)),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(0.0),
                borderSide: const BorderSide(color: Colors.white)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(0.0),
                borderSide: const BorderSide(color: Colors.white)),
          ),
          validator: (value) {
            if (value == null
                // ||   !RegExp(r'^(?=.*[a-z])(?=.*?[0-9]).{8,}$').hasMatch(value)
                ) {
              return 'Password must contain atleast 8 characters!!';
            }
            loginRequest = loginRequest.copyWith(password: value);
            return null;
          },
          onChanged: (value) => () {});
    }

    Widget dontHaveAccount() {
      return SizedBox(
        width: double.infinity,
        child: Text(
          "DON'T HAVE AN ACCOUNT?",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 48.sp),
        ),
      );
    }

    Widget loginForm() {
      return Consumer(builder: (_, WidgetRef ref, __) {
        return Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              neoStoreText(),
              Padding(padding: EdgeInsets.only(top: 148.h)),
              email(),
              Padding(padding: EdgeInsets.only(top: 60.h)),
              password(),
              Padding(padding: EdgeInsets.only(top: 100.h)),
              loginButton(ref),
              Padding(padding: EdgeInsets.only(top: 65.h)),
              forgetPassword()
            ],
          ),
        );
      });
    }

    return ScreenUtilInit(
        designSize: const Size(1080, 1920),
        builder: (_, child) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
              height: ScreenUtil().screenHeight,
              padding: EdgeInsets.symmetric(horizontal: 50.h, vertical: 75.h),
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/bg_img.jpeg'),
                    fit: BoxFit.cover),
              ),
              child: Column(
                children: [
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50.h),
                    child: loginForm(),
                  )),
                  dontHaveAccount()
                ],
              ),
            ),
            floatingActionButton: SizedBox(
              height: 138.h,
              width: 138.h,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.pushNamed(context, RouteConstants.signUpRoute);
                },
                elevation: 0,
                backgroundColor: Colors.red[700],
                shape: const BeveledRectangleBorder(
                    borderRadius: BorderRadius.zero),
                child: const Icon(
                  Icons.add,
                ),
              ),
            ),
          );
        });
  }
}
