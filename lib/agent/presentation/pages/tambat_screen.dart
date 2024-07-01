import 'package:flutter/material.dart';
import 'package:lapka/agent/data/models/model_jasa.dart';
import 'package:lapka/agent/presentation/constant/theme.dart';

class TambatScreen extends StatefulWidget {
  const TambatScreen({super.key});

  @override
  State<TambatScreen> createState() => TambatScreenState();
}

class TambatScreenState extends State<TambatScreen> {
  DateTime? _selectedStartDate;
  DateTime? _selectedEndDate;

  void _presentStartDatePicker() async {
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 10, now.month, now.day);
    final lastDate = DateTime(now.year + 5, now.month, now.day);
    final pickDate = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: firstDate,
      lastDate: lastDate, // Mengatur lastDate ke tahun berikutnya
    );
    setState(() {
      _selectedStartDate = pickDate;
    });
  }

  void _presentEndDatePicker() async {
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 10, now.month, now.day);
    final lastDate = DateTime(now.year + 5, now.month, now.day);
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: firstDate,
      lastDate: lastDate,
    );
    setState(() {
      _selectedEndDate = pickedDate;
    });
  }

  JasaCategory _selectedJasaCategory = JasaCategory.jasaLabuh;
  LayananKapalCategory _selectedLayananKapalCategory =
      LayananKapalCategory.service1;
  DataKapalCategory _selectedDataKapalCategory = DataKapalCategory.jayakarta;
  SatuanDetailCategory _selectedSatuanDetailCategory = SatuanDetailCategory.ton;

  double containerHeight = 60.0; // Sesuaikan tinggi container
  double containerWidth = double.infinity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jasa Tambat', style: semibolddeepblueextStyle.copyWith(fontSize: 18)),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 12, 15, 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: deepblueColor,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                      "assets/images/bannerservice.png",
                      width: 110,
                      height: 110,
                      fit: BoxFit.fill,
                      ),
                      const SizedBox(width: 20),
                      const Text(
                        'Come on! \nSend Your Cargo With Our \nInternational Shipping',
                        style: TextStyle(
                            color: Colors
                                .white), // Mengatur warna teks menjadi putih agar kontras dengan latar belakang ungu
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 18),
              const Text('Nama'),
              const SizedBox(height: 8),
              Container(
                height: containerHeight,
                width: containerWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: const Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Nama',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 18),
              const Text('Data Kapal'),
              const SizedBox(height: 8),
              Container(
                height: containerHeight,
                width: containerWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: const Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<DataKapalCategory>(
                    value: _selectedDataKapalCategory,
                    items: DataKapalCategory.values.map((category) {
                      return DropdownMenuItem<DataKapalCategory>(
                        value: category,
                        child: Text(category.name.toString()),
                      );
                    }).toList(),
                    onChanged: (value) {
                      if (value == null) {
                        return;
                      }
                      setState(() {
                        _selectedDataKapalCategory = value;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 18),
              const Text('Jenis Layanan Kapal'),
              const SizedBox(height: 8),
              Container(
                height: containerHeight,
                width: containerWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: const Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<LayananKapalCategory>(
                    value: _selectedLayananKapalCategory,
                    items: LayananKapalCategory.values.map((category) {
                      return DropdownMenuItem<LayananKapalCategory>(
                        value: category,
                        child: Text(category.name.toString()),
                      );
                    }).toList(),
                    onChanged: (value) {
                      if (value == null) {
                        return;
                      }
                      setState(() {
                        _selectedLayananKapalCategory = value;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 18),
              const Text('Jenis Jasa'),
              const SizedBox(height: 8),
              Container(
                height: containerHeight,
                width: containerWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: const Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<JasaCategory>(
                    value: _selectedJasaCategory,
                    items: JasaCategory.values.map((category) {
                      return DropdownMenuItem<JasaCategory>(
                        value: category,
                        child: Text(category.name.toString()),
                      );
                    }).toList(),
                    onChanged: (value) {
                      if (value == null) {
                        return;
                      }
                      setState(() {
                        _selectedJasaCategory = value;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 18),
              const Text('Detail Jenis Jasa'),
              const SizedBox(height: 8),
              Container(
                height: containerHeight,
                width: containerWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: const Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Detail jenis jasa',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 18),
              const Text('Jenis Pelayanan'),
              const SizedBox(height: 8),
              Container(
                height: containerHeight,
                width: containerWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: const Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Jenis Pelayanan',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 18),
              const Text('Mulai Layanan'),
              const SizedBox(height: 8),
              Container(
                height: containerHeight,
                width: containerWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: const Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      _selectedStartDate == null
                          ? 'No Date Selected'
                          : formatter.format(_selectedStartDate!),
                    ),
                    IconButton(
                      onPressed: _presentStartDatePicker,
                      icon: const Icon(Icons.calendar_month),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 18),
              const Text('Selesai Layanan'),
              const SizedBox(height: 8),
              Container(
                height: containerHeight,
                width: containerWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: const Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      _selectedEndDate == null
                          ? 'No Date Selected'
                          : formatter.format(_selectedEndDate!),
                    ),
                    IconButton(
                      onPressed: _presentEndDatePicker,
                      icon: const Icon(Icons.calendar_month),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 18),
              const Text('GT Kapal [Min: 1000kg]'),
              const SizedBox(height: 8),
              Container(
                height: containerHeight,
                width: containerWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: const Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.line_weight_outlined),
                    hintText: 'GT Kapal',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 18),
              const Text('Total Etmal'),
              const SizedBox(height: 8),
              Container(
                height: containerHeight,
                width: containerWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: const Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.line_weight_outlined),
                    hintText: 'Total Etmal',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 18),
              const Text('Tarif Dasar'),
              const SizedBox(height: 8),
              Container(
                height: containerHeight,
                width: containerWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: const Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.attach_money_outlined),
                    hintText: 'Tarif Dasar',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 18),
              const Text('Total Tarif (Rp)'),
              const SizedBox(height: 8),
              Container(
                height: containerHeight,
                width: containerWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: const Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.money),
                    hintText: 'Total Tarif',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 18),
              const Text('Status'),
              const SizedBox(height: 8),
              Container(
                height: containerHeight,
                width: containerWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: const Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Status',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 18),
              const Text('Assign To'),
              const SizedBox(height: 8),
              Container(
                height: containerHeight,
                width: containerWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: const Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Assign To',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 18),
              const Text('Dokumen'),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    minimumSize: const Size(50, 45)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Upload dokumen kamu"),
                    SizedBox(width: 10),
                    Icon(Icons.file_present_outlined),
                  ],
                ),
              ),
              const SizedBox(height: 18),
              const Text('Deskripsi'),
              const SizedBox(height: 8),
              Container(
                height: containerHeight,
                width: containerWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: const Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                child: TextField(
                  maxLength: 100,
                  decoration: InputDecoration(
                    hintText: 'Deskripsi',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 18),
              const Text('Satuan Detail'),
              const SizedBox(height: 8),
              Container(
                height: containerHeight,
                width: containerWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: const Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<SatuanDetailCategory>(
                    value: _selectedSatuanDetailCategory,
                    items: SatuanDetailCategory.values.map((category) {
                      return DropdownMenuItem<SatuanDetailCategory>(
                        value: category,
                        child: Text(category.name.toString()),
                      );
                    }).toList(),
                    onChanged: (value) {
                      if (value == null) {
                        return;
                      }
                      setState(() {
                        _selectedSatuanDetailCategory = value;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 28),
              ElevatedButton(
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => const Home()));
                },
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    elevation: 8,
                    shadowColor: Colors.black,
                    backgroundColor: const Color(0xff5875DC),
                    minimumSize: const Size.fromHeight(45)),
                child: const Text(
                  "Payment",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}