import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zenn_riverpod/app_page.dart';

void main() {
  runApp(const ProviderScope(child: App()));
}
