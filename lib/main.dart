import 'package:flutter/material.dart';

void main() {
  runApp(IMC_Calc());
}





class IMC_Calc extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: MyHomePage(),

    );
    throw UnimplementedError();
  }
}

class MyHomePage extends StatefulWidget{
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _infoText = "Inform your data";

  void _resetTextFields(){

  }
  @override
  Widget build(BuildContext context) {

    TextEditingController weightController = TextEditingController();
    TextEditingController heightController = TextEditingController();

    return Scaffold(
      appBar: AppBar(

        centerTitle: true,
        title: Text("IMC Calculator"),
        backgroundColor: Colors.brown,

        actions: [
          IconButton(onPressed:() {}, icon: Icon(Icons.refresh) )
        ],
      ),
      body: Center(
        child: Stack(
          children: [
            Opacity(
              opacity: 0.3,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://th.bing.com/th/id/OIP.nwG6SFXlTazUK6tt2RC-5gHaL2?pid=ImgDet&rs=1'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: [
                        Icon(Icons.person_outline_rounded,
                          color: Colors.brown,
                          size: 140,),
                        TextField(
                          controller: weightController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: "Weight (kg)",
                            labelStyle: TextStyle(
                                color: Colors.brown
                            ),
                          ),
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.brown,
                              fontSize: 30.0),
                        ),

                        TextField(
                          controller: heightController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: "Height (cm)",
                            labelStyle: TextStyle(
                                color: Colors.brown
                            ),
                          ),
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.brown,
                              fontSize: 30.0),
                        ),
                        Container(
                          width: 350,
                          child: ElevatedButton(onPressed: () {},
                            child: Text('Calculate', style: TextStyle(
                                fontSize: 24,
                                color: Colors.brown
                            ),),

                            style: ElevatedButton.styleFrom(
                                primary: Colors.brown
                            ),

                          ),
                        ),
                        Text("You are fat !", style: TextStyle(
                            color: Colors.brown,
                            fontSize: 30)
                          ,)
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}