import 'package:whatsapp/Export.dart';

class Verification2 extends StatefulWidget {
  const Verification2({super.key});

  @override
  State<Verification2> createState() => _Verification2State();
}

class _Verification2State extends State<Verification2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Text('Enter OTP Code',
          style: TextStyle(
            fontSize: 20.0,
          ),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Code Has Been Sent To +23490*******73',
                style: TextStyle(
                  fontSize: 15.0,
                ),),

            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Resend Code In ',
                style: TextStyle(
                  fontSize: 15.0,
                ),),
              Text('56',
                style: TextStyle(
                  fontSize: 15.0,
                  color: kMainColor,
                ),),
              Text('s',
                style: TextStyle(
                  fontSize: 15.0,
                ),)
            ],
          )
        ],
      ),
    );
  }
}
