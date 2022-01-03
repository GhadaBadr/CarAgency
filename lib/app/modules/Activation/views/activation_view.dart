import 'package:car_agency/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/index.dart';

import 'package:get/get.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import '../controllers/activation_controller.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ActivationView extends GetView<ActivationController> {
  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    final formKey = GlobalKey<FormState>();

    int endTime = DateTime.now().millisecondsSinceEpoch + 60000;

    final routeArg =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final phone = routeArg['phone'];
    String sub = phone.substring(2);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Row(
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      'Please enter the code to your phone'.tr,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 3),
              child: Center(
                child: Text(
                  sub.toString(),
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
            Form(
              key: formKey,
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 30),
                  child: PinCodeTextField(
                    appContext: context,
                    // pastedTextStyle: TextStyle(
                    //   color: Theme.of(context).canvasColor,
                    //   fontWeight: FontWeight.bold,
                    // ),
                    length: 4,

                    animationType: AnimationType.fade,
                    validator: (v) {
                      // if (v!.length < 3) {
                      //   return "I'm from validator";
                      // } else {
                      //   return null;
                      // }
                    },
                    pinTheme: PinTheme(
                      fieldOuterPadding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                      shape: PinCodeFieldShape.circle,
                      borderWidth: 1,
                      borderRadius: BorderRadius.circular(5),
                      inactiveColor: AppTheme.white,
                      activeColor: AppTheme.white,
                      selectedColor: AppTheme.white,
                      inactiveFillColor: Colors.transparent,
                      selectedFillColor: Colors.transparent,
                      fieldHeight: 50,
                      fieldWidth: 50,
                      activeFillColor: Colors.transparent,
                    ),
                    mainAxisAlignment: MainAxisAlignment.center,
                    cursorColor: AppTheme.white,

                    animationDuration: Duration(milliseconds: 300),
                    enableActiveFill: true,
                    textStyle: TextStyle(color: AppTheme.white),
                    controller: textEditingController,
                    keyboardType: TextInputType.number,

                    onCompleted: (v) {
                      print("Completed");
                    },
                    // onTap: () {
                    //   print("Pressed");
                    // },
                    onChanged: (value) {
                      print(value);
                    },
                    beforeTextPaste: (text) {
                      print("Allowing to paste $text");
                      //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                      //but you can show anything you want here, like your pop up saying wrong paste format or etc
                      return true;
                    },
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, bottom: 15, left: 10, right: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        'If you do not receive the code withen a minute'.tr,
                        style: TextStyle(
                            color: AppTheme.white,
                            fontSize:
                                Theme.of(context).textTheme.headline1!.fontSize,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: CountdownTimer(
                      endWidget: Text(
                        'Expired'.tr,
                        style: TextStyle(
                            color: AppTheme.white,
                            fontSize:
                                Theme.of(context).textTheme.headline1!.fontSize,
                            fontWeight: FontWeight.normal),
                      ),
                      endTime: endTime,
                      textStyle: TextStyle(
                          color: AppTheme.white,
                          fontSize:
                              Theme.of(context).textTheme.headline1!.fontSize,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Center(
                child: Text('Resend'.tr,
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize:
                            Theme.of(context).textTheme.headline1!.fontSize,
                        color: Theme.of(context).textTheme.headline4!.color)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
