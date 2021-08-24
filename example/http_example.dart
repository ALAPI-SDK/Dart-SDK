import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:http/src/model/model.dart';

main() async {
  var response = (await apiRequest("https://v2.alapi.cn/api/zaobao", {}));
  var model = ALAPIModel.fromJson(json.decode(response));
  print(model.data);
}

Future<String> apiRequest(String url, Map jsonMap) async {
  HttpClient httpClient = new HttpClient();
  HttpClientRequest request = await httpClient.postUrl(Uri.parse(url));
  request.headers.set('content-type', 'application/json');
  request.add(utf8.encode(json.encode(jsonMap)));
  HttpClientResponse response = await request.close();
  // todo - you should check the response.statusCode
  String reply = await response.transform(utf8.decoder).join();
  httpClient.close();
  return reply;
}
