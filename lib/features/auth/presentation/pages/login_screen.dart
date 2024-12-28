import 'package:fitnest_x/config/app_images.dart';
import 'package:fitnest_x/config/app_vectors.dart';
import 'package:fitnest_x/config/constants/AppSizes.dart';
import 'package:fitnest_x/config/theme/app_colors.dart';
import 'package:fitnest_x/core/components/app_style.dart';
import 'package:fitnest_x/core/components/header.dart';
import 'package:fitnest_x/core/components/hight_spacer.dart';
import 'package:fitnest_x/core/components/my_button.dart';
import 'package:fitnest_x/core/components/social_media_button.dart';
import 'package:fitnest_x/core/components/width_spacer.dart';
import 'package:fitnest_x/features/auth/presentation/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool licenceAccepted = false;
  String?  email, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Hey there,",
                        style: AppStyle(
                            color: Color(0xff1D1617),
                            weight: FontWeight.w400,
                            size: 24),
                      ),
                    ),
                    HighSpacer(size: 5),
                    Header(label: "Welcome Back", size: 30),
                    const HighSpacer(size: 30),
                    Form(
                      key: formKey,
                      child: Column(
                        children: [
                          MyTextFormField(
                            initialValue: email,
                            asset: AppVectors.message,
                            onSaved: (value) {
                              email = value;
                            },
                            label: "Email",
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your first name';
                              } else if (!value.isEmail) {
                                return 'Please enter a correct Email like "jhon@exemple.com';
                              } else {
                                return null;
                              }
                            },
                          ),
                          MyTextFormField(
                            initialValue: password,
                            asset: AppVectors.lock,
                            onSaved: (value) {
                              password = value;
                            },
                            label: "Password",
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter a Password';
                              } else if (value.length < 6) {
                                return 'Please enter a strong password';
                              } else {
                                return null;
                              }
                            },
                          ),
                          LayoutBuilder(builder: (context, constraints) {
                            final width = constraints.maxWidth;
                            double? size;
                            if (width < 370) {
                              size = 12;
                            } else {
                              size = 18;
                            }
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Center(
                                child: Text(
                                  "Forget Password?",
                                  style: TextStyle(
                                      decoration: TextDecoration
                                          .underline,
                                      color: Color(0xffADA4A5),
                                      fontWeight: FontWeight.w400,
                                      fontSize: size),
                                ),
                              ),
                            );
                          })
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  MyButton(
                      width: Appsizes.getDeviceWidth(context) * .8,
                      hight: 60,
                      label: "Login",
                      onTap: () {}),
                  HighSpacer(size: 20),
                  Text("Or"),
                  HighSpacer(size: 20),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SocialMediaButton(
                          icon: AppImages.googleIcon,
                          onPressed: () {},
                        ),
                        WidthSpacer(size: 30),
                        SocialMediaButton(
                          icon: AppImages.facebookIcon,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  HighSpacer(size: 30),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account ?",
                          style: AppStyle(
                              color: Colors.black,
                              weight: FontWeight.w400,
                              size: 14),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            "Register",
                            style: AppStyle(
                                color: Colors.purple,
                                weight: FontWeight.w400,
                                size: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                  HighSpacer(size: 30),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
