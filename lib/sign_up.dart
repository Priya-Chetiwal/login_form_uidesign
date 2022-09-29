import 'package:flutter/material.dart';

class sign_up extends StatefulWidget {
  const sign_up({Key? key}) : super(key: key);

  @override
  State<sign_up> createState() => _sign_upState();
}

class _sign_upState extends State<sign_up> {
  @override
  Widget build(BuildContext context) {
    var form_key;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assest/images/grey back.jpg'),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(children: [
          Form(
            key: form_key,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 180, left: 50, right: 50),
                  child: SizedBox(
                    height: 80,
                    width: 300,
                    child: TextFormField(
                      decoration: InputDecoration(
                        label: Text(
                          "Phone number,username or email",
                          style: TextStyle(color: Colors.black),
                        ),
                        hintText: "Enter your Phone number,username or email",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 3),
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                      validator: (value) {
                        if (value == null ||
                            !RegExp("^[ a-zA-Z0-9.!3%*&+-?^]+@[a-z]+\.[a-z]+")
                                .hasMatch(value)) {
                          return "enter your name";
                        }
                        {
                          return null;
                        }
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: SizedBox(
                    height: 80,
                    width: 300,
                    child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.visibility_off),
                        label: Text("Password"),
                        hintText: "Enter your Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      validator: (value) {
                        if (value == null ||
                            !RegExp("^[ a-zA-Z0-9.!3%*&+-?^]+@[a-z]+\.[a-z]+")
                                .hasMatch(value)) {
                          return "enter your password";
                        }
                        {
                          return null;
                        }
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: SizedBox(
                    height: 50,
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () {
                        if (form_key.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                "Log In",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                            ),
                          );
                        }
                      },
                      child: Text("Log In"),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: SizedBox(
                    height: 50,
                    width: 300,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(fontSize: 14, color: Colors.blue),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Continue as Priya Chetiwal",
                      style: TextStyle(fontSize: 14, color: Colors.blue),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 195,
                      left: (MediaQuery.of(context).size.width / 2) - 100),
                  child: Row(
                    children: <Widget>[
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Don't have an account?",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          )),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Sign up.",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.blue,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
