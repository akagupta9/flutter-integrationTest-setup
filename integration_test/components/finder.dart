import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Finder findByKey(String key) {
  return find.byKey(Key(key));
}

Finder findByText(String text) {
  return find.text(text);
}

Finder findByIcon(IconData icon) {
  return find.byIcon(icon);
}
