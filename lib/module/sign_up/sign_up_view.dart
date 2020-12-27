import 'package:fb_clone_ctg/base/base_widget.dart';
import 'package:fb_clone_ctg/constant/route_constant.dart';
import 'package:fb_clone_ctg/constant/validate_key_constant.dart';
import 'package:fb_clone_ctg/module/sign_up/sign_up_bloc.dart';
import 'package:fb_clone_ctg/module/sign_up/sign_up_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  SignUpBloc _signUpBloc;
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  TextEditingController _phoneCtrl = TextEditingController();
  TextEditingController _passCtrl = TextEditingController();
  TextEditingController _rePassCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _signUpBloc = SignUpBloc();
    _signUpBloc.setContext(context);
    return PageContainer(
      // bloc: [Provider.value(value: SignInBloc())],
      hasTopNavBar: false,
      canSearch: false,
      child: MultiProvider(
        providers: [Provider.value(value: SignUpBloc())],
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
            child: Form(
              key: _form,
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
                  getEditorItem(
                      controller: _phoneCtrl,
                      label: "Phonenumber",
                      filter: FilteringTextInputFormatter.digitsOnly,
                      validateFunc: (String validate) {
                        if (validate.isEmpty) {
                          return "Must input";
                        }
                      },
                      keyboardType: TextInputType.number),
                  getEditorItem(
                      controller: _passCtrl,
                      label: "Password",
                      obscure: true,
                      validateFunc: (String validate) {
                        if (validate.isEmpty) {
                          return "Must input";
                        }
                        if (validate.length < 6) {
                          return "Password must have > 6 charactors";
                        }
                        return null;
                      }),
                  getEditorItem(
                      controller: _rePassCtrl,
                      label: "Re-Password",
                      validateFunc: (String validate) {
                        if (validate != _passCtrl.text) {
                          return "Re-password must same password";
                        }
                      },
                      obscure: true),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                    child: SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: RaisedButton(
                          onPressed: () => onSignUp(),
                          child: Text("Sign Up",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                          color: Colors.blue,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                    child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Center(
                        child: Text(
                          "HAVE ACCOUNT? SIGN IN",
                          style: TextStyle(fontSize: 10, color: Colors.blue),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
    ;
  }

  getEditorItem(
      {@required controller,
      filter,
      @required label,
      keyboardType,
      bool obscure = false,
      Function validateFunc}) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
        child: TextFormField(
          style: TextStyle(fontSize: 18, color: Colors.black),
          keyboardType: keyboardType ?? TextInputType.text,
          controller: controller,
          validator: validateFunc,
          // inputFormatters: <TextInputFormatter>[filter],
          obscureText: obscure,
          decoration: InputDecoration(
              labelText: label,

              // snapshot.hasError ? snapshot.error : null,
              labelStyle: TextStyle(color: Colors.black54, fontSize: 15)),
        ));
  }

  Function getValidateFunc(String key, String validate) {
    if (key == ValidateKeyConstant.EMPTY) return () => isEmpty(validate);
    if (key == ValidateKeyConstant.MIN_6) return () => min6(validate);
    if (key == ValidateKeyConstant.MAX_10) return () => max10(validate);
  }

  bool isEmpty(String val) => val.isEmpty;

  bool min6(String val) => val.length >= 6;

  bool max10(String val) => val.length <= 10;

  onSignUp() {
    if (_form.currentState.validate()) {
      _signUpBloc.eventController.sink.add(SignUpEvent(_phoneCtrl.text, _passCtrl.text));
    }
  }
}
