class ShippingByCityModel {
  int id;
  String cidade;
  num cost;

  ShippingByCityModel({
    required this.id,
    required this.cidade,
    required this.cost,
  });

  factory ShippingByCityModel.fromJson(Map<String, dynamic> json) =>
      ShippingByCityModel(
        id: json['id'],
        cidade: json['cidade'] /*?? "Medianeira"*/,
        cost: json['custo_entrega'],
      );
}
