import 'dart:convert';

class EnderecoModel {
  final String cep;
  final String cidade;
  final String estado;

  EnderecoModel(
      {required this.cep, required this.cidade, required this.estado});

  Map<String, dynamic> toMap() {
    return {'cep': cep, 'cidade': cidade, 'estado': estado};
  }

  factory EnderecoModel.fromMap(Map<String, dynamic> map) {
    return EnderecoModel(
        cep: map['cep'], cidade: map['localidade'], estado: map['uf']);
  }

  factory EnderecoModel.fromJson(String json) =>
      EnderecoModel.fromMap(jsonDecode(json));
}
