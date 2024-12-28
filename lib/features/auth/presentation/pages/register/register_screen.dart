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

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool licenceAccepted = false;
  String? firstName, lastName, email, password;
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
                    Header(label: "Create an Account", size: 30),
                    const HighSpacer(size: 30),
                    Form(
                      key: formKey,
                      child: Column(
                        children: [
                          MyTextFormField(
                            initialValue: firstName,
                            asset: AppVectors.profile,
                            onSaved: (value) {
                              firstName = value;
                            },
                            label: "First Name",
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your first name';
                              } else if (!value.isAlpha) {
                                return 'Please enter a correct name like "Jhon';
                              } else {
                                return null;
                              }
                            },
                          ),
                          MyTextFormField(
                            initialValue: lastName,
                            asset: AppVectors.profile,
                            onSaved: (value) {
                              firstName = value;
                            },
                            label: "Last Name",
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your first name';
                              } else if (!value.isAlpha) {
                                return 'Please enter a correct name like "Jhonson';
                              } else {
                                return null;
                              }
                            },
                          ),
                          MyTextFormField(
                            initialValue: lastName,
                            asset: AppVectors.message,
                            onSaved: (value) {
                              firstName = value;
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
                            initialValue: lastName,
                            asset: AppVectors.lock,
                            onSaved: (value) {
                              firstName = value;
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
                              size = 8.5;
                            } else {
                              size = 10;
                            }
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                children: [
                                  Checkbox(
                                      side:
                                          BorderSide(color: Color(0xffADA4A5)),
                                      value: licenceAccepted,
                                      onChanged: (value) {
                                        setState(() {
                                          licenceAccepted = value!;
                                        });
                                      }),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width:
                                              Appsizes.getDeviceWidth(context) *
                                                  .7,
                                          child: Row(
                                            children: [
                                              FittedBox(
                                                fit: BoxFit.scaleDown,
                                                child: Text(
                                                  "By continuing you accept our ",
                                                  style: AppStyle(
                                                      color: Color(0xffADA4A5),
                                                      weight: FontWeight.w400,
                                                      size: size),
                                                ),
                                              ),
                                              FittedBox(
                                                fit: BoxFit.scaleDown,
                                                child: Text(
                                                  "Privacy Policy",
                                                  style: TextStyle(
                                                      color: Color(0xffADA4A5),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      decoration: TextDecoration
                                                          .underline,
                                                      fontSize: size),
                                                ),
                                              ),
                                              FittedBox(
                                                fit: BoxFit.scaleDown,
                                                child: Text(
                                                  " and ",
                                                  style: AppStyle(
                                                      color: Color(0xffADA4A5),
                                                      weight: FontWeight.w400,
                                                      size: size),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text(
                                          "Term Of Use",
                                          style: TextStyle(
                                              color: Color(0xffADA4A5),
                                              fontWeight: FontWeight.w400,
                                              decoration:
                                                  TextDecoration.underline,
                                              fontSize: size),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
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
                      label: "Register",
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
                          "Already have an account?",
                          style: AppStyle(
                              color: Colors.black,
                              weight: FontWeight.w400,
                              size: 14),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            "Login",
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


