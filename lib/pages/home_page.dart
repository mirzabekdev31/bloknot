import 'package:bloknot/pages/detail_page.dart';
import 'package:bloknot/pages/servise/bloknot.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Qidiruv..."),
        actions: [
          Icon(
            Icons.keyboard_voice,size: 30,
          ),
          SizedBox(width: 40,),
          Icon(Icons.add_to_drive,size: 30,),
          SizedBox(width: 20,),
        ],
      ),
      body:ListView.builder(
          itemCount: Translate.translate.length,
          itemBuilder: (BuildContext contex,int index){
            return iteam(Translate.translate[index]);
          }
      ),
      drawer: Drawer(),
    );
  }

  Widget iteam(Translate translate){
    return InkWell(
      onTap: (){
        setState(() {
          Navigator.pushNamed(context, DetalePage.id,arguments: {
            'translate':translate
          });
        });
      },
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(translate.avans,style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text(translate.agent,style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)
            ],
          ),
        ),
      ),
    );
  }
}
