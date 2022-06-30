class QuestionModel {
  QuestionModel({
    this.question,
    this.data,
  });

  final String? question;
  final List<Datum>? data;

  factory QuestionModel.fromJson(Map<String, dynamic> json) => QuestionModel(
        question: json["question"] == null ? null : json["question"],
        data: json["data"] == null
            ? null
            : List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "question": question == null ? null : question,
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    this.alphabet,
    this.fontsize,
  });

  final String? alphabet;
  final double? fontsize;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        alphabet: json["alphabet"] == null ? null : json["alphabet"],
        fontsize: json["fontsize"] == null ? null : json["fontsize"],
      );

  Map<String, dynamic> toJson() => {
        "alphabet": alphabet == null ? null : alphabet,
        "fontsize": fontsize == null ? null : fontsize,
      };
}
