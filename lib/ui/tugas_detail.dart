import 'package:flutter/material.dart';
import 'package:responsi1/bloc/tugas_bloc.dart';
import 'package:responsi1/model/tugas.dart';
import 'package:responsi1/ui/tugas_form.dart';
import 'package:responsi1/ui/tugas_page.dart';

class TugasDetail extends StatefulWidget {
  Tugas? tugas;
  TugasDetail({Key? key, this.tugas}) : super(key: key);

  @override
  _TugasDetailState createState() => _TugasDetailState();
}

class _TugasDetailState extends State<TugasDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Tugas'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Id : ${widget.tugas!.id}",
              style: const TextStyle(fontSize: 20.0),
            ),
            Text(
              "Title : ${widget.tugas!.title}",
              style: const TextStyle(fontSize: 18.0),
            ),
            Text(
              "Description : ${widget.tugas!.description}",
              style: const TextStyle(fontSize: 18.0),
            ),
            Text(
              "Deadline : ${widget.tugas!.deadline}",
              style: const TextStyle(fontSize: 18.0),
            ),
            _tombolEdit()
          ],
        ),
      ),
    );
  }

  Widget _tombolEdit() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Tombol Edit
        OutlinedButton(
            child: const Text("EDIT"),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TugasForm(
                            tugas: widget.tugas!,
                          )));
            }),
        // Tombol Delete
      ],
    );
  }
}
