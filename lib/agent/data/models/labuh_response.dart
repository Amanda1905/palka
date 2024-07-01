class JasaLabuh {
    List<JasaLabuhDatum> data;
    Meta meta;

    JasaLabuh({
        required this.data,
        required this.meta,
    });

    factory JasaLabuh.fromJson(Map<String, dynamic> json) => JasaLabuh(
        data: List<JasaLabuhDatum>.from(json["data"].map((x) => JasaLabuhDatum.fromJson(x))),
        meta: Meta.fromJson(json["meta"]),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "meta": meta.toJson(),
    };
}

class JasaLabuhDatum {
    int id;
    PurpleAttributes attributes;

    JasaLabuhDatum({
        required this.id,
        required this.attributes,
    });

    factory JasaLabuhDatum.fromJson(Map<String, dynamic> json) => JasaLabuhDatum(
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
    int totalTarif;
    String description;
    DateTime createdAt;
    DateTime updatedAt;
    DateTime publishedAt;
    Name name;
    DataKapal dataKapal;
    AssignToId jenisKapal;
    AssignToId jenisJasa;
    AssignToId detailJenisJasa;
    AssignToId jenisPelayanan;
    TarifDasar tarifDasar;
    TarifPandu tarifPandu;
    AssignToId status;
    AssignToId assignToId;
    AssignToId satuanDetail;
    FileClass file;

    PurpleAttributes({
        required this.startLayanan,
        required this.finishLayanan,
        required this.gtKapal,
        required this.pandu,
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
        required this.tarifDasar,
        required this.tarifPandu,
        required this.status,
        required this.assignToId,
        required this.satuanDetail,
        required this.file,
    });

    factory PurpleAttributes.fromJson(Map<String, dynamic> json) => PurpleAttributes(
        startLayanan: DateTime.parse(json["start_layanan"]),
        finishLayanan: DateTime.parse(json["finish_layanan"]),
        gtKapal: json["gt_kapal"],
        pandu: json["pandu"],
        totalTarif: json["total_tarif"],
        description: json["description"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
        name: Name.fromJson(json["name"]),
        dataKapal: DataKapal.fromJson(json["data_kapal"]),
        jenisKapal: AssignToId.fromJson(json["jenis_kapal"]),
        jenisJasa: AssignToId.fromJson(json["jenis_jasa"]),
        detailJenisJasa: AssignToId.fromJson(json["detail_jenis_jasa"]),
        jenisPelayanan: AssignToId.fromJson(json["jenis_pelayanan"]),
        tarifDasar: TarifDasar.fromJson(json["tarif_dasar"]),
        tarifPandu: TarifPandu.fromJson(json["tarif_pandu"]),
        status: AssignToId.fromJson(json["status"]),
        assignToId: AssignToId.fromJson(json["assign_to_id"]),
        satuanDetail: AssignToId.fromJson(json["satuan_detail"]),
        file: FileClass.fromJson(json["file"]),
    );

    Map<String, dynamic> toJson() => {
        "start_layanan": startLayanan.toIso8601String(),
        "finish_layanan": finishLayanan.toIso8601String(),
        "gt_kapal": gtKapal,
        "pandu": pandu,
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
        "tarif_dasar": tarifDasar.toJson(),
        "tarif_pandu": tarifPandu.toJson(),
        "status": status.toJson(),
        "assign_to_id": assignToId.toJson(),
        "satuan_detail": satuanDetail.toJson(),
        "file": file.toJson(),
    };
}

class AssignToId {
    List<AssignToIdDatum> data;

    AssignToId({
        required this.data,
    });

    factory AssignToId.fromJson(Map<String, dynamic> json) => AssignToId(
        data: List<AssignToIdDatum>.from(json["data"].map((x) => AssignToIdDatum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
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
    String? detailJenisJasa;
    String? namaJasa;
    String? jenisKapal;
    String? jenisPelayanan;
    String? satuan;
    String? status;

    FluffyAttributes({
        this.title,
        required this.createdAt,
        required this.updatedAt,
        required this.publishedAt,
        this.detailJenisJasa,
        this.namaJasa,
        this.jenisKapal,
        this.jenisPelayanan,
        this.satuan,
        this.status,
    });

    factory FluffyAttributes.fromJson(Map<String, dynamic> json) => FluffyAttributes(
        title: json["title"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
        detailJenisJasa: json["detail_jenis_jasa"],
        namaJasa: json["nama_jasa"],
        jenisKapal: json["jenis_kapal"],
        jenisPelayanan: json["jenis_pelayanan"],
        satuan: json["satuan"],
        status: json["status"],
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
        "satuan": satuan,
        "status": status,
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

class FileClass {
    List<FileDatum>? data;

    FileClass({
        required this.data,
    });

    factory FileClass.fromJson(Map<String, dynamic> json) => FileClass(
        data: json["data"] == null ? [] : List<FileDatum>.from(json["data"]!.map((x) => FileDatum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class FileDatum {
    int id;
    StickyAttributes attributes;

    FileDatum({
        required this.id,
        required this.attributes,
    });

    factory FileDatum.fromJson(Map<String, dynamic> json) => FileDatum(
        id: json["id"],
        attributes: StickyAttributes.fromJson(json["attributes"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
    };
}

class StickyAttributes {
    String name;
    dynamic alternativeText;
    dynamic caption;
    dynamic width;
    dynamic height;
    dynamic formats;
    String hash;
    String ext;
    String mime;
    double size;
    String url;
    dynamic previewUrl;
    String provider;
    dynamic providerMetadata;
    DateTime createdAt;
    DateTime updatedAt;

    StickyAttributes({
        required this.name,
        required this.alternativeText,
        required this.caption,
        required this.width,
        required this.height,
        required this.formats,
        required this.hash,
        required this.ext,
        required this.mime,
        required this.size,
        required this.url,
        required this.previewUrl,
        required this.provider,
        required this.providerMetadata,
        required this.createdAt,
        required this.updatedAt,
    });

    factory StickyAttributes.fromJson(Map<String, dynamic> json) => StickyAttributes(
        name: json["name"],
        alternativeText: json["alternativeText"],
        caption: json["caption"],
        width: json["width"],
        height: json["height"],
        formats: json["formats"],
        hash: json["hash"],
        ext: json["ext"],
        mime: json["mime"],
        size: json["size"]?.toDouble(),
        url: json["url"],
        previewUrl: json["previewUrl"],
        provider: json["provider"],
        providerMetadata: json["provider_metadata"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "alternativeText": alternativeText,
        "caption": caption,
        "width": width,
        "height": height,
        "formats": formats,
        "hash": hash,
        "ext": ext,
        "mime": mime,
        "size": size,
        "url": url,
        "previewUrl": previewUrl,
        "provider": provider,
        "provider_metadata": providerMetadata,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
    };
}

class Name {
    List<NameDatum> data;

    Name({
        required this.data,
    });

    factory Name.fromJson(Map<String, dynamic> json) => Name(
        data: List<NameDatum>.from(json["data"].map((x) => NameDatum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class NameDatum {
    int id;
    IndigoAttributes attributes;

    NameDatum({
        required this.id,
        required this.attributes,
    });

    factory NameDatum.fromJson(Map<String, dynamic> json) => NameDatum(
        id: json["id"],
        attributes: IndigoAttributes.fromJson(json["attributes"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
    };
}

class IndigoAttributes {
    String username;
    String email;
    String provider;
    bool confirmed;
    bool blocked;
    DateTime createdAt;
    DateTime updatedAt;

    IndigoAttributes({
        required this.username,
        required this.email,
        required this.provider,
        required this.confirmed,
        required this.blocked,
        required this.createdAt,
        required this.updatedAt,
    });

    factory IndigoAttributes.fromJson(Map<String, dynamic> json) => IndigoAttributes(
        username: json["username"],
        email: json["email"],
        provider: json["provider"],
        confirmed: json["confirmed"],
        blocked: json["blocked"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
    );

    Map<String, dynamic> toJson() => {
        "username": username,
        "email": email,
        "provider": provider,
        "confirmed": confirmed,
        "blocked": blocked,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
    };
}

class TarifDasar {
    List<TarifDasarDatum> data;

    TarifDasar({
        required this.data,
    });

    factory TarifDasar.fromJson(Map<String, dynamic> json) => TarifDasar(
        data: List<TarifDasarDatum>.from(json["data"].map((x) => TarifDasarDatum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class TarifDasarDatum {
    int id;
    IndecentAttributes attributes;

    TarifDasarDatum({
        required this.id,
        required this.attributes,
    });

    factory TarifDasarDatum.fromJson(Map<String, dynamic> json) => TarifDasarDatum(
        id: json["id"],
        attributes: IndecentAttributes.fromJson(json["attributes"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
    };
}

class IndecentAttributes {
    int tarifDasar;
    dynamic currency;
    dynamic currencyUsd;
    DateTime createdAt;
    DateTime updatedAt;
    DateTime publishedAt;

    IndecentAttributes({
        required this.tarifDasar,
        required this.currency,
        required this.currencyUsd,
        required this.createdAt,
        required this.updatedAt,
        required this.publishedAt,
    });

    factory IndecentAttributes.fromJson(Map<String, dynamic> json) => IndecentAttributes(
        tarifDasar: json["tarif_dasar"],
        currency: json["currency"],
        currencyUsd: json["currency_usd"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
    );

    Map<String, dynamic> toJson() => {
        "tarif_dasar": tarifDasar,
        "currency": currency,
        "currency_usd": currencyUsd,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "publishedAt": publishedAt.toIso8601String(),
    };
}

class TarifPandu {
    List<TarifPanduDatum> data;

    TarifPandu({
        required this.data,
    });

    factory TarifPandu.fromJson(Map<String, dynamic> json) => TarifPandu(
        data: List<TarifPanduDatum>.from(json["data"].map((x) => TarifPanduDatum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class TarifPanduDatum {
    int id;
    HilariousAttributes attributes;

    TarifPanduDatum({
        required this.id,
        required this.attributes,
    });

    factory TarifPanduDatum.fromJson(Map<String, dynamic> json) => TarifPanduDatum(
        id: json["id"],
        attributes: HilariousAttributes.fromJson(json["attributes"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
    };
}

class HilariousAttributes {
    String name;
    int price;
    DateTime createdAt;
    DateTime updatedAt;
    DateTime publishedAt;

    HilariousAttributes({
        required this.name,
        required this.price,
        required this.createdAt,
        required this.updatedAt,
        required this.publishedAt,
    });

    factory HilariousAttributes.fromJson(Map<String, dynamic> json) => HilariousAttributes(
        name: json["name"],
        price: json["price"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "price": price,
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
