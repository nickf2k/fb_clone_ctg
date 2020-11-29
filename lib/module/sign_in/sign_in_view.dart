import 'package:fb_clone_ctg/module/sign_in/sign_in.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  SignInBloc bloc = new SignInBloc();
  TextEditingController _userController = new TextEditingController();
  TextEditingController _passController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                  child: Center(
                    child: Container(
                      width: 70,
                      height: 70,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child:CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/600px-Facebook_Logo_%282019%29.png"),
                          radius: 28),
                    ),
                  ),
                ),

                Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                    child: StreamBuilder(
                        stream: bloc.userStream,
                        builder: (context, snapshot) => TextField(
                          style: TextStyle(fontSize: 18, color: Colors.black),
                          controller: _userController,
                          decoration: InputDecoration(
                              labelText: "USESERNAME",
                              errorText: snapshot.hasError ? snapshot.error: null ,
                              labelStyle: TextStyle(
                                  color: Colors.black54, fontSize: 15)),
                        ))),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                  child: Stack(
                    alignment: AlignmentDirectional.centerEnd,
                    children: <Widget>[
                      StreamBuilder(
                          stream: bloc.passStream,
                          builder: (context, snapshot)=>    TextField(
                            style: TextStyle(fontSize: 18, color: Colors.black),
                            controller: _passController,
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: "PASSWORD",
                                errorText: snapshot.hasError ? snapshot.error: null ,
                                labelStyle:
                                TextStyle(color: Colors.black54, fontSize: 15)),
                          )),

                      Text("SHOW",
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: 12))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                  child: SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: RaisedButton(
                        onPressed: onSignInClick,
                        child: Text("Sign In",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "NEW USER? SIGN UP",
                        style: TextStyle(fontSize: 10, color: Colors.black54),
                      ),
                      Text(
                        "FORGOT PASSWORD?",
                        style: TextStyle(fontSize: 10, color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onSignInClick() {

    if(bloc.isValidInfo(_userController.text,_passController.text)){
      print("dang nhap dung");
      //chuyen huong
    }
  }

}
