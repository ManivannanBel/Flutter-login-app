import 'package:flutter/material.dart';
import '../mixins/validation_mixin.dart';

class LoginScreen extends StatefulWidget{
  createState(){
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> with ValidateMixin{

  final formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';

  Widget build(context){
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child:  Column(
        children: <Widget>[
          emailField(),
          passwordField(),
          Container(margin: EdgeInsets.only(top : 25.0)),
          submitButton(),
        ],
      ),
      ),
    );
  }

  Widget emailField(){
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'example@mail.com'
      ),
      validator: validateEmail,
      onSaved: (value){
        email = value;
      },
    );
  }

  Widget passwordField(){
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'password'
      ),
      validator: validateEmail,
      onSaved: (value){
        password = value;
      },
    );
  }

  Widget submitButton(){
    return RaisedButton(
      color: Colors.lightBlue,
      child: Text('Submit'),
      onPressed: (){
        if(formKey.currentState.validate()){
          formKey.currentState.save();
        }
      },
    );
  }

}