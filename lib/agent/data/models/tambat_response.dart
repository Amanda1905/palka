// To parse this JSON data, do
//
//     final jasaTambat = jasaTambatFromJson(jsonString);

// import 'dart:convert';

// JasaTambat jasaTambatFromJson(String str) => JasaTambat.fromJson(json.decode(str));

// String jasaTambatToJson(JasaTambat data) => json.encode(data.toJson());

class JasaTambat {
    List<JasaTambatDatum> data;
    Meta meta;

    JasaTambat({
        required this.data,
        required this.meta,
    });

    factory JasaTambat.fromJson(Map<String, dynamic> json) => JasaTambat(
        data: List<JasaTambatDatum>.from(json["data"].map((x) => JasaTambatDatum.fromJson(x))),
        meta: Meta.fromJson(json["meta"]),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "meta": meta.toJson(),
    };
}

class JasaTambatDatum {
    int id;
    PurpleAttributes attributes;

    JasaTambatDatum({
        required this.id,
        required this.attributes,
    });

    factory JasaTambatDatum.fromJson(Map<String, dynamic> json) => JasaTambatDatum(
        id: json["id"],
        attributes: PurpleAttributes.fromJson(json["attributes"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
    };
}

class PurpleAttributes {
    DateTime startLayanan;
    DateTime finishLayanan;
    int gtKapal;
    String pandu;
    dynamic totalEtmal;
    int totalTarif;
    String description;
    DateTime createdAt;
    DateTime updatedAt;
    DateTime publishedAt;
    DataKapal name;
    DataKapal dataKapal;
    AssignToId jenisKapal;
    AssignToId jenisJasa;
    DetailJenisJasa detailJenisJasa;
    AssignToId jenisPelayanan;
    AssignToId tarifPandu;
    DataKapal status;
    AssignToId file;
    AssignToId tarifDasar;
    AssignToId assignToId;

    PurpleAttributes({
        required this.startLayanan,
        required this.finishLayanan,
        required this.gtKapal,
        required this.pandu,
        required this.totalEtmal,
        required this.totalTarif,
        required this.description,
        required this.createdAt,
        required this.updatedAt,
        required this.publishedAt,
        required this.name,
        required this.dataKapal,
        required this.jenisKapal,
        required this.jenisJasa,
        required this.detailJenisJasa,
        required this.jenisPelayanan,
        required this.tarifPandu,
        required this.status,
        required this.file,
        required this.tarifDasar,
        required this.assignToId,
    });

    factory PurpleAttributes.fromJson(Map<String, dynamic> json) => PurpleAttributes(
        startLayanan: DateTime.parse(json["start_layanan"]),
        finishLayanan: DateTime.parse(json["finish_layanan"]),
        gtKapal: json["gt_kapal"],
        pandu: json["pandu"],
        totalEtmal: json["total_etmal"],
        totalTarif: json["total_tarif"],
        description: json["description"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
        name: DataKapal.fromJson(json["name"]),
        dataKapal: DataKapal.fromJson(json["data_kapal"]),
        jenisKapal: AssignToId.fromJson(json["jenis_kapal"]),
        jenisJasa: AssignToId.fromJson(json["jenis_jasa"]),
        detailJenisJasa: DetailJenisJasa.fromJson(json["detail_jenis_jasa"]),
        jenisPelayanan: AssignToId.fromJson(json["jenis_pelayanan"]),
        tarifPandu: AssignToId.fromJson(json["tarif_pandu"]),
        status: DataKapal.fromJson(json["status"]),
        file: AssignToId.fromJson(json["file"]),
        tarifDasar: AssignToId.fromJson(json["tarif_dasar"]),
        assignToId: AssignToId.fromJson(json["assign_to_id"]),
    );

    Map<String, dynamic> toJson() => {
        "start_layanan": startLayanan.toIso8601String(),
        "finish_layanan": finishLayanan.toIso8601String(),
        "gt_kapal": gtKapal,
        "pandu": pandu,
        "total_etmal": totalEtmal,
        "total_tarif": totalTarif,
        "description": description,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "publishedAt": publishedAt.toIso8601String(),
        "name": name.toJson(),
        "data_kapal": dataKapal.toJson(),
        "jenis_kapal": jenisKapal.toJson(),
        "jenis_jasa": jenisJasa.toJson(),
        "detail_jenis_jasa": detailJenisJasa.toJson(),
        "jenis_pelayanan": jenisPelayanan.toJson(),
        "tarif_pandu": tarifPandu.toJson(),
        "status": status.toJson(),
        "file": file.toJson(),
        "tarif_dasar": tarifDasar.toJson(),
        "assign_to_id": assignToId.toJson(),
    };
}

class AssignToId {
    List<AssignToIdDatum>? data;

    AssignToId({
        required this.data,
    });

    factory AssignToId.fromJson(Map<String, dynamic> json) => AssignToId(
        data: json["data"] == null ? [] : List<AssignToIdDatum>.from(json["data"]!.map((x) => AssignToIdDatum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class AssignToIdDatum {
    int id;
    FluffyAttributes attributes;

    AssignToIdDatum({
        required this.id,
        required this.attributes,
    });

    factory AssignToIdDatum.fromJson(Map<String, dynamic> json) => AssignToIdDatum(
        id: json["id"],
        attributes: FluffyAttributes.fromJson(json["attributes"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
    };
}

class FluffyAttributes {
    String? title;
    DateTime createdAt;
    DateTime updatedAt;
    DateTime publishedAt;
    String? namaJasa;
    String? jenisKapal;
    String? jenisPelayanan;
    int? tarifDasar;
    dynamic currency;
    dynamic currencyUsd;
    String? name;
    int? price;

    FluffyAttributes({
        this.title,
        required this.createdAt,
        required this.updatedAt,
        required this.publishedAt,
        this.namaJasa,
        this.jenisKapal,
        this.jenisPelayanan,
        this.tarifDasar,
        this.currency,
        this.currencyUsd,
        this.name,
        this.price,
    });

    factory FluffyAttributes.fromJson(Map<String, dynamic> json) => FluffyAttributes(
        title: json["title"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
        namaJasa: json["nama_jasa"],
        jenisKapal: json["jenis_kapal"],
        jenisPelayanan: json["jenis_pelayanan"],
        tarifDasar: json["tarif_dasar"],
        currency: json["currency"],
        currencyUsd: json["currency_usd"],
        name: json["name"],
        price: json["price"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "publishedAt": publishedAt.toIso8601String(),
        "nama_jasa": namaJasa,
        "jenis_kapal": jenisKapal,
        "jenis_pelayanan": jenisPelayanan,
        "tarif_dasar": tarifDasar,
        "currency": currency,
        "currency_usd": currencyUsd,
        "name": name,
        "price": price,
    };
}

class DataKapal {
    List<DataKapalDatum> data;

    DataKapal({
        required this.data,
    });

    factory DataKapal.fromJson(Map<String, dynamic> json) => DataKapal(
        data: List<DataKapalDatum>.from(json["data"].map((x) => DataKapalDatum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class DataKapalDatum {
    int id;
    TentacledAttributes attributes;

    DataKapalDatum({
        required this.id,
        required this.attributes,
    });

    factory DataKapalDatum.fromJson(Map<String, dynamic> json) => DataKapalDatum(
        id: json["id"],
        attributes: TentacledAttributes.fromJson(json["attributes"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
    };
}

class TentacledAttributes {
    String namaKapal;
    dynamic milik;
    dynamic panjangKapal;
    dynamic saratMukaKapal;
    dynamic saratBelakangKapal;
    dynamic dwt;
    String datangDari;
    String tujuan;
    DateTime createdAt;
    DateTime updatedAt;
    DateTime publishedAt;

    TentacledAttributes({
        required this.namaKapal,
        required this.milik,
        required this.panjangKapal,
        required this.saratMukaKapal,
        required this.saratBelakangKapal,
        required this.dwt,
        required this.datangDari,
        required this.tujuan,
        required this.createdAt,
        required this.updatedAt,
        required this.publishedAt,
    });

    factory TentacledAttributes.fromJson(Map<String, dynamic> json) => TentacledAttributes(
        namaKapal: json["nama_kapal"],
        milik: json["milik"],
        panjangKapal: json["panjang_kapal"],
        saratMukaKapal: json["sarat_muka_kapal"],
        saratBelakangKapal: json["sarat_belakang_kapal"],
        dwt: json["dwt"],
        datangDari: json["datang_dari"],
        tujuan: json["tujuan"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
    );

    Map<String, dynamic> toJson() => {
        "nama_kapal": namaKapal,
        "milik": milik,
        "panjang_kapal": panjangKapal,
        "sarat_muka_kapal": saratMukaKapal,
        "sarat_belakang_kapal": saratBelakangKapal,
        "dwt": dwt,
        "datang_dari": datangDari,
        "tujuan": tujuan,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "publishedAt": publishedAt.toIso8601String(),
    };
}

class DetailJenisJasa {
    List<DetailJenisJasaDatum> data;

    DetailJenisJasa({
        required this.data,
    });

    factory DetailJenisJasa.fromJson(Map<String, dynamic> json) => DetailJenisJasa(
        data: List<DetailJenisJasaDatum>.from(json["data"].map((x) => DetailJenisJasaDatum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class DetailJenisJasaDatum {
    int id;
    StickyAttributes attributes;

    DetailJenisJasaDatum({
        required this.id,
        required this.attributes,
    });

    factory DetailJenisJasaDatum.fromJson(Map<String, dynamic> json) => DetailJenisJasaDatum(
        id: json["id"],
        attributes: StickyAttributes.fromJson(json["attributes"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
    };
}

class StickyAttributes {
    String? title;
    DateTime createdAt;
    DateTime updatedAt;
    DateTime publishedAt;
    String? detailJenisJasa;
    String? namaJasa;
    String? jenisKapal;
    String? jenisPelayanan;

    StickyAttributes({
        this.title,
        required this.createdAt,
        required this.updatedAt,
        required this.publishedAt,
        this.detailJenisJasa,
        this.namaJasa,
        this.jenisKapal,
        this.jenisPelayanan,
    });

    factory StickyAttributes.fromJson(Map<String, dynamic> json) => StickyAttributes(
        title: json["title"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
        detailJenisJasa: json["detail_jenis_jasa"],
        namaJasa: json["nama_jasa"],
        jenisKapal: json["jenis_kapal"],
        jenisPelayanan: json["jenis_pelayanan"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "publishedAt": publishedAt.toIso8601String(),
        "detail_jenis_jasa": detailJenisJasa,
        "nama_jasa": namaJasa,
        "jenis_kapal": jenisKapal,
        "jenis_pelayanan": jenisPelayanan,
    };
}

class Meta {
    Pagination pagination;

    Meta({
        required this.pagination,
    });

    factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        pagination: Pagination.fromJson(json["pagination"]),
    );

    Map<String, dynamic> toJson() => {
        "pagination": pagination.toJson(),
    };
}

class Pagination {
    int page;
    int pageSize;
    int pageCount;
    int total;

    Pagination({
        required this.page,
        required this.pageSize,
        required this.pageCount,
        required this.total,
    });

    factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
        page: json["page"],
        pageSize: json["pageSize"],
        pageCount: json["pageCount"],
        total: json["total"],
    );

    Map<String, dynamic> toJson() => {
        "page": page,
        "pageSize": pageSize,
        "pageCount": pageCount,
        "total": total,
    };
}
