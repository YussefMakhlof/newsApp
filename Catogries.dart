import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class Categories extends StatelessWidget {
  String? textCategories;
  String?categories;
  Color? colorButton;
  Categories({this.textCategories, this.categories, this.colorButton});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: RaisedButton(onPressed: (){print('$categories');},
        child: Text('$textCategories',style: TextStyle(color: Colors.white),),

        color: colorButton,

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        elevation: 4,
      ),
    );
  }

}

