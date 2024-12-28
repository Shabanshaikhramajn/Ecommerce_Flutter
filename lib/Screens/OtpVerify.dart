import 'package:ecommerce/Screens/recovery_screen.dart';
import 'package:flutter/material.dart';

// import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';

class Otpverify extends StatefulWidget {
  const Otpverify({super.key});

  @override
  State<Otpverify> createState() => _OtpVerifyState();
}

class _OtpVerifyState extends State<Otpverify> {

int _otpCodeLength = 4;

TextEditingController textEditingController = new TextEditingController(text: "");
 String _otpCode = "";


  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Theme.of(context).primaryColor),
      borderRadius: BorderRadius.circular(8.0),
    );
  }

    //  get signature code
  _getSignatureCode() async {
    // String? signature = await SmsVerification.getAppSignature();
    // print("signature $signature");
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getSignatureCode();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Enter OTP',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 120,
                ),
                Text(
                  "Enter the OTP you have received",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(height: 15,),


                // TextFieldPin(
                //     textController: textEditingController,
                //     autoFocus: true,
                //     codeLength: _otpCodeLength,
                //     alignment: MainAxisAlignment.center,
                //     defaultBoxSize: 50.0,
                //     margin: 10,
                //     selectedBoxSize: 46.0,
                //     textStyle: TextStyle(fontSize: 16),
                //     defaultDecoration: _pinPutDecoration.copyWith(
                //         border: Border.all(
                //       color: Colors.lightBlue
                //     )),
                //     selectedDecoration: _pinPutDecoration,
                //     onChange: (code) {
                //       setState(() {
                //         _otpCode = code;
                        
                //       });
                //     }),
                 
                 ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> RecoveryScreen()));
                 }, 
                 child: Text('Verify', 
                 style: TextStyle(color: Colors.white,
                    fontSize: 20,

                 ),
                 
                 ),
               style:   ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(50),
                  backgroundColor: Color(0xFFEF6969),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  )
                 )),
                  SizedBox(height: 8,),
                 TextButton(onPressed: (){}, child: 
                 Text('Resend OTP', style: TextStyle(fontSize: 16),))
                    
              ],
            ),
          ),
        ));
  }
}
