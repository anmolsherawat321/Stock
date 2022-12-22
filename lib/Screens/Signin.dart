import 'package:flutter/material.dart';


class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushReplacementNamed(context, "/HomePage");
        },
        child: Icon(Icons.navigate_next_rounded),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hi,',style: TextStyle(fontSize: 20.0,),),
            Text('Welcome',style: TextStyle(fontSize: 20.0,),),
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
                            return 'Provide an email';
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
                          labelText: 'Password',
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
                        child: Text('Sign In',style: TextStyle(color: Colors.white,fontSize: 20.0),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: GestureDetector(
                        onTap: (){Navigator.pushReplacementNamed(context, "/SignupPage");},
                        child: Text('Create an account?',textAlign: TextAlign.center,style: TextStyle(fontSize: 16.0,color: Colors.blue),),
                      ),
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