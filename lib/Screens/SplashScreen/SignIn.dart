import 'package:whatsapp/Export.dart';

class LoginScreen extends StatefulWidget {

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _formKey = GlobalKey<FormState>();

  bool isCheck = false;



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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Sign In To Your Account',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white
                            ),
                          )
                        ],
                      ),
                      Container(
                        child: Column(
                          children: [
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
                                                child: Text('Sign In',
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
                                              Text('Dont Have An Account? ',
                                                style: TextStyle(
                                                  fontSize: 15.0,
                                                ),),
                                              InkWell(
                                                onTap: (){
                                                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                                                },
                                                child: Text('Sign Up',
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