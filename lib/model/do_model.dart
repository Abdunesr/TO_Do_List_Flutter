import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';


//final formatter=DateFormat.yMd();
final uuid=Uuid();


enum Catagory { MONDAY, TUSDAY, WEDNSDAY, THURSDAY,FRIDAY,SATURDAY,SUNDAY }

const CatagoryIcons = {
  Catagory.MONDAY: "MONDAY",
  Catagory.TUSDAY: "TUSDAY",
  Catagory.WEDNSDAY: "WEDNSDAY",
  Catagory.THURSDAY: "THURSDAY",
  Catagory.FRIDAY:"FRIDAY",
  Catagory.SATURDAY:"SATURDAY",
  Catagory.SUNDAY:"SUNDAY",
};

class DoModel {
  DoModel({
    required this.titel,
    required this.amount,
    required this.Descrtiption,
    required this.catagory,
  }): id = uuid.v4();

  final String titel;
  final String id;
  final String Descrtiption;
  final double amount;
  final Catagory catagory;

  /* get formattedaDate{
    return date.formatter(date);

  } */
}

