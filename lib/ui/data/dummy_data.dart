import 'dart:ui';

import 'package:flutter/material.dart';

class DataModel{
  int num;
  String ?status;
  Color ?color;
  DataModel(this.num, this.status, this.color);
}

List<DataModel> dummyData = [

  DataModel(5, 'Ongoing', Colors.purple),
  DataModel(7, "Under\nReview", Colors.orange),
  DataModel(4, 'Upcoming', Colors.greenAccent),
  DataModel(6, 'Ongoing', Colors.red),
  DataModel(10, "Under\nReview", Colors.greenAccent),
  DataModel(10, "Upcoming", Colors.blue),
  DataModel(10, "Ongoing", Colors.deepPurple),
  DataModel(10, "Done", Colors.grey),

];



