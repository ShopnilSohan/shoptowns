import 'package:flutter/material.dart';
import 'package:passwordfield/passwordfield.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  _MyRegisterState createState() => _MyRegisterState();
}

bool isMale = true;
bool _checkbox = false;
TextEditingController firstnameController = TextEditingController();
TextEditingController surenameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController passController = TextEditingController();

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/signup.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
            children: [
          Container(
            padding: EdgeInsets.only(left: 35, top: 165),
            child: Text(
              'Create\nAccount',
              style: TextStyle(color: Colors.black, fontSize: 33),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top: height * 0.41),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 35, right: 35),
                    child: Column(children: [
                      Row(
                        children: [
                          Flexible(
                            child: TextField(
                              controller: firstnameController,
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                    ),
                                  ),
                                  hintText: "First Name",
                                  hintStyle: TextStyle(color: Colors.black),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Flexible(
                            child: TextField(
                              controller: surenameController,
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                    ),
                                  ),
                                  hintText: "Surename",
                                  hintStyle: TextStyle(color: Colors.black),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        
                        keyboardType: TextInputType.emailAddress,
                        controller: emailController,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email,color: Colors.black,),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                          ),
                          hintText: "Email or phone number",
                          hintStyle: TextStyle(color: Colors.black),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      PasswordField(
                        color: Colors.black,
                        passwordConstraint: r'.*[@$#.*].*',
                        inputDecoration: PasswordDecoration(),
                        hintText: 'must have special characters',
                        border: PasswordBorder(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                            BorderSide(width: 1, color: Colors.black),
                          ),
                        ),
                        errorMessage:
                        'must contain special character either . * @ # \$',
                      ),

                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 5),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isMale = true;
                                });
                              },
                              child: Row(
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    margin: EdgeInsets.only(right: 8),
                                    decoration: BoxDecoration(
                                        color: isMale
                                            ? Color(0XFFFFA500)
                                            : Colors.transparent,
                                        border: Border.all(
                                            width: 1,
                                            color: isMale
                                                ? Colors.transparent
                                                : Colors.black),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Icon(
                                      Icons.account_box_outlined,
                                      color:
                                          isMale ? Colors.white : Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "Male",
                                    style: TextStyle(color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isMale = false;
                                });
                              },
                              child: Row(
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    margin: EdgeInsets.only(right: 8),
                                    decoration: BoxDecoration(
                                        color: isMale
                                            ? Colors.transparent
                                            : Color(0XFFFFA500),
                                        border: Border.all(
                                            width: 1,
                                            color: isMale
                                                ? Colors.black
                                                : Colors.transparent),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Icon(
                                      Icons.account_box_outlined,
                                      color:
                                          isMale ? Colors.black : Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "Female",
                                    style: TextStyle(color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Checkbox(
                            checkColor: Colors.black,
                              hoverColor: Colors.orange,
                              activeColor: Color(0XFFFFA500),
                              value: _checkbox,
                              onChanged: (value){
                                setState(() {
                                  _checkbox=!_checkbox;
                                });
                              }
                          ),
                          Container(
                              width: 270,
                              margin: EdgeInsets.only(top: 20),
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                    text: "I have read and agree to the ",
                                    style: TextStyle(color: Colors.black,),

                                    children: [
                                      TextSpan(
                                          text: 'Term of Use ',
                                          style: TextStyle(color: Color(0XFFFFA500),)
                                      ),
                                      TextSpan(
                                          text: 'and'),
                                      TextSpan(
                                        //recognizer: ,
                                        text: " Privacy Policy",
                                        style: TextStyle(color:  Color(0XFFFFA500),),
                                      ),
                                    ]),
                              )),
                        ],
                      ),
                    ]),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
