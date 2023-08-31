// ignore_for_file: prefer_adjacent_string_concatenation

import 'package:flutter/material.dart';

Container buildDescription() {
  Container(
    margin: const EdgeInsets.all(10.0),
    child: const Text(
      'Hey there, in this video I have shown how easy it is to create responsive design inside flutter application. ' +
          'I have demonstrated with help of Portrait and Landscape of Mobile application but the same concept goes for all possible form factors like tablets and web',
      style: TextStyle(fontSize: 18),
    ),
  );
  return Container(
    margin: const EdgeInsets.all(10.0),
    child: const Text(
      'Hey there, in this video I have shown how easy it is to create responsive design inside flutter application. ' +
          'I have demonstrated with help of Portrait and Landscape of Mobile application but the same concept goes for all possible form factors like tablets and web',
      style: TextStyle(fontSize: 18),
    ),
  );
}

Container buildBannerSlider() {
  Container(
    width: 320,
    height: 180,
    margin: const EdgeInsets.all(10.0),
    decoration: BoxDecoration(
        gradient: const LinearGradient(
            colors: [Color.fromARGB(255, 255, 17, 0), Colors.pink]),
        borderRadius: BorderRadius.circular(12)),
  );
  return Container(
    width: 320,
    height: 180,
    margin: const EdgeInsets.all(10.0),
    decoration: BoxDecoration(
        gradient: const LinearGradient(
            colors: [Color.fromARGB(255, 200, 54, 244), Colors.pink]),
        borderRadius: BorderRadius.circular(12)),
  );
}
