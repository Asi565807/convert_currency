import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Stack(
        children: [
          Container(
            color: Color(0xff37517E),
            height: 567,
            width: double.infinity,
            child: Container(
              margin: EdgeInsets.all(40),
              child: Padding(
                padding: const EdgeInsets.only(left: 50, top: 416, bottom: 20),
                child: Text(
                  "Currency Converter",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(12.0))),
            margin: EdgeInsets.only(top: 500, right: 15, left: 15, bottom: 72),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    "Amount",
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Amount',
                        ),
                      ),
                    ),
                    Text("INR"),
                    DropdownButton(items: null, onChanged: null)
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Convert to",
                      style: TextStyle(color: Colors.black54),
                    ),
                    Expanded(
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Text("USD"),
                    DropdownButton(items: null, onChanged: null)
                  ],
                ),
                Text(
                  "Amount",
                  style: TextStyle(color: Colors.black54),
                ),
                Row(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Next",
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                    Icon(Icons.arrow_right_alt_sharp)
                  ],
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
