// import 'package:dio/dio.dart';
// import 'package:lapka/agent/data/models/data_kapal_response.dart';

// class DatakapalRemote {
//   late Dio _dio;

//   String baseUrl = 'http://localhost:1337/api/';

//   DatakapalRemote() {
//     _dio = Dio();
//   }

//   Future<DataKapal> getAll() async {
//     var response = await _dio.get(
//       "$baseUrl/data-kapals",
//       options: Options(
//         headers: {
//           "Content-type": "application/json",
//         },
//       ),
//     );
//     return DataKapal.fromJson(response.data);
//   }
// }
