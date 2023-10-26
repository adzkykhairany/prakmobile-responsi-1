import 'package:flutter/material.dart';
import 'package:responsi1/ui/tugas_form.dart';
import 'package:responsi1/ui/tugas_page.dart';
import 'package:responsi1/ui/tugas_detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List To Do',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: TugasPage(), // Menghubungkan ke halaman TugasForm
    );
  }
}
