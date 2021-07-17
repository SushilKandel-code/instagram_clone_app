import 'package:flutter/material.dart';
import 'package:instagram_clone_app/Component/button.dart';
import 'package:instagram_clone_app/Component/textField.dart';
import 'package:language_picker/language_picker_dropdown.dart';
import 'package:language_picker/languages.dart';
import 'package:language_picker/languages.g.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  _LoginBodyState createState() => _LoginBodyState();
}

bool _obsecureText = true;

class _LoginBodyState extends State<LoginBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        //height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(top: 10, left: 40, right: 40, bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //for language choose
            Center(
              child: Container(
                width: 120.0,
                child: LanguagePickerDropdown(
                    initialValue: Languages.english,
                    onValuePicked: (Language language) {
                      print(language);
                    }),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 150.0),
              child: Image.asset(
                'images/instaLetter.png',
                height: 60,
              ),
            ),

            // for textfield

            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: TextFieldDesign(
                hintText: 'Phone number, email or username',
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: TextFieldDesign(
                hintText: 'Password',
                obsecureText: _obsecureText,
                suffixIcon: InkWell(
                    child: Icon(
                      _obsecureText
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      size: 20.0,
                      color: Colors.black,
                    ),
                    onTap: () {
                      setState(() {
                        _obsecureText = !_obsecureText;
                      });
                    }),
              ),
            ),
            //Button

            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: ButtonDesign(
                  title: 'Log in',
                  onPressed: () {
                    print('Login Clicked');
                  }),
            ),

            //Forgot Text

            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                'Forgot your login details? Get help signing in',
                style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
              ),
            ),

            //Divider OR

            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '_____________',
                    style:
                        TextStyle(color: Colors.grey.shade600, fontSize: 20.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, left: 10.0, right: 10.0),
                    child: Text(
                      'OR',
                      style: TextStyle(
                          color: Colors.grey.shade600, fontSize: 20.0),
                    ),
                  ),
                  Text(
                    '_____________',
                    style:
                        TextStyle(color: Colors.grey.shade600, fontSize: 20.0),
                  ),
                ],
              ),
            ),
            //facebook Icon

            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.facebook,
                    color: Color(0xff3897F0),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Log in with Facebook',
                      style: TextStyle(color: Color(0xff3897F0)),
                    ),
                  )
                ],
              ),
            ),

            //

            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Divider(
                    color: Colors.grey.shade500,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Don't have an account? Sign up",
                      style: TextStyle(
                          color: Colors.grey.shade600, fontSize: 15.0),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
