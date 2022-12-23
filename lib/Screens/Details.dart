import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:number_inc_dec/number_inc_dec.dart';

class Details extends StatefulWidget {
  String name,image;
  Details(this.name,this.image, {Key? key}) : super(key: key);
   
  @override
  State<Details> createState() => _DetailsState(this.name,this.image);
}

class _DetailsState extends State<Details> {
  late String quantity,name,image,confirm;
  var date=(DateFormat.yMMMEd().format(DateTime.now())).toString();
  TextEditingController _controller=TextEditingController();
  

  _DetailsState(this.name,this.image);
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy Stock'),
      ),
      backgroundColor: Colors.orange,
      body: SingleChildScrollView(
        child: SizedBox(
          width: 500.0,
          height: height*0.89,
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
                    Padding(padding: EdgeInsets.fromLTRB(50.0,25.0,50.0,25.0)),
                    Image(image: AssetImage(image),width: 200.0,height: 200.0,),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Text('Name:      $name',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      
                    ),
                    Padding(padding: EdgeInsets.all(20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Quantity: ',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
                        Padding(padding: EdgeInsets.only(right: 4.0)),
                        Expanded(child: NumberInputWithIncrementDecrement(
                          controller: _controller,
                          scaleHeight: 0.5,scaleWidth: 0.6,
                          decIconSize: 32.0,incIconSize: 32.0,
                          initialValue: 1,
                          ),
                        ),
                        
                      ],),),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(50.0,50.0,50.0,25.0),
                        child: ElevatedButton(
                    
                          style: ElevatedButton.styleFrom(elevation: 5,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
                          onPressed: (){
                            confirm=_controller.text;
                            AlertDialog alertDialog=AlertDialog(
                              title: Text('Confirm Purchase',style: TextStyle(fontSize: 20.0),),
                              content: Text('Do you want to buy $confirm shares?',style: TextStyle(fontSize: 18.0),),
                              actions: [
                                TextButton(
                                  onPressed: (){
                                    showDialog(context: context, builder: (context)=>AlertDialog(
                                      title: Text('Purchase Successful',style: TextStyle(fontSize: 20.0),),
                                      content: Text('Thanks for investing',style: TextStyle(fontSize: 20.0),),
                                      actions: [
                                        TextButton(
                                            onPressed: (){Navigator.pushReplacementNamed(context, "/HomePage");}, 
                                            child: Text('Close',style: TextStyle(fontSize: 15.0,color: Colors.black),)),
                                      ],
                                    ));
                                  }, 
                                  child: Text('Confirm',style: TextStyle(fontSize: 15.0,color: Colors.black),)),
                                TextButton(
                                  onPressed: (){Navigator.of(context).pop();}, 
                                  child: Text('Cancel',style: TextStyle(fontSize: 15.0,color: Colors.black),)),
                              ],
                            );
                            showDialog(context: context, builder: (_) => alertDialog);
                          }, 
                          child: Text('Confirm Purchase',style: TextStyle(fontSize: 20.0),
                          ),
                        ),
                      ),
                  ],
                ),
              
            ),
        ),
      ), 
        
    );
  }
}



  

 
