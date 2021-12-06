
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoptowns/signup.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool hiddenpassword=true;

  TextEditingController userController= TextEditingController();

  TextEditingController passController= TextEditingController();

  String user= 'sohan';

  String pass ='123456';

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/signup.png'), fit: BoxFit.cover),
        ),

        child: Scaffold(
          backgroundColor: Colors.transparent,
        body: SafeArea(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextField(
                  controller: userController ,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.mail,
                    color: Colors.black,),
                      enabledBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                      labelText: 'Email or phone number',labelStyle: TextStyle(color: Colors.black),
                      hintText: 'Enter your email or phone number'
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextField(
                  maxLength: 8,
                  obscureText: hiddenpassword,
                  controller: passController,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          hiddenpassword=!hiddenpassword;
                        });
                      },
                      icon: Icon(
                        hiddenpassword?
                        Icons.visibility_off : Icons.visibility,color: Colors.black,),
                    ),
                      prefixIcon: Icon(Icons.vpn_key,
                      color: Colors.black,),
                      enabledBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                      labelText: 'Password',labelStyle: TextStyle(color: Colors.black),
                      hintText: 'Enter your password'
                  ),
                ),
              ),
              SizedBox(height: 40,),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Login',style: TextStyle(fontSize: 27, fontWeight: FontWeight.w700,color: Colors.black),
              ),
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.black,
                child: IconButton(
                  color: Colors.white,
                  onPressed: () {
                    if(userController.text.isEmpty || passController.text.isEmpty)
                    { Fluttertoast.showToast(msg: 'Please enter your id and password',toastLength: Toast.LENGTH_LONG,gravity: ToastGravity.SNACKBAR);}
                    else if(userController.text== user && passController.text==pass)
                    {Fluttertoast.showToast(msg: 'Login Successful',toastLength: Toast.LENGTH_LONG,gravity: ToastGravity.SNACKBAR);
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MyRegister()));
                    }
                    else{ Fluttertoast.showToast(msg: 'Please enter valid id and password',toastLength: Toast.LENGTH_LONG,gravity: ToastGravity.SNACKBAR);}

                  },
                  icon: Icon(Icons.arrow_forward,
                  ),
                ),
              ),
            ],
          ),
        ),
          SizedBox(height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MyRegister()));
                  },
                  child: Text('Sign Up',textAlign: TextAlign.left,style: TextStyle(decoration: TextDecoration.underline,
                      color: Colors.black,fontSize: 19),
                  ),
                  style: ButtonStyle(),
                ),
                TextButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MyRegister()));
                },
                  child: Text('Forgot Password',style: TextStyle( decoration: TextDecoration.underline,
                    color: Colors.black,fontSize: 19,
                  ),
                  ),
                ),
              ],
            ),
          ),
     ]
          ),
    )
    ),
      );
  }
}

