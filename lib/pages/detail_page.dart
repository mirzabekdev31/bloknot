import 'package:bloknot/pages/servise/bloknot.dart';
import 'package:flutter/material.dart';
class DetalePage extends StatefulWidget {
  const DetalePage({Key? key}) : super(key: key);
  static final String id="detail_page";

  @override
  _DetalePageState createState() => _DetalePageState();
}

class _DetalePageState extends State<DetalePage> {
  @override
  Widget build(BuildContext context) {
    final args=ModalRoute.of(context)!.settings.arguments as Map<String,Translate>;

    Translate?  translate=args["translate"];

    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page",style: TextStyle(color: Colors.white,fontSize: 25),),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              translate!.avans,style: TextStyle(color: Colors.blue,fontSize: 40,fontWeight: FontWeight.bold),
            ),
            //SizedBox(height: 5,),
            Text(
              translate.agent,style: TextStyle(color: Colors.yellow[700],fontSize: 26,fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20,),
            Text(
              translate!.information,style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),
            ),
          ],
        )
      ),
    );
  }
}
