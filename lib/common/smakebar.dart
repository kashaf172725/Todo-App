import 'package:flutter/material.dart';

import '../uttils/consts.dart';

showSnack(context, text, {isSuccess = false}) {
  
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(text.toString()),
          backgroundColor: isSuccess ? MyColors.purple : MyColors.red,
        ));
}