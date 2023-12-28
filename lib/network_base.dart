import 'dart:async';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:http_interceptor/http/intercepted_client.dart';

class BaseNetwork {

  Future<http.Response> httpGet(String url) async {
    /*
    {Accept: application/json, Content-Type: application/json, Access-Control-Allow-Origin: *, place: none, os: 3, : 43, }
     */
    String token = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJ0IjoyLCJ1Ijo1NzM2ODQ3MjUwNTU0ODgwLCJpc3MiOiJ5dXR1IiwiZXhwIjoxNjY2NjQ2MTU3LCJvIjozfQ.9e2usifLPLJMbm7H3n3dlnCESUTo8zPhDhEE25-Pwnv3cCACh6luGp-MUECDVIqLmQNX3FOe0UvfGc6YfZA2Pg";
    Map<String, String> headers = { "Accept": "application/json",  'Content-Type': 'application/json', "Access-Control-Allow-Origin" : "*"  };
    headers["Authorization"] = "Bearer $token";
    headers["bd"] = "43";
    headers["os"] = "3";
    headers["place"] = "none";
    http.Response res = await http.get(Uri.parse(url), headers: headers);
    print('-------------------- BaseNetwork http httpGet: $url');
     print("-----------------res: ${res.body}");
    return  res;

  }

  Future<http.Response> httpGetWithCustomHeaders(String url, Map<String, String> headers) async {
    headers["Accept"] = "application/json";
    headers["Content-Type"] = "application/json";
    headers["Access-Control-Allow-Origin"] = "*";
    debugPrint('--------------------http httpGetWithCustomHeaders: $url');
    debugPrint('--------------------http httpGetWithCustomHeaders: $headers');
    http.Response res = await http.get(Uri.parse(url), headers: headers);
    print("-----------------res: ${res.body}");
    return  res;
  }

  Future<http.Response> httpDelete(String url) async {
    debugPrint('--------------------http httpDelete: $url');
    http.Response res = await http.delete(Uri.parse(url), headers: { "Accept": "application/json",  'Content-Type': 'application/json', "Access-Control-Allow-Origin" : "*"  });
    print("-----------------res: ${res.body}");
    return  res;
  }

  Future<http.Response> httpPostWithCustomHeadersLatinEncoding(String url, dynamic body, Map<String, String> headers) async {
    headers["Accept"] = "application/json";
    headers["Content-Type"] = "application/json";
    headers["Access-Control-Allow-Origin"] = "*";

    debugPrint('--------------------http httpPostWithCustomHeadersLatinEncoding: $url');
    debugPrint('--------------------http httpPostWithCustomHeadersLatinEncoding: $body');
    debugPrint('--------------------http httpPostWithCustomHeadersLatinEncoding: $headers');
    http.Response res = await http.post(Uri.parse(url), headers: headers, body: body, encoding: Encoding.getByName("latin1"));
    print("-----------------res: ${res.body}");
    return  res;
  }

  Future<http.Response> httpPostWithCustomHeaders(String url, dynamic body, Map<String, String> headers) async {
    headers["Accept"] = "application/json";
    headers["Content-Type"] = "application/json";
    headers["Access-Control-Allow-Origin"] = "*";

    debugPrint('--------------------http httpPostWithCustomHeaders: $url');
    debugPrint('--------------------http httpPostWithCustomHeaders: $body');
    debugPrint('--------------------http httpPostWithCustomHeaders: $headers');
    http.Response res = await http.post(Uri.parse(url), headers: headers, body: body, encoding: Encoding.getByName("UTF-8"));
    print("-----------------res: ${res.body}");
    return  res;
  }

  Future<http.Response> httpPutWithHeaders(String url, dynamic body, Map<String, String> headers) async {
    headers["Accept"] = "application/json";
    headers["Content-Type"] = "application/json";
    headers["Access-Control-Allow-Origin"] = "*";

    debugPrint('--------------------http httpPutWithHeaders: $url');
    debugPrint('--------------------http httpPutWithHeaders: $body');
    debugPrint('--------------------http httpPutWithHeaders: $headers');
    http.Response res = await http.put(Uri.parse(url), headers: headers, body: body);
    print("-----------------res: ${res.body}");
    return  res;
  }

  Future<http.Response> httpPost(String url, dynamic body) async {
    debugPrint('--------------------http post: $url');
    debugPrint('--------------------http post: $body');

    http.Response res =  await http.post(Uri.parse(url), body: json.encode(body), headers: { "Accept": "application/json",  'Content-Type': 'application/json', "Access-Control-Allow-Origin" : "*" });
    print("-----------------res: ${res.body}");
    print("-----------------res: ${res.body}");
    return  res;
  }

  Future<http.Response> httpPut(String url, dynamic body) async {
    debugPrint('--------------------http httpPut: $url');
    debugPrint('--------------------http httpPut: $body');
    http.Response res = await http.put(Uri.parse(url), body: json.encode(body), encoding: Encoding.getByName("UTF-8"), headers: { "Accept": "application/json", 'Content-Type': 'application/json', "Access-Control-Allow-Origin" : "*"  });
    print("-----------------res: ${res.body}");
    return  res;
  }
}
