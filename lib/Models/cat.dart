class cat {
  String? fact;
  int? length;

  cat({this.fact, this.length});

  factory cat.fromJson({required Map<String, dynamic> json}) {
    return cat(
      fact: json['fact'],
      length: json['length'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fact'] = this.fact;
    data['length'] = this.length;
    return data;
  }
}
