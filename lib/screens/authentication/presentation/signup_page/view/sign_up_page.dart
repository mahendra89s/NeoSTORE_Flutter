import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neostore_app/screens/authentication/presentation/signup_page/model/sign_up_request.dart';
import 'package:neostore_app/screens/authentication/presentation/signup_page/provider/sign_up_provider.dart';
import 'package:neostore_app/utils/custom_app_bar.dart';
import 'package:neostore_app/utils/field_validation.dart';
import 'package:neostore_app/utils/string_resources.dart';
import 'package:neostore_app/utils/view_extensions.dart';

import '../../../../../config/common_api_status_model.dart';
import '../../../../../utils/toast.dart';
import '../../login_page/model/login_state.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  TextEditingController firstNameTextEditingController =
      TextEditingController();
  FocusNode firstNameFocus = FocusNode();

  TextEditingController lastNameTextEditingController = TextEditingController();
  FocusNode lastNameFocus = FocusNode();

  TextEditingController emailTextEditingController = TextEditingController();
  FocusNode emailFocus = FocusNode();

  TextEditingController passwordTextEditingController = TextEditingController();
  FocusNode passwordFocus = FocusNode();

  TextEditingController confirmPasswordTextEditingController =
      TextEditingController();
  FocusNode confirmPasswordFocus = FocusNode();

  TextEditingController mobileNumberTextEditingController =
      TextEditingController();
  FocusNode mobileNumberFocus = FocusNode();

  String genderValue = "M";
  bool isAgreed = false;
  final _formKey = GlobalKey<FormState>();

  SignUpRequest signUpnRequest = SignUpRequest(
      first_name: "",
      last_name: "",
      email: "",
      password: "",
      confirm_password: "",
      gender: GENDER.M.name,
      phone_no: 0);

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
          break;
        }
      default:
        {}
    }
  }

  Widget build(BuildContext context) {
    Widget neoStoreText() {
      return Text(
        StringResources.neoStore,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 135.sp),
      );
    }

    Widget genderRadioButton() {
      return Row(
        children: [
          Text(
            StringResources.gender,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 48.sp),
          ),
          Expanded(
            child: RadioListTile(
              contentPadding: EdgeInsets.zero,
              visualDensity: const VisualDensity(horizontal: -4),
              title: Text(
                StringResources.male,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 48.sp),
              ),
              value: "M",
              groupValue: signUpnRequest.gender,
              onChanged: (value) => {
                setState(() {
                  //genderValue = value ?? "";
                  signUpnRequest =
                      signUpnRequest.copyWith(gender: GENDER.M.name);
                })
              },
            ),
          ),
          Expanded(
            child: RadioListTile(
              contentPadding: EdgeInsets.zero,
              visualDensity: const VisualDensity(horizontal: -4),
              title: Text(
                StringResources.female,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 48.sp),
              ),
              value: "F",
              groupValue: signUpnRequest.gender,
              onChanged: (value) => {
                setState(() {
                  //genderValue = value ?? "";
                  signUpnRequest =
                      signUpnRequest.copyWith(gender: GENDER.F.name);
                })
              },
            ),
          )
        ],
      );
    }

    Widget registerButton(WidgetRef ref) {
      final apiCallProvider = ref.watch(registerProvider.notifier);
      final LoginState loginState = ref.watch(registerProvider);
      return InkWell(
        onTap: () async {
          if (_formKey.currentState!.validate()) {
            signUpnRequest = signUpnRequest.copyWith(
                first_name: firstNameTextEditingController.text,
                last_name: lastNameTextEditingController.text,
                email: emailTextEditingController.text,
                password: passwordTextEditingController.text,
                confirm_password: confirmPasswordTextEditingController.text,
                phone_no: int.parse(mobileNumberTextEditingController.text));
            await apiCallProvider.callRegisterUserApi(signUpnRequest);
            event(loginState);
          }
        },
        child: Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
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
                      StringResources.register,
                      style: TextStyle(
                          fontSize: 78.sp,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xffE91C1A)),
                    ),
                  )),
      );
    }

    Widget signUpScreen() {
      return Container(
        height: ScreenUtil().screenHeight,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bg_img.jpeg'),
              fit: BoxFit.cover),
        ),
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 100.h),
            child: Consumer(builder: (_, WidgetRef ref, __) {
              return Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    neoStoreText(),
                    Padding(padding: EdgeInsets.only(top: 40.h)),
                    //First name

                    CustomTextFormField(
                        textEditingController: firstNameTextEditingController,
                        focusNode: firstNameFocus,
                        hintText: StringResources.firstName,
                        lableText: StringResources.firstName,
                        icon: const Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        validator: FieldValidation.nameValidator),
                    Padding(padding: EdgeInsets.only(top: 40.h)),
                    //Last Name
                    CustomTextFormField(
                        textEditingController: lastNameTextEditingController,
                        focusNode: lastNameFocus,
                        hintText: StringResources.lastName,
                        lableText: StringResources.lastName,
                        icon: const Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        validator: FieldValidation.nameValidator),
                    Padding(padding: EdgeInsets.only(top: 40.h)),
                    //email
                    CustomTextFormField(
                        textEditingController: emailTextEditingController,
                        focusNode: emailFocus,
                        hintText: StringResources.email,
                        lableText: StringResources.email,
                        icon: const Icon(
                          Icons.mail,
                          color: Colors.white,
                        ),
                        validator: FieldValidation.emailValidator),
                    Padding(padding: EdgeInsets.only(top: 40.h)),
                    //Password
                    CustomTextFormField(
                        textEditingController: passwordTextEditingController,
                        focusNode: passwordFocus,
                        hintText: StringResources.password,
                        lableText: StringResources.password,
                        icon: const Icon(
                          Icons.lock_open,
                          color: Colors.white,
                        ),
                        validator: FieldValidation.passwordValidator),
                    Padding(padding: EdgeInsets.only(top: 40.h)),
                    //Confirm Password
                    CustomTextFormField(
                        textEditingController:
                            confirmPasswordTextEditingController,
                        focusNode: confirmPasswordFocus,
                        hintText: StringResources.confirmPassword,
                        lableText: StringResources.confirmPassword,
                        icon: const Icon(
                          Icons.lock_open,
                          color: Colors.white,
                        ),
                        validator: FieldValidation.confirmPasswordValidator),
                    Padding(padding: EdgeInsets.only(top: 40.h)),
                    genderRadioButton(),
                    Padding(padding: EdgeInsets.only(top: 40.h)),
                    CustomTextFormField(
                        textEditingController:
                            mobileNumberTextEditingController,
                        focusNode: mobileNumberFocus,
                        hintText: StringResources.phoneNumber,
                        lableText: StringResources.phoneNumber,
                        icon: const Icon(
                          Icons.phone_iphone_rounded,
                          color: Colors.white,
                        ),
                        textInputType: TextInputType.phone,
                        validator: FieldValidation.MobileValidator),
                    Padding(padding: EdgeInsets.only(top: 40.h)),
                    ListTile(
                      title: Text(StringResources.iAgreeTermsAndConditions,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 48.sp)),
                      leading: Radio(
                        value: true,
                        groupValue: isAgreed,
                        onChanged: (value) {
                          setState(() {
                            isAgreed = value ?? false;
                          });
                        },
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 40.h)),
                    registerButton(ref),
                    Padding(padding: EdgeInsets.only(top: 60.h)),
                  ],
                ),
              );
            })),
      );
    }

    return ScreenUtilInit(
      designSize: const Size(1080, 1920),
      builder: (_, child) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: signUpScreen(),
          appBar: MyAppBar(
            title: StringResources.register,
            appBar: AppBar(),
            widgets: const [],
          ),
        );
      },
    );
  }
}

enum GENDER { M, F }
