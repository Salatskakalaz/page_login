import 'package:flutter/material.dart';

import 'HomePage.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/pop11.jpg'),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.deepPurpleAccent.withOpacity(0.3),
              Colors.purpleAccent.withOpacity(0.5)
            ])),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  CircleAvatar(
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    radius: 30.0,
                    backgroundColor: Colors.white12,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    'Member Login',
                    style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 32.0),
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white70),
                      ),
                      prefixIcon: Icon(Icons.person, color: Colors.white70),
                      border: OutlineInputBorder(),
                      hintText: 'Username',
                      hintStyle: TextStyle(color: Colors.white70),
                      contentPadding: EdgeInsets.all(0.0)),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 32.0),
                child: TextField(
                  obscureText: true,
                  //obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock, color: Colors.white70),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70),
                    ),
                    border: OutlineInputBorder(),
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.white70),
                    contentPadding: EdgeInsets.all(0.0),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Radio(
                          value: 2,
                          groupValue: 2,
                          onChanged: (v) {},
                          activeColor: Colors.white,
                        ),
                        Text(
                          'Remeber me ',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Text(
                      'Forget password',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 32.0),
                child: OutlineButton(
                  borderSide: BorderSide(
                    color: Colors.white70,
                  ),
                  onPressed: () {Route route =  MaterialPageRoute(builder: (context) => HomePage());
                  Navigator.push(context, route);
                  },
                  child: Text(
                    'SIGN IN',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Column(
                children: <Widget>[

                  Chip(
                    backgroundColor: Colors.lightBlue,
                    label: Text(
                      'Create a account',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  offset: Offset(0, 2),
                                  blurRadius: 6.0,
                                ),
                              ],
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/facebook.jpg',
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  offset: Offset(0, 2),
                                  blurRadius: 6.0,
                                ),
                              ],
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/google.jpg',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
