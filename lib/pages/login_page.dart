import 'package:carros/widgets/app_button.dart';
import 'package:carros/widgets/app_text.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final _tLogin = TextEditingController();

  final _tSenha = TextEditingController();

  final _focusSenha = FocusNode();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login'),
          centerTitle: true,
        ),
        body: _body());
  }

  _body() {
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[
            AppText('Login', 'Digite o Login', controller: _tLogin, validator: _validateLogin, keyboardType:TextInputType.emailAddress, nextFocus: _focusSenha),
            SizedBox(height: 30),
            AppText('Senha', 'Digite a Senha', obscure: true, controller: _tSenha, validator: _validateSenha, keyboardType:TextInputType.number, focusNode: _focusSenha ),
            SizedBox(height: 30),
            AppButton('Login', onPressed: _onClickLogin)
          ],
        ),
      ),
    );
  }

  void _onClickLogin() {

    if(! _formKey.currentState.validate()){
      return;
    }

    String login = _tLogin.text;
    String senha = _tSenha.text;
    print('$login $senha');
  }

  String _validateLogin(text) {
    if(text.isEmpty){
      return "Digite o Login";
    }
    return null;
  }

  String _validateSenha(text) {
    if(text.isEmpty){
      return "Digite a Senha";
    }
    if(text.length < 3){
      return "A senha precisa ter ao menos 3 caracteres";
    }
    return null;
  }
}
