import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'restaurant_menu.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        //title: Text('Sign Up'),
      ),
      body:  Center(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Form(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Sign Up', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                  SizedBox(height: 30,),
                  CutomizedTextFormField(K_type: TextInputType.text, label_text: "Name", suffix_icon:Icons.account_circle_sharp, obsecure: false ),
                  SizedBox(height: 15,),
                  CutomizedTextFormField(K_type: TextInputType.emailAddress, label_text: "Email", suffix_icon:Icons.email, obsecure: false),
                  SizedBox(height: 15,),
                  CutomizedTextFormField(K_type: TextInputType.visiblePassword, label_text: "Password", suffix_icon:Icons.lock, obsecure: true ),
                  SizedBox(height: 15,),
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => RestaurantMenue()));
                    },
                    child: Text('CREATE ACCOUNT'),
                    color: Colors.amber,
                    textColor: Colors.white,
                    elevation: 7,
                    padding: EdgeInsets.all(15),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget CutomizedTextFormField({String label_text, IconData suffix_icon, TextInputType K_type, var obsecure}){
    return   TextFormField(

      obscureText: obsecure,
      keyboardType: K_type,
      decoration: InputDecoration(
        labelText: label_text,
        helperText: 'Required ',
        prefixIcon: Icon(suffix_icon, color:Colors.amber ,),
       focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 2, color: Colors.amber, ), borderRadius: BorderRadius.circular(20
       )) ,
        enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 2, color: Colors.amber, ), borderRadius: BorderRadius.circular(20)) ,

      ),
    );
  }
}
