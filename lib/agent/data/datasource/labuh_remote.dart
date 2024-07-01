import 'package:dio/dio.dart';
import 'package:lapka/agent/data/models/labuh_response.dart';

class LabuhRemote {
  late Dio _dio;

  String baseUrl = 'http://localhost:1337/api/';

  LabuhRemote() {
    _dio = Dio();
  }

  Future<JasaLabuh> getAll() async {
    final response = await _dio.get(
      "$baseUrl/jasa-labuhs?populate=*",
      options: Options(
        headers: {
          "Content-type": "application/json",
        },
      ),
    );
    return JasaLabuh.fromJson(response.data);
  }

  // Future<void> addData(RequestLabuh request) async {
  //   String url = '$baseUrl/jasa-labuhs';
  //   final response = await _dio.post(url,
  //     // options: Options(
  //     //   headers: {
  //     //     "Content-Type": "application/json",
  //     //   },
  //     // ),
  //     data: {
  //       "data": request.toMap(),
  //     });
  //   print(response.toString());
  // }

  // Future<void> updateData(int id, RequestLabuh requestLabuh) async {
  //   var response = await _dio.put(
  //     "$baseUrl/jasa-labuhs/$id",
  //     options: Options(
  //       headers: {
  //         "Content-Type": "application/json",
  //       },
  //     ),
  //     data: {"data": requestLabuh.toMap()},
  //   );
  //   Map obj = response.data;
  //   // print(obj);
  // }

  // Future<void> deleteData(int id) async {
  //   var response = await _dio.delete(
  //     options: Options(
  //       headers: {
  //         "Content-Type": "application/json",
  //       },
  //     ),
  //     "$baseUrl/jasa-labuhs/$id",
  //   );
  //   print(response.statusCode);
  }