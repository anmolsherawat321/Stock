// import 'package:flutter/material.dart';


// class Details extends StatelessWidget {

// final String name,email,mobile,collegename,password;



  

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home Page'),
//       ),
//       backgroundColor: Colors.orange,
//       body: Form(
//         child: Card(
//           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
//           child: Column(
//             children: [
//               Padding(padding: EdgeInsets.all(50.0)),
//               Image(image: AssetImage('images/logo.png'),width: 100.0,height: 100.0,),
//               ListTile(
//                 leading: Icon(Icons.people),
//                 title: Text(name),
//               ),
//               ListTile(
//                 leading: Icon(Icons.email),
//                 title: Text(email),
//               ),
//               ListTile(
//                 leading: Icon(Icons.password),
//                 title: Text(password),
//               ),
//               ListTile(
//                 leading: Icon(Icons.phone),
//                 title: Text(mobile),
//               ),
//               ListTile(
//                 leading: Icon(Icons.school),
//                 title: Text(collegename),
//               ),

//             ],
//           ),
//         ), 
//         ),
//     );
//   }
// }