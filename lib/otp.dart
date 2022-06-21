import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';

class otp extends StatefulWidget {
  const otp({Key? key}) : super(key: key);

  @override
  State<otp> createState() => _otpState();
}

class _otpState extends State<otp> {

  @override
  void initState(){
    super.initState();
    _listenOtp();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Masukan OTP'),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              child: PinFieldAutoFill(
                codeLength: 4,
                onCodeChanged: (val){
                  print(val);
                }

              ),
            )
          ],
        ),
      ),
    );
  }

  void _listenOtp() async{
    await SmsAutoFill().listenForCode();
  }


}


