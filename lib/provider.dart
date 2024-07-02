import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:developer';

import 'package:testing_applicaation/model.dart';

class providerdata extends ChangeNotifier {
  Model? Prodectdata;
  String name = "farseen";

  postdata(Email, pass, BuildContext context) async {
    http.Response response = await http.post(
        Uri.parse('http://202.21.38.91/CerobizApi/Account/Login'),
        headers: {
          'Content-Type': 'application/json',
          'Accept': '*/*',
        },
        body: jsonEncode({
          "UName": Email,
          "Pwd": pass,
          "PeriodID": "-1",
          "token": "1",
        }));

    if (response.statusCode == 200) {
      Prodectdata = modelFromJson(response.body);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("authentication successful"),
        backgroundColor: Colors.green,
        elevation: 10,
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.all(20),
      ));
      log("12");
      var data = jsonDecode(response.body);
      log(data.toString());

      Prodectdata = modelFromJson(response.body);
    } else if (response.statusCode == 401) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("auth faild"),
        backgroundColor: Colors.red,
        elevation: 10,
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.all(20),
      ));
    } else {
      log(response.body.toString());
      log(response.statusCode.toString());
      log("123");
    }
  }
}
