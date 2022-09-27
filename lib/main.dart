import 'package:flutter/material.dart';

void main() {
  runApp(IMC_Calc());
}

const List<String> list = <String>['Kid', 'Teenager', 'Adult', 'Pregnant'];

class IMC_Calc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _infoText = "Inform your data";

  void _resetTextFields() {}
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    TextEditingController coffeeController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Coffee Calculator"),
        backgroundColor: Colors.brown,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.refresh))],
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
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                      Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(

                        children: [
                          DropdownButton<String>(

                            value: dropdownValue,
                            icon: const Icon(Icons.arrow_downward),
                            elevation: 16,
                            style: const TextStyle(color: Colors.brown),
                            underline: Container(
                              height: 2,
                              color: Colors.brown,
                            ),
                            onChanged: (String? value) {
                              // This is called when the user selects an item.
                              setState(() {
                                dropdownValue = value!;
                              });
                            },
                            items: list
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                          TextField(
                            controller: coffeeController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: "Coffee (mg)",
                              labelStyle: TextStyle(color: Colors.brown),
                            ),
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.brown, fontSize: 30.0),
                          ),
                          Container(
                            width: 350,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'Calculate',
                                style:
                                    TextStyle(fontSize: 24, color: Colors.white),
                              ),
                              style:
                                  ElevatedButton.styleFrom(primary: Colors.brown),
                            ),
                          ),
                          Text(
                            "You are fat !",
                            style: TextStyle(color: Colors.brown, fontSize: 30),
                          )
                        ],
                      ),

                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
