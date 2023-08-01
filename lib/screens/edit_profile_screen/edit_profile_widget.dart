import 'package:flutter/material.dart';

import '../../common_widget/common_textfield.dart';
import '../../utils/string_res.dart';

Widget textFiledWidget(){
  return  textField(
    hintText: StringRes.emailTextFieldHintText,
    prefixIcon: const Icon(Icons.email),
    fillColor: Colors.blueGrey.shade50,
    filled: true,
    obscureText: false,
  );
}