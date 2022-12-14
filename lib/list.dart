import 'package:flutter/material.dart';
import 'package:listview/object.dart';

class List extends StatefulWidget {
  const List({Key? key}) : super(key: key);

  @override
  State<List> createState() => _ListState();
}

class _ListState extends State<List> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Container(
      //       width: MediaQuery.of(context).size.width,
      //       child: Text("LIST SISWA", textAlign: TextAlign.center)),
      // ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white12,
        child: ListView.builder(
            itemCount: datasiswa.length,
            itemBuilder: (BuildContext context, index) {
              return GestureDetector(
                onLongPress: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                            title: Text("Hapus Data"),
                            content: Text(
                                "Yakin Ingin Menghapus ${datasiswa[index].nama}"),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    setState(() {
                                      datasiswa.removeAt(index);
                                    });
                                    Navigator.pop(context);
                                  },
                                  child: Text("Ya")),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("Tidak"))
                            ],
                          ));
                },
                child: Container(
                  margin: EdgeInsets.only(top: 10, bottom: 0),
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  height: 150,
                  width: double.maxFinite,
                  child: Card(
                    color: Colors.deepPurple[200],
                    elevation: 5,
                    child: Stack(
                      children: [
                        Row(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: CircleAvatar(
                                radius: 35,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(left: 10, right: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Nama: ${datasiswa[index].nama}"),
                                    Text(
                                      "Absen: ${datasiswa[index].absen}",
                                    ),
                                    Text("Kelas: ${datasiswa[index].kelas}"),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
