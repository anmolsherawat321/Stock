import 'package:flutter/material.dart';


class Details extends StatefulWidget {
  String name,image;
  Details(this.name,this.image, {Key? key}) : super(key: key);
   
  @override
  State<Details> createState() => _DetailsState(this.name,this.image);
}

class _DetailsState extends State<Details> {
  late String quantity,date,name,image;

  _DetailsState(this.name,this.image);
  @override
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy Stock'),
      ),
      backgroundColor: Colors.orange,
      body: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(50.0)),
              Image(image: AssetImage(image),width: 100.0,height: 100.0,),
              Text(name),

            ],
          ),
        ), 
        
    );
  }
}



  

 
