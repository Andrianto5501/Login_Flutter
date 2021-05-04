import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Login Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget _submitButton() {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 15),
      alignment: Alignment.center,
      child: new MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20),
        child: new Text('LOGIN'),
        textColor: Colors.white,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30.0),
        ),
        color: Color(0xffeb5867),
        onPressed: () {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Container(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                width: 100,
                margin: EdgeInsets.all(50),
                child: Image.asset('../assets/logo.png')),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Username',
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(Icons.vpn_key_rounded),
                    ),
                    obscureText: true,
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      alignment: Alignment.centerRight,
                      child: Text("Forgot Password?",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.grey[600],
                          ))),
                  _submitButton(),
                  Row(children: <Widget>[
                    Expanded(child: Divider()),
                    Container(
                      margin: EdgeInsets.all(20),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Center(
                        child: Text(
                          'OR',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    Expanded(child: Divider()),
                  ]),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'New User? ',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Register',
                          style: TextStyle(
                              color: Color(0xffeb5867),
                              fontSize: 13,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          ' Here',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
