import 'package:flutter/material.dart';
import 'package:lapka/agent/presentation/constant/theme.dart';
import 'package:lapka/agent/presentation/pages/invoice.dart';

class Detailhistory extends StatelessWidget {
  const Detailhistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail', style: boldBlackTextStyle.copyWith(fontSize: 18)),
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 12, 15, 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 DataTable(
                   columns: [
                    DataColumn(label: Text('ID')),
                    DataColumn(label: Text('1')),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text("Name")),
                      DataCell(Text("Amanda")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Data Kapal")),
                      DataCell(Text("Josephine")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Jenis Layanan Kapal")),
                      DataCell(Text("Jasa Labuh")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Jenis Jasa")),
                      DataCell(Text("Josephine")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Detail Jenis Jasa")),
                      DataCell(Text("Josephine")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Jenis Pelayanan")),
                      DataCell(Text("Josephine")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Start Layanan")),
                      DataCell(Text("Josephine")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Finish Layanan")),
                      DataCell(Text("25-06-2024 26-06-20024")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("GT Kapal")),
                      DataCell(Text("Josephine")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Tarif Dasar")),
                      DataCell(Text("Josephine")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Total Tarif")),
                      DataCell(Text("Josephine")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Status")),
                      DataCell(Text("Josephine")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Assign To")),
                      DataCell(Text("Josephine")),
                    ]),
                  ],
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff5875DC),
                    shadowColor: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Invoicee(),
                        ));
                  },
                  child: Text("Lihat Invoice",
                      style: mediumWhiteTextStyle.copyWith(fontSize: 15)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
