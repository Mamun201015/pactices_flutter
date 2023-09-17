import 'package:flutter/material.dart';

class MyHomepage extends StatelessWidget {
  MyHomepage({Key? key}) : super(key: key);
  TextEditingController mamun = TextEditingController();

  kDateTime(BuildContext context) async {
    DateTime? valu = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1990),
        lastDate: DateTime(2060));
    if (valu != null) {
      mamun.text = "${valu.year}-${valu.month}-${valu.day} ";
    }
    ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DateTimepicker & TextFrom field &stack"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(onPressed: () {}, child: Text("Click Here")),
          TextFormField(
            readOnly: true,
            validator: (value) {
              return null;
            },
            controller: mamun,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 5)),
                disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 5)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber, width: 5)),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 5))),
          ),
          SizedBox(
            height: 26,
          ),
          TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 5)),
                disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 5)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 5)),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 5))),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 5)),
                disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 5)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.pink, width: 5)),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 5))),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 5)),
                disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 5)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.brown, width: 5)),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 5))),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                kDateTime(context);
              },
              child: Text("Show DateTime")),
          SizedBox(
            height: 20,
          ),
          Stack(
            children: [
              Container(
                width: 200,
                height: 150,
                color: Colors.green,
              ),
              Positioned(
                top: 50,
                left: 70,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.access_alarm),
                  color: Colors.red,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
