import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Details extends StatefulWidget {
  String name,image;
  Details(this.name,this.image, {Key? key}) : super(key: key);
   
  @override
  State<Details> createState() => _DetailsState(this.name,this.image);
}

class _DetailsState extends State<Details> {
  late String quantity,name,image;
  var date=(DateFormat.yMMMEd().format(DateTime.now())).toString();

  _DetailsState(this.name,this.image);
  @override
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy Stock'),
      ),
      backgroundColor: Colors.orange,
      body: Container(
        width: 500.0,
        child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ListTile(
                      leading: Icon(Icons.calendar_month),
                      title: Text(date,style: TextStyle(color: Colors.black),),
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(50.0,20.0,50.0,5.0)),
                  Image(image: AssetImage(image),width: 200.0,height: 200.0,),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          Text('Name: $name',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    
                  ),
                  Padding(padding: EdgeInsets.all(20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Quantity: ',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
                      
                    ],),),
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: ElevatedButton(onPressed: (){}, child: Text('Confirm Purchase',style: TextStyle(fontSize: 20.0),)),
                    ),
                ],
              ),
            
          ),
      ), 
        
    );
  }
}



  

 
