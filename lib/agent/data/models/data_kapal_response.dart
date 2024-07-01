// // To parse this JSON data, do
// //
// //     final dataKapal = dataKapalFromJson(jsonString);

// // import 'dart:convert';

// // DataKapal dataKapalFromJson(String str) => DataKapal.fromJson(json.decode(str));

// // String dataKapalToJson(DataKapal data) => json.encode(data.toJson());

// class DataKapal {
//     List<DataKapalDatum> data;
//     Meta meta;

//     DataKapal({
//         required this.data,
//         required this.meta,
//     });

//     factory DataKapal.fromJson(Map<String, dynamic> json) => DataKapal(
//         data: List<DataKapalDatum>.from(json["data"].map((x) => DataKapalDatum.fromJson(x))),
//         meta: Meta.fromJson(json["meta"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "data": List<dynamic>.from(data.map((x) => x.toJson())),
//         "meta": meta.toJson(),
//     };
// }

// class DataKapalDatum {
//     int id;
//     PurpleAttributes attributes;

//     DataKapalDatum({
//         required this.id,
//         required this.attributes,
//     });

//     factory DataKapalDatum.fromJson(Map<String, dynamic> json) => DataKapalDatum(
//         id: json["id"],
//         attributes: PurpleAttributes.fromJson(json["attributes"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "attributes": attributes.toJson(),
//     };
// }

// class PurpleAttributes {
//     String namaKapal;
//     String? milik;
//     String? panjangKapal;
//     dynamic saratMukaKapal;
//     dynamic saratBelakangKapal;
//     dynamic dwt;
//     String datangDari;
//     String tujuan;
//     DateTime createdAt;
//     DateTime updatedAt;
//     DateTime publishedAt;
//     BenderaKebangsaan benderaKebangsaan;
//     JenisKapal jenisKapal;

//     PurpleAttributes({
//         required this.namaKapal,
//         required this.milik,
//         required this.panjangKapal,
//         required this.saratMukaKapal,
//         required this.saratBelakangKapal,
//         required this.dwt,
//         required this.datangDari,
//         required this.tujuan,
//         required this.createdAt,
//         required this.updatedAt,
//         required this.publishedAt,
//         required this.benderaKebangsaan,
//         required this.jenisKapal,
//     });

//     factory PurpleAttributes.fromJson(Map<String, dynamic> json) => PurpleAttributes(
//         namaKapal: json["nama_kapal"],
//         milik: json["milik"],
//         panjangKapal: json["panjang_kapal"],
//         saratMukaKapal: json["sarat_muka_kapal"],
//         saratBelakangKapal: json["sarat_belakang_kapal"],
//         dwt: json["dwt"],
//         datangDari: json["datang_dari"],
//         tujuan: json["tujuan"],
//         createdAt: DateTime.parse(json["createdAt"]),
//         updatedAt: DateTime.parse(json["updatedAt"]),
//         publishedAt: DateTime.parse(json["publishedAt"]),
//         benderaKebangsaan: BenderaKebangsaan.fromJson(json["bendera_kebangsaan"]),
//         jenisKapal: JenisKapal.fromJson(json["jenis_kapal"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "nama_kapal": namaKapal,
//         "milik": milik,
//         "panjang_kapal": panjangKapal,
//         "sarat_muka_kapal": saratMukaKapal,
//         "sarat_belakang_kapal": saratBelakangKapal,
//         "dwt": dwt,
//         "datang_dari": datangDari,
//         "tujuan": tujuan,
//         "createdAt": createdAt.toIso8601String(),
//         "updatedAt": updatedAt.toIso8601String(),
//         "publishedAt": publishedAt.toIso8601String(),
//         "bendera_kebangsaan": benderaKebangsaan.toJson(),
//         "jenis_kapal": jenisKapal.toJson(),
//     };
// }

// class BenderaKebangsaan {
//     Data data;

//     BenderaKebangsaan({
//         required this.data,
//     });

//     factory BenderaKebangsaan.fromJson(Map<String, dynamic> json) => BenderaKebangsaan(
//         data: Data.fromJson(json["data"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "data": data.toJson(),
//     };
// }

