import 'package:flutter/material.dart';

class VideoLink extends ChangeNotifier {
  String _videoLink = '';

  String get videoLink => _videoLink;

  void setVideoLink(String link) {
    _videoLink = link;
    notifyListeners();
  }
}
