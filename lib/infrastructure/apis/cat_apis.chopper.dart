// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_apis.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$GetCatService extends GetCatService {
  _$GetCatService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = GetCatService;

  @override
  Future<Response<dynamic>> getCat(String animalType, int amount) {
    final $url = '/facts/random?animal_type=${animalType}&amount=${amount}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }
}
