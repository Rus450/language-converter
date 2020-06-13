import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  String dropdownvalue = 'chosse language';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Language Converter')),
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                height: 200.0,
                margin: EdgeInsets.all(25.0),
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                  child:TextField(
                  decoration: InputDecoration(
                    hintText: 'Type here...',
                    ),
                  ),
                ),
              Container(
                margin: EdgeInsets.all(5.0),
                child:Icon(
                  Icons.arrow_drop_down_circle,
                  color: Colors.black12,
                ),
              ),
              Container(

                child: DropdownButton(
                  value: 'Hindi',
                    items: [DropdownMenuItem(child: Text('Hindi'),
                      value: 'Hindi',),
                      DropdownMenuItem(child: Text('English'),
                        value: 'English',),
                      DropdownMenuItem(child: Text('German'),
                        value: 'German',),
                    ],
                    onChanged: (value){
                      print(value);
                    }),
              ),
              Container(
                height: 200.0,
                margin: EdgeInsets.all(25.0),
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child:TextField(
                  decoration: InputDecoration(
                    hintText: 'Convert',
                  ),
                ),
              ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0),
            child: Material(
              elevation: 5.0,
              color: Colors.black,
              borderRadius: BorderRadius.circular(10.0),
              child: MaterialButton(
                onPressed: (){},
                minWidth: 200.0,
                child: Text(
                  'Convert',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
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




