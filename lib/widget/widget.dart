import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';




InputDecoration textFieldInputDecoration(String hintText,IconData icon) {
  return InputDecoration(
    hintText: hintText,
    suffixIcon: Icon(icon, color: Color(0xff687089)),
    hintStyle: TextStyle(color: Color(0xff687089)),
    filled: true,
    fillColor: Color(0xffc6c6c6),
    focusedBorder: OutlineInputBorder(),
    enabledBorder: OutlineInputBorder(), // fix border size
  );
}



TextStyle mediumTextStyle() {
  return TextStyle(
    color: Colors.white,
    fontSize: 16,
  );
}

Row orDevider (){
  return Row(children: <Widget>[
    Expanded(
      child: new Container(
          margin:
          const EdgeInsets.only(left: 10.0, right: 20.0),
          child: Divider(
            color: Colors.white,
            height: 36,
            //thickness:,   optional
          )),
    ),
    Text("OR", style: TextStyle(color: Colors.white,)),
    Expanded(
      child: new Container(
          margin:
          const EdgeInsets.only(left: 20.0, right: 10.0),
          child: Divider(
            color: Colors.white,
            height: 36,
          )),
    ),
  ]);


}
