import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:saloon_vip/GUI/aboutUs/aboutUs.dart';
import 'package:saloon_vip/GUI/home/web.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color.fromRGBO(156, 71, 159, 1),
        title: new Text("Salone VIP"),
        centerTitle: true,
        toolbarHeight: 80,
      ),
      body: new Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new Container(
                width: width*0.8,
                height: 100,
                child: new ElevatedButton(
                  child: new Row(mainAxisAlignment: MainAxisAlignment.start,children: [new SizedBox(width: width*0.1,),new Icon(Icons.home,color: Colors.white,),new SizedBox(width: width*0.1,),new Text("Home" , textScaleFactor: 1,)],),
                  onPressed: (){
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (builder) => Web()), (route) => false);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all( Color.fromRGBO(156, 71, 159, 1),),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)))
                  ),
                ),
              ),
              new Text("\n",textScaleFactor: 1,),
              new Container(
                width: width*0.8,
                height: 100,
                child: new ElevatedButton(
                  child: new Row(mainAxisAlignment: MainAxisAlignment.start,children: [new SizedBox(width: width*0.1,),new Icon(Icons.call,color: Colors.white,),new SizedBox(width: width*0.1,),new Text("Call Us" , textScaleFactor: 1,)],),
                  onPressed: () async {
                  await FlutterPhoneDirectCaller.callNumber("+966533312389");
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all( Color.fromRGBO(156, 71, 159, 1),),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)))
                  ),
                ),
              ),
              new Text("\n",textScaleFactor: 1,),
              new Container(
                width: width*0.8,
                height: 100,
                child: new ElevatedButton(
                  child: new Row(mainAxisAlignment: MainAxisAlignment.start,children: [new SizedBox(width: width*0.1,),new Icon(Icons.info,color: Colors.white,),new SizedBox(width: width*0.1,),new Text("About Us" , textScaleFactor: 1,)],),
                  onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (builder) => AboutUs()));
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all( Color.fromRGBO(156, 71, 159, 1),),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)))
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
