import 'package:flutter/material.dart';

void main() => runApp(Myapp());

// ignore: non_constant_identifier_names
class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "home page",
      home: Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 200,

                // width: 1500,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(500))),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      bottom: 20,
                      left: 20,
                      child: Text(
                        "LOGIN",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Email", prefixIcon: Icon(Icons.email)),
                ),
              ),
              Container(
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "password", prefixIcon: Icon(Icons.vpn_key)),
                ),
              ),
              // GestureDetector(
              //   onTap: () {
              //     ScaffoldMessenger.of(context)
              //         .showSnackBar(SnackBar(content: Text("Loged in")));
              //     Container(
              //       color: Colors.blue,
              //       child: Center(
              //         child: Text("Log in"),
              //       ),
              //     );
              //   },
              // )
            ],
          ),
        ),
      ),
    );
  }
}
