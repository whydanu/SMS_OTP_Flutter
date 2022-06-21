import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:sms_otp/otp.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter SMS  Autofill',
      home: Auth(),
    );

  }
}

class Auth extends StatelessWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
            child: Text('data / register'),
            onPressed:() async {
              //HTTP here
              final signcode = await SmsAutoFill().getAppSignature;
              print(signcode);
              Navigator.push(context, MaterialPageRoute(builder: (c) => otp() ));
    },
      ),
      ),
    );
  }
}

