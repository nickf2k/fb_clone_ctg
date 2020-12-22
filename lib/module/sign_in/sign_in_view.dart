import 'package:fb_clone_ctg/base/base_widget.dart';
import 'package:fb_clone_ctg/constant/route_constant.dart';
import 'package:fb_clone_ctg/constant/spref_constant.dart';
import 'package:fb_clone_ctg/module/sign_in/sign_in_bloc.dart';
import 'package:fb_clone_ctg/module/sign_in/sing_in_event.dart';
import 'package:fb_clone_ctg/shared/entities/login_result.dart';
import 'package:fb_clone_ctg/untils/spref_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  SignInBloc bloc = new SignInBloc();
  TextEditingController _userController = new TextEditingController();
  TextEditingController _passController = new TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_){
      if (!SpUtil.getString(SPrefCacheConstant.KEY_TOKEN).isEmpty){
        Navigator.pushNamedAndRemoveUntil(context, RouteConstant.HOME, (Route<dynamic> route) => false);
        bloc.setContext(context);

      }
    });


  }
  @override
  Widget build(BuildContext context) {
    SignInBloc signInBloc = SignInBloc();
    return PageContainer(
      bloc: [Provider.value(value: SignInBloc())],
      hasTopNavBar: false,
      canSearch: false,
      child: MultiProvider(
        providers: [Provider.value(value: SignInBloc())],
        child: SingleChildScrollView(
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
                      child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/600px-Facebook_Logo_%282019%29.png"),
                          radius: 28),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                    child: TextField(
                      style: TextStyle(fontSize: 18, color: Colors.black),
                      controller: _userController,
                      decoration: InputDecoration(
                          labelText: "USESERNAME",
                          errorText: "err",
                          // snapshot.hasError ? snapshot.error : null,
                          labelStyle: TextStyle(
                              color: Colors.black54, fontSize: 15)),
                    )),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                  child: Stack(
                    alignment: AlignmentDirectional.centerEnd,
                    children: <Widget>[
                      TextField(
                        style: TextStyle(fontSize: 18, color: Colors.black),
                        controller: _passController,
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: "PASSWORD",
                            errorText: "error",
                            // snapshot.hasError ? snapshot.error : null,
                            labelStyle:
                                TextStyle(color: Colors.black54, fontSize: 15)),
                      ),
                      // StreamBuilder(
                      //     stream: bloc.passStream,
                      //     builder: (context, snapshot) => ),
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
                        onPressed: () => onSignInClick(signInBloc),
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

  void onSignInClick(SignInBloc bloc) {
    // if (bloc.isValidInfo(_userController.text, _passController.text)) {
    //   print("dang nhap dung");
    //   //chuyen huong
    // }
    bloc.eventController.sink.add(SignInEvent(
        phoneNumber: _userController.text, password: _passController.text));
    // Navigator.pushReplacementNamed(context, RouteConstant.HOME);
  }
}
