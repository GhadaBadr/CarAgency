import 'package:car_agency/theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sing_in_controller.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class SingInView extends GetView<SingInController> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();

    PhoneNumber number = PhoneNumber(isoCode: 'EG');
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
                'Current User'.tr,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(
                height: 100,
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: AppTheme.white),
                        borderRadius: BorderRadius.circular(40)),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    child: InternationalPhoneNumberInput(
                      onInputChanged: (PhoneNumber number) {},
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
                        onTap: () {},
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
                            'Sing In'.tr,
                            style:
                                TextStyle(color: Theme.of(context).canvasColor),
                          )),
                        ),
                      ),
                    ),
                  ])
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
