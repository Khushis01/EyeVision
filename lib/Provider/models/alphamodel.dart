class AlphaModel {
  AlphaModel({
    this.data,
  });

  final List<Datum>? data;

  factory AlphaModel.fromJson(Map<String, dynamic> json) => AlphaModel(
        data: json["data"] == null
            ? null
            : List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    this.id,
    this.letter,
  });

  final int? id;
  final String? letter;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"] == null ? null : json["id"],
        letter: json["letter"] == null ? null : json["letter"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "letter": letter == null ? null : letter,
      };
}
