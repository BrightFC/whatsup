import 'package:whatsapp/Export.dart';

class DialogBox extends StatefulWidget {
  const DialogBox({super.key,});

  @override
  State<DialogBox> createState() => _DialogBoxState();
}

class _DialogBoxState extends State<DialogBox> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _goVery();
  }
  void _goVery()async{
    await Future.delayed(Duration(seconds: 5));
    Navigator.push(context, MaterialPageRoute(builder: (context) => Verification2()));
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: EdgeInsets.all(10),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            CircularProgressIndicator()
          ],
        )
    );
  }
}
