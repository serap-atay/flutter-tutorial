import 'package:flutter/material.dart';
// import 'package:email_validator/email_validator.dart';

class TextFormFieldUse extends StatefulWidget {
  const TextFormFieldUse({Key? key}) : super(key: key);

  @override
  State<TextFormFieldUse> createState() => _TextFormFieldUseState();
}

class _TextFormFieldUseState extends State<TextFormFieldUse> {
  String _email = '', _username = '', _password = '';
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Textform kullanımı"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  TextFormField(
                    initialValue: "deniz1",
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Username",
                      hintText: "Username giriniz",
                      errorStyle: TextStyle(color: Colors.orange),
                    ),
                    onSaved: (newValue) => _username = newValue!,
                    validator: (value) {
                      if (value!.length < 4) {
                        print("username alanaı 4 karakterden fazla olmalı");
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    initialValue: "Deniz@gmail.com",
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Email",
                        hintText: "Email giriniz"),
                    onSaved: (newValue) => _email = newValue!,
                    validator: (email) {
                      if (email!.isEmpty) {
                        return "Email boş olamaz";
                      // }else if (!EmailValidator.validate(email)) {
                      //   return "Gecerli bir mail giriniz";
                      // } else {
                      //   return email;
                      }
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    initialValue: "Deniz@gmail.com",
                    onSaved: (newValue) => _password = newValue!,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Email",
                        hintText: "Email giriniz"),
                    validator: (password) {
                      if (password!.length < 6) {
                        return "Sifre 6 karakterden küçük olmaz";
                      } else {
                        return password;
                      }
                    },
                    
                  ),
                                    SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      bool validate = _formKey.currentState!.validate();
                      if (validate) {
                        _formKey.currentState!.save();
                        String result = "$_username\n$_email\n$_password";
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(result),
                        ));
                      }
                      _formKey.currentState!.reset();
                    },
                    child: Text("Onayla"),
                  ),
                  
                ],
                
              ),
            ),
          ),
        ));
  }
}
