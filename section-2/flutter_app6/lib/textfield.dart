import 'package:flutter/material.dart';

class TextFieldUse extends StatefulWidget {
  const TextFieldUse({Key? key}) : super(key: key);

  @override
  State<TextFieldUse> createState() => _TextFieldUseState();
}

class _TextFieldUseState extends State<TextFieldUse> {
  late TextEditingController _emailController;
  late FocusNode _focusNode;
  int _maxlinecount = 1;
  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController(text: 'deniz@gmail.com');
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {
        if (_focusNode.hasFocus) {
          _maxlinecount = 3;
        } else {
          _maxlinecount = 1;
        }
      });
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: TextField(
                    controller: _emailController,
                    focusNode: _focusNode,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.go,
                    autofocus: true,
                    maxLines: _maxlinecount,
                    maxLength: 20,
                    onChanged: (value) {
                      setState(() {
                        if (value.length > 3) {
                          _emailController.value = TextEditingValue(
                            text: value,
                            selection:
                                TextSelection.collapsed(offset: value.length),
                            composing: TextRange.empty,
                          );
                        }
                      });
                    },
                    cursorColor: Colors.pink,
                    decoration: InputDecoration(
                      labelText: 'Label Text',
                      labelStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                      hintText: 'Email giriniz',
                      prefixIcon: Icon(Icons.email),
                      suffixIcon: Icon(Icons.alarm_add_outlined),
                      filled: true,
                      fillColor: Colors.teal.shade100,
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(18.0))),
                    ),
                    onSubmitted: (value) {
                      print("Submit :  $value");
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(_emailController.text),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.go,
                    autofocus: true,
                    maxLines: 1,
                    maxLength: 20,
                    onChanged: (value) {
                      if (value.length > 3) {
                        print(value);
                      }
                    },
                    cursorColor: Colors.pink,
                    decoration: InputDecoration(
                      labelText: 'Label Text',
                      labelStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                      hintText: 'Email giriniz',
                      prefixIcon: Icon(Icons.email),
                      suffixIcon: Icon(Icons.alarm_add_outlined),
                      filled: true,
                      fillColor: Colors.teal.shade100,
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(18.0))),
                    ),
                    onSubmitted: (value) {
                      print("Submit :  $value");
                    },
                  ),
                )
              ],
            );
           }
}
