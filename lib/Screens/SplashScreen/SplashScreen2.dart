import 'package:whatsapp/Export.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  void initState() {
    // TODO: implement initState
    _goHome();
  }

  void _goHome() async {
    await Future.delayed(Duration(seconds: 10));
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SplashScreen3()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: 160,
              child: Column(
                children: [
                  Image.asset(
                    'assets/logo.png',
                    width: 100,
                    height: 100,
                    color: Theme.of(context).colorScheme.primary,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(height: 20,),
                  Text('WhatsApp',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        color: Theme.of(context).colorScheme.primary
                    ),
                  )
                ],
              ),
            ),
            CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}