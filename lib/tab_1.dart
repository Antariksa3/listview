import 'package:flutter/material.dart';
import 'package:listview/list.dart';

class List_Siswa extends StatefulWidget {
  const List_Siswa({Key? key}) : super(key: key);

  @override
  State<List_Siswa> createState() => _List_SiswaState();
}

class _List_SiswaState extends State<List_Siswa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // calling list custom
      body: List(),
    );
  }
}
