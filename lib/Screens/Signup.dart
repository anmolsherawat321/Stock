import 'package:flutter/material.dart';


class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 20.0),
                      child: TextFormField(
                        validator: (input){
                          if(input!.isEmpty){
                            return 'Enter Name';
                          }
                        },
                        decoration: InputDecoration(
                          labelText: 'Name',
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
                        ),
                        
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20.0),
                      child: TextFormField(
                        validator: (input){
                          if(input!.isEmpty){
                            return 'Enter email';
                          }
                        },
                        decoration: InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
                        ),
                        
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20.0),
                      child: TextFormField(
                        validator: (input){
                          if(input!.length<6){
                            return 'Password should be 6 char atleast';
                          }
                        },
                        decoration: InputDecoration(
                          labelText: 'Enter Password',
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
                        ),
                      
                        obscureText: true,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20.0),
                      child: TextFormField(
                        validator: (input){
                          if(input!.length<6){
                            return 'Password should be 6 char atleast';
                          }
                        },
                        decoration: InputDecoration(
                          labelText: 'Confirm Password',
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
                        ),
                      
                        obscureText: true,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20.0),
                      child: MaterialButton(
                        padding: EdgeInsets.fromLTRB(100.0, 20.0, 100.0, 20.0),
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                        onPressed: (){},
                        child: Text('Sign Up',style: TextStyle(color: Colors.white,fontSize: 18.0),),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 20.0)),
                    Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Already have an account? ',style: TextStyle(fontSize: 16.0,color: Colors.black),),
                              GestureDetector(
                                child: Text('Sign In',style: TextStyle(fontSize: 16.0,color: Colors.blue),),
                                onTap: (){Navigator.pushReplacementNamed(context, "/SigninPage");},
                                ),
                            ],
                          ),
                      
                    
                  ],
                ),
              
            ),
          ],
        ),
      ),
    );
  }
}