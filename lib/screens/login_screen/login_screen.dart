import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
   String email;
   String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
      ),
      body: Container(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              emailField(),
              passwordField(),
              submitButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration:
          InputDecoration(labelText: 'Email', hintText: "example@mail.com"),
      validator: (String value) {
        if (!value.contains('@')) {
          return 'Must contain @';
        }
        return null;
      },
      onSaved: (String value){
        email = value;
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Password',
      ),
      validator: (String value) {
        if (value.length < 4) {
          return 'At least 4 characters';
        }
        return null;
      },
      onSaved: (String value){
        password = value;
      },
    );
  }

  Widget submitButton() {
    return RaisedButton(
      onPressed: () {
        if(formKey.currentState.validate()){
          formKey.currentState.save();
        }
        print("Email: $email; Password: $password;");
      },
      child: Text("Submit"),
    );
  }
}