// class Data {
//     int id;
//     DataAttributes attributes;

//     Data({
//         required this.id,
//         required this.attributes,
//     });

//     factory Data.fromJson(Map<String, dynamic> json) => Data(
//         id: json["id"],
//         attributes: DataAttributes.fromJson(json["attributes"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "attributes": attributes.toJson(),
//     };
// }

// class DataAttributes {
//     String name;
//     String shortCode;
//     DateTime createdAt;
//     DateTime updatedAt;
//     DateTime publishedAt;

//     DataAttributes({
//         required this.name,
//         required this.shortCode,
//         required this.createdAt,
//         required this.updatedAt,
//         required this.publishedAt,
//     });

//     factory DataAttributes.fromJson(Map<String, dynamic> json) => DataAttributes(
//         name: json["name"],
//         shortCode: json["short_code"],
//         createdAt: DateTime.parse(json["createdAt"]),
//         updatedAt: DateTime.parse(json["updatedAt"]),
//         publishedAt: DateTime.parse(json["publishedAt"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "name": name,
//         "short_code": shortCode,
//         "createdAt": createdAt.toIso8601String(),
//         "updatedAt": updatedAt.toIso8601String(),
//         "publishedAt": publishedAt.toIso8601String(),
//     };
// }

// class JenisKapal {
//     List<JenisKapalDatum> data;

//     JenisKapal({
//         required this.data,
//     });

//     factory JenisKapal.fromJson(Map<String, dynamic> json) => JenisKapal(
//         data: List<JenisKapalDatum>.from(json["data"].map((x) => JenisKapalDatum.fromJson(x))),
//     );

//     Map<String, dynamic> toJson() => {
//         "data": List<dynamic>.from(data.map((x) => x.toJson())),
//     };
// }

// class JenisKapalDatum {
//     int id;
//     FluffyAttributes attributes;

//     JenisKapalDatum({
//         required this.id,
//         required this.attributes,
//     });

//     factory JenisKapalDatum.fromJson(Map<String, dynamic> json) => JenisKapalDatum(
//         id: json["id"],
//         attributes: FluffyAttributes.fromJson(json["attributes"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "attributes": attributes.toJson(),
//     };
// }

// class FluffyAttributes {
//     String jenisKapal;
//     DateTime createdAt;
//     DateTime updatedAt;
//     DateTime publishedAt;

//     FluffyAttributes({
//         required this.jenisKapal,
//         required this.createdAt,
//         required this.updatedAt,
//         required this.publishedAt,
//     });

//     factory FluffyAttributes.fromJson(Map<String, dynamic> json) => FluffyAttributes(
//         jenisKapal: json["jenis_kapal"],
//         createdAt: DateTime.parse(json["createdAt"]),
//         updatedAt: DateTime.parse(json["updatedAt"]),
//         publishedAt: DateTime.parse(json["publishedAt"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "jenis_kapal": jenisKapal,
//         "createdAt": createdAt.toIso8601String(),
//         "updatedAt": updatedAt.toIso8601String(),
//         "publishedAt": publishedAt.toIso8601String(),
//     };
// }

// class Meta {
//     Pagination pagination;

//     Meta({
//         required this.pagination,
//     });

//     factory Meta.fromJson(Map<String, dynamic> json) => Meta(
//         pagination: Pagination.fromJson(json["pagination"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "pagination": pagination.toJson(),
//     };
// }

// class Pagination {
//     int page;
//     int pageSize;
//     int pageCount;
//     int total;

//     Pagination({
//         required this.page,
//         required this.pageSize,
//         required this.pageCount,
//         required this.total,
//     });

//     factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
//         page: json["page"],
//         pageSize: json["pageSize"],
//         pageCount: json["pageCount"],
//         total: json["total"],
//     );

//     Map<String, dynamic> toJson() => {
//         "page": page,
//         "pageSize": pageSize,
//         "pageCount": pageCount,
//         "total": total,
//     };
// }
