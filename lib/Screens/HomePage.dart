import 'package:flutter/material.dart';
import 'package:stock/Screens/Details.dart';
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
    Stock('images/nike.png','Nike','Nike Inc.',200,500, 40, '4 weeks', 9900, 8600, 1.4),
    Stock('images/infosys.png','Infosys','NSE of India Ltd.',300,200, 30, '2 weeks', 1500, 1400, 0.9),
    Stock('images/bhel.png','BHEL','Bharat Heavy Electricals Ltd.',500,500, 20, '1 month', 1100, 1000, 2.2),
    Stock('images/hdfc.png','HDFC','NSE of India Ltd..',200,400, 50, '3 weeks', 1900, 1600, 1.3),
    Stock('images/tcs.png','TCS.','Tata Consultancy Ltd.',800,200, 60, '2 month', 3500, 3200, 1.9),
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
        drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('ABC'), 
              accountEmail: Text('ABC@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text('A'),
                ),
              ),
              ListTile(
                title: Text('Account'),
                trailing: Icon(Icons.person),
              ),
              ListTile(
                title: Text('Invest'),
                trailing: Icon(Icons.money),
              ),
              ListTile(
                title: Text('News'),
                trailing: Icon(Icons.newspaper),
              ),
              ListTile(
                title: Text('Settings'),
                trailing: Icon(Icons.settings),
              ),
              ListTile(
                title: Text('More'),
                trailing: Icon(Icons.more),
              ),
              ListTile(
                title: Text('Log Out'),
                trailing: Icon(Icons.logout_outlined),
                onTap: () => Navigator.pushReplacementNamed(context, "/SigninPage"),
              ),
          ],
        ),
      ),
        body: ListView.builder(
                shrinkWrap: true,
                itemCount: listStock.length,
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
                                  padding: const EdgeInsets.all(8),
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
                                        Padding(padding: EdgeInsets.fromLTRB(8.0, 0, 8.0, 0)),
                                        Text('Sold- ${listStock[i].sold}',style: TextStyle(fontSize: 15.5)),
                                        ],
                                      ),
                                      
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(right: 6.5),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('MPQ- ${listStock[i].mpq}',style: TextStyle(fontSize: 13)),
                                                Padding(padding: EdgeInsets.fromLTRB(0, 2.1, 0, 2.1)),
                                                Text('Buy Price- ₹${listStock[i].buyprice}',style: TextStyle(fontSize: 13)),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 6.5),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('ATS- ${listStock[i].ats}',style: TextStyle(fontSize: 13)),
                                                Padding(padding: EdgeInsets.fromLTRB(0, 2.1, 0, 2.1)),
                                                Text('Profit- ${listStock[i].profit} %',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Color.fromARGB(255, 197, 188, 15))),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(15,0,0,0),
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(maximumSize: Size(55.0, 34.0),minimumSize: Size(55.0, 34.0)),
                                              onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Details(listStock[i].name,listStock[i].img)));}, 
                                              child: Text('Buy',style: TextStyle(fontSize: 13.5)),),
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