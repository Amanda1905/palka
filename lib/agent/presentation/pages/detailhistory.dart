import 'package:flutter/material.dart';

class Detailhistory extends StatelessWidget {
  const Detailhistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
        child: DataTable(
          columns: const [
            DataColumn(label: Text('List Data')),
            DataColumn(label: Text('Detail Data'))
          ],
          rows: [
            DataRow(
              color: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states){
                return Colors.blue.withOpacity(0.3);
              }),
              cells: const [
                DataCell(Text('ID')),
                DataCell(Text('Name')),
                DataCell(Text('Data Kapal')),
                DataCell(Text('Jenis Layanan Kapal')),
                DataCell(Text('Jenis Jasa')),
                DataCell(Text('Detail Jenis Jasa')),
                DataCell(Text('Jenis Pelayanan')),
                DataCell(Text('Start Layanan')),
                DataCell(Text('Finish Layanan')),
                DataCell(Text('GT Kapal')),
                DataCell(Text('Tarif Dasar')),
                DataCell(Text('Total Tarif (Rp)')),
                DataCell(Text('Status')),
                DataCell(Text('Assign To')),
              ],
            ),
            DataRow(
              color: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states){
                return Colors.blue.withOpacity(0.3);
              }),
              cells: const [
                DataCell(Text('ID')),
                DataCell(Text('Name')),
                DataCell(Text('Data Kapal')),
                DataCell(Text('Jenis Layanan Kapal')),
                DataCell(Text('Jenis Jasa')),
                DataCell(Text('Detail Jenis Jasa')),
                DataCell(Text('Jenis Pelayanan')),
                DataCell(Text('Start Layanan')),
                DataCell(Text('Finish Layanan')),
                DataCell(Text('GT Kapal')),
                DataCell(Text('Tarif Dasar')),
                DataCell(Text('Total Tarif (Rp)')),
                DataCell(Text('Status')),
                DataCell(Text('Assign To')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}