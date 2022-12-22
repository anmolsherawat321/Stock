import 'package:flutter/material.dart';
import '../Stock.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Stock> listStock=[
    Stock('images/nifty.png','Nifty','NSE of India Ltd.',100,200, 50, '3 weeks', 4000, 3500, 1.2),
    Stock('images/titan.png','Gold','1 g, Titan Company Ltd.',400,700, 70, '1 month', 5000, 4500, 2.3),
    Stock('images/silvercorp.png','Silver','100g, Silvercorp Metals Inc.',500,900, 40, '2 weeks', 7000, 6700, 1.8),
    Stock('images/britannia.png','Britannia','Britannia Industries Ltd.',200,250, 30, '2 month', 2000, 1500, 1.1),
    Stock('images/nike.png','Nike','Nike Inc.',800,600, 60, '4 week', 9900, 8600, 1.4),
    
  ];


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(title: Text('Stock'),
        bottom: TabBar(tabs: [
          MaterialButton(onPressed: (){},child: Text('Available Items',style: TextStyle(color: Colors.white,fontSize: 16.0),),),
          MaterialButton(onPressed: (){},child: Text('Sold Items',style: TextStyle(color: Colors.white,fontSize: 16.0),),),
        ]),
        ),
        drawer: Drawer(),
        body: ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context,i){
                  return Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.black)),
                    
                      elevation: 2.0,
                      child: 
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10.0),
                                    child: Image(fit: BoxFit.contain,height: 50.0,width: 70.0,image: AssetImage(listStock[i].img),),
                                  ),
                                  Text('MRP- ₹${listStock[i].mrp}',style: TextStyle(fontSize: 13.5),),
                                ],
                              ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                        Text(listStock[i].name,style: TextStyle(fontSize: 16.5,fontWeight: FontWeight.bold)),
                                        Text(', ${listStock[i].details}',style: TextStyle(fontSize: 16.5,fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                      Padding(padding: EdgeInsets.fromLTRB(0, 5.0, 0, 5.0)),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                        Text('Available Quantity- ${listStock[i].available}',style: TextStyle(fontSize: 15.5)),
                                        Padding(padding: EdgeInsets.fromLTRB(5.0, 0, 5.0, 0)),
                                        Text('Sold- ${listStock[i].sold}',style: TextStyle(fontSize: 15.5)),
                                        ],
                                      ),
                                      
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(right: 6.0),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('MPQ- ${listStock[i].mpq}',style: TextStyle(fontSize: 13.5)),
                                                Padding(padding: EdgeInsets.fromLTRB(0, 2.1, 0, 2.1)),
                                                Text('Buy Price- ₹${listStock[i].buyprice}',style: TextStyle(fontSize: 13.5)),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 6.0),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('ATS- ${listStock[i].ats}',style: TextStyle(fontSize: 13.5)),
                                                Padding(padding: EdgeInsets.fromLTRB(0, 2.1, 0, 2.1)),
                                                Text('Profit- ${listStock[i].profit} %',style: TextStyle(fontSize: 13.5)),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(12.5,0,0,0),
                                            child: ElevatedButton(onPressed: (){}, child: Text('Buy',style: TextStyle(fontSize: 13.5)),),
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
                }),
            
          
      ),
    );
  }
}