class JasaAirBersih {
    List<JasaAirBersihDatum> data;
    Meta meta;

    JasaAirBersih({
        required this.data,
        required this.meta,
    });

    factory JasaAirBersih.fromJson(Map<String, dynamic> json) => JasaAirBersih(
        data: List<JasaAirBersihDatum>.from(json["data"].map((x) => JasaAirBersihDatum.fromJson(x))),
        meta: Meta.fromJson(json["meta"]),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "meta": meta.toJson(),
    };
}

class JasaAirBersihDatum {
    int id;
    PurpleAttributes attributes;

    JasaAirBersihDatum({
        required this.id,
        required this.attributes,
    });

    factory JasaAirBersihDatum.fromJson(Map<String, dynamic> json) => JasaAirBersihDatum(
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
    int qty;
    int totalTarif;
    String keterangan;
    DateTime createdAt;
    DateTime updatedAt;
    DateTime publishedAt;
    DataKapal dataKapal;
    AssignToId jenisPelayanan;
    AssignToId tarifDasar;
    AssignToId status;
    AssignToId assignToId;
    DataKapal satuanDetails;
    AssignToId file;

    PurpleAttributes({
        required this.startLayanan,
        required this.finishLayanan,
        required this.qty,
        required this.totalTarif,
        required this.keterangan,
        required this.createdAt,
        required this.updatedAt,
        required this.publishedAt,
        required this.dataKapal,
        required this.jenisPelayanan,
        required this.tarifDasar,
        required this.status,
        required this.assignToId,
        required this.satuanDetails,
        required this.file,
    });

    factory PurpleAttributes.fromJson(Map<String, dynamic> json) => PurpleAttributes(
        startLayanan: DateTime.parse(json["start_layanan"]),
        finishLayanan: DateTime.parse(json["finish_layanan"]),
        qty: json["qty"],
        totalTarif: json["total_tarif"],
        keterangan: json["keterangan"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
        dataKapal: DataKapal.fromJson(json["data_kapal"]),
        jenisPelayanan: AssignToId.fromJson(json["jenis_pelayanan"]),
        tarifDasar: AssignToId.fromJson(json["tarif_dasar"]),
        status: AssignToId.fromJson(json["status"]),
        assignToId: AssignToId.fromJson(json["assign_to_id"]),
        satuanDetails: DataKapal.fromJson(json["satuan_details"]),
        file: AssignToId.fromJson(json["file"]),
    );

    Map<String, dynamic> toJson() => {
        "start_layanan": startLayanan.toIso8601String(),
        "finish_layanan": finishLayanan.toIso8601String(),
        "qty": qty,
        "total_tarif": totalTarif,
        "keterangan": keterangan,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "publishedAt": publishedAt.toIso8601String(),
        "data_kapal": dataKapal.toJson(),
        "jenis_pelayanan": jenisPelayanan.toJson(),
        "tarif_dasar": tarifDasar.toJson(),
        "status": status.toJson(),
        "assign_to_id": assignToId.toJson(),
        "satuan_details": satuanDetails.toJson(),
        "file": file.toJson(),
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
    String? jenisPelayanan;
    String? status;
    int? tarifDasar;
    dynamic currency;
    dynamic currencyUsd;

    FluffyAttributes({
        this.title,
        required this.createdAt,
        required this.updatedAt,
        required this.publishedAt,
        this.jenisPelayanan,
        this.status,
        this.tarifDasar,
        this.currency,
        this.currencyUsd,
    });

    factory FluffyAttributes.fromJson(Map<String, dynamic> json) => FluffyAttributes(
        title: json["title"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
        jenisPelayanan: json["jenis_pelayanan"],
        status: json["status"],
        tarifDasar: json["tarif_dasar"],
        currency: json["currency"],
        currencyUsd: json["currency_usd"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "publishedAt": publishedAt.toIso8601String(),
        "jenis_pelayanan": jenisPelayanan,
        "status": status,
        "tarif_dasar": tarifDasar,
        "currency": currency,
        "currency_usd": currencyUsd,
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
