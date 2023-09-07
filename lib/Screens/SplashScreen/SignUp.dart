import 'package:whatsapp/Export.dart';
import 'package:whatsapp/Screens/Verification/Verification.dart';

class SignUp extends StatefulWidget {

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final _formKey = GlobalKey<FormState>();

  bool isCheck = false;

void _alert(){
  showDialog(context: context, builder: (context){
    return DialogBox();
  });
}



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          body: Container(
            child: ListView(
              children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 50,
                            ),
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
                      SizedBox(height: 180,),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Sign Up for Free',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white
                                  ),
                                )
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(kDefaultPadding * 3),
                                  topRight: Radius.circular(kDefaultPadding * 3),
                                ),
                                color: Theme.of(context).colorScheme.background,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(kDefaultPadding),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(
                                      height: kDefaultPadding,
                                    ),
                                    Form(
                                      key: _formKey,
                                      child: Column(
                                        children: [
                                          buildEmailField(),
                                          sizedBox,
                                          Row(
                                            children: [

                                              Checkbox(
                                                checkColor: Theme.of(context).colorScheme.primary,
                                                value: isCheck,
                                                onChanged: (bool? value) {
                                                  setState(() {
                                                    isCheck = value!;
                                                  });
                                                },
                                              ),

                                              Text('Remember me',
                                                style: TextStyle(
                                                  fontSize: 15.0,
                                                  color: kTextWhiteColor,
                                                ),),
                                            ],
                                          ),
                                          sizedBox,
                                          GestureDetector(
                                            onTap: (){
                                              if(_formKey.currentState!.validate()) {
                                                _alert();
                                              }
                                            },
                                            child: Container(
                                              width: MediaQuery.of(context).size.width/1.2,
                                              height: 70,
                                              decoration: BoxDecoration(
                                                  color: Theme.of(context).colorScheme.primary,
                                                  borderRadius: BorderRadius.all(Radius.circular(50))
                                              ),
                                              child: Center(
                                                child: Text('Sign Up',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontSize: 30,
                                                      color: Colors.white
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          sizedBox,
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text('Already Have An Account? ',
                                                style: TextStyle(
                                                  fontSize: 15.0,
                                                ),),
                                              InkWell(
                                                onTap: (){
                                                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                                                },
                                                child: Text('Sign In',
                                                  style: TextStyle(
                                                    fontSize: 15.0,
                                                    color: kMainColor,
                                                  ),),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ]
                ),
              ],
            ),
          )
      ),
    );
  }
}