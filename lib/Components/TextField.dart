import 'package:whatsapp/Export.dart';

TextFormField buildEmailField() {
  return TextFormField(
    textAlign: TextAlign.start,
    keyboardType: TextInputType.phone,
    style: TextStyle(
      fontSize: 17.0,
      fontWeight: FontWeight.w300,
    ),
    decoration: InputDecoration(
      focusColor: Colors.white,
      prefixIcon: Icon(Icons.phone),
      labelText: 'Enter Mobile Number',
      floatingLabelBehavior: FloatingLabelBehavior.always,
      isDense: true,
      border: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
          ),
          borderRadius: BorderRadius.circular(20)
      ),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: kMainColor,
          ),
          borderRadius: BorderRadius.circular(20)
      ),
    ),
    validator: (value) {
      RegExp regExp = new RegExp(mobilePattern);
      if (value == null) {
        return 'please enter a Phone Number';
      } else if (!regExp.hasMatch(value)) {
        return 'Invalid Phone Number, please check again';
      }else if(value!.length < 11){
        return 'Must be up to 11 digits';
      }
    },
  );
}