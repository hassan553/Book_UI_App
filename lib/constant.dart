import 'package:flutter/material.dart';

List<String> images = [
   'assets/book3.png',
  'assets/book1.png',
  'assets/book2.png',
 
  'assets/book4.png',
  'assets/book5.png',
];
Size getScreenSize({required BuildContext context}) {
  return MediaQuery.of(context).size;
}
