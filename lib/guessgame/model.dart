import 'dart:convert';

model welcomeFromJson(String str) => model.fromJson(json.decode(str));

String welcomeToJson(model data) => json.encode(data.toJson());

class model {
  int textfield;
  // String name;
  // int quantity;
  // int price;

  model({
    required this.textfield,
    // required this.name,
    // required this.quantity,
    // required this.price,
  });

  factory model.fromJson(Map<String, dynamic> json) => model(
    textfield: json["confirmBE"],
    // name: json["name"],
    // quantity: json["quantity"],
    // price: json["price"]==null?0:double.parse(json["price"].toString()).toInt(),
  );

  Map<String, dynamic> toJson() => {
    "confirmBE": textfield,
    // "name": name,
    // "quantity": quantity,
    // "price": price,
  };
}
