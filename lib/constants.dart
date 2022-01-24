import 'package:flutter/material.dart';

TabBarContainer(String data,Icon icon)
{
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          icon,
          SizedBox(width: 5,),
          Text(data,style: TextStyle(fontSize: 17)),
        ],
      ),
      padding: EdgeInsets.fromLTRB(8, 3, 8, 3),
    );
}