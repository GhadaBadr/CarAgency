// ignore_for_file: non_constant_identifier_names

import 'package:car_agency/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../../../theme.dart';
import '../controllers/new_user_controller.dart';

class NewUserView extends GetView<NewUserController> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();

    String Name = '';
    PhoneNumber number = PhoneNumber(isoCode: 'EG');
    PhoneNumber number1 = PhoneNumber(phoneNumber: '');
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'New User'.tr,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: AppTheme.white),
                        borderRadius: BorderRadius.circular(40)),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    child: TextFormField(
                        onChanged: (String name) {
                          Name = name;
                        },
                        textAlign: TextAlign.center,
                        style: TextStyle(color: AppTheme.white),
                        decoration: InputDecoration(
                          hintText: 'Name'.tr,
                          hintStyle: TextStyle(color: AppTheme.white),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: AppTheme.white),
                        borderRadius: BorderRadius.circular(40)),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    child: InternationalPhoneNumberInput(
                      maxLength: 10,
                      spaceBetweenSelectorAndTextField: 0,
                      textAlign: TextAlign.left,
                      onInputChanged: (PhoneNumber number) {
                        number1 = number;
                      },
                      onInputValidated: (bool value) {},
                      selectorConfig: SelectorConfig(
                        selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                      ),
                      ignoreBlank: false,
                      autoValidateMode: AutovalidateMode.disabled,
                      selectorTextStyle: TextStyle(color: AppTheme.white),
                      initialValue: number,
                      textFieldController: controller,
                      formatInput: false,
                      inputDecoration: InputDecoration(
                        hintText: 'Phone Number'.tr,
                        hintStyle: TextStyle(color: AppTheme.white),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                      ),
                      textStyle: TextStyle(color: AppTheme.white),
                      keyboardType: TextInputType.numberWithOptions(
                          signed: true, decimal: true),
                      inputBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                      onSaved: (PhoneNumber number) {},
                    ),
                  ),
                  Row(children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          if ((number1.phoneNumber!.isNotEmpty ||
                                  number1.phoneNumber!.length == 1) &&
                              Name.isNotEmpty) {
                            Navigator.pushNamed(context, Routes.ACTIVATION,
                                arguments: {'phone': number1.phoneNumber});
                          }
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          decoration: BoxDecoration(
                              color: AppTheme.white,
                              border:
                                  Border.all(width: 2, color: AppTheme.white),
                              borderRadius: BorderRadius.circular(40)),
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 15),
                          child: Center(
                              child: Text(
                            'Sing Up'.tr,
                            style:
                                TextStyle(color: Theme.of(context).canvasColor),
                          )),
                        ),
                      ),
                    ),
                  ]),
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Center(
                              child: Text(
                                'By clicking on Register,you agree to'.tr,
                                style: TextStyle(color: AppTheme.white),
                              ),
                            ),
                          ),
                        ],
                      )),
                  GestureDetector(
                    onTap: () {},
                    child: IntrinsicWidth(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text('Terms/Conditions'.tr,
                              style: Theme.of(context).textTheme.bodyText1),
                          Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                              color: AppTheme.white,
                              width:
                                  2.0, // This would be the width of the underline
                            ))),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Text('Current User / Sing In'.tr,
                        style: Theme.of(context).textTheme.bodyText1),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
