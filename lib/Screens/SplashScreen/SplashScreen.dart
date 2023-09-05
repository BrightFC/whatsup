import 'package:whatsapp/Export.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    _goHome();
  }

  void _goHome() async {
    await Future.delayed(Duration(seconds: 5));
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SplashScreen2()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Container(
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
      ),
    );
  }
}
