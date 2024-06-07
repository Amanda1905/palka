import 'package:flutter/material.dart';

class DataKapalTable extends StatelessWidget {
  const DataKapalTable({super.key});

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
            offset: const Offset(0, 3), // mengatur posisi bayangan
          ),
        ],
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: const [
            DataColumn(label: Text('Nama Kapal')),
            DataColumn(label: Text('Bendera')),
            DataColumn(label: Text('Kategori Layanan')),
            DataColumn(label: Text('Datang')),
            DataColumn(label: Text('Tujuan')),
          ],
          rows: [
            DataRow(
              color: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
                return Colors.blue.withOpacity(0.3); // Warna baris pertama
              }),
              cells: const [
                DataCell(Text('Alice')),
                DataCell(Text('Indonesia')),
                DataCell(Text('Jasa Labuh')),
                DataCell(Text('08:00')),
                DataCell(Text('Jakarta'))
              ],
            ),
            DataRow(
              color: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
                return Colors.green.withOpacity(0.3); // Warna baris kedua
              }),
              cells: const [
                DataCell(Text('Bob')),
                DataCell(Text('Malaysia')),
                DataCell(Text('Jasa Tambat')),
                DataCell(Text('09:00')),
                DataCell(Text('Surabaya'))
              ],
            ),
            DataRow(
              color: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
                return Colors.red.withOpacity(0.3); // Warna baris ketiga
              }),
              cells: const [
                DataCell(Text('Charlie')),
                DataCell(Text('Singapura')),
                DataCell(Text('Josa Yatch')),
                DataCell(Text('10:00')),
                DataCell(Text('Batam'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}