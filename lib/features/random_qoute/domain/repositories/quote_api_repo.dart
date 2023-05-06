import 'dart:convert';
import 'package:http/http.dart';
import 'package:quote_app/core/utils/constants/api_constants.dart';
import 'package:quote_app/features/random_qoute/data/models/api_model.dart';

class QuoteRepository {
  Future<String?> getQuotes() async {
    try {
       Response response = await get(Uri.parse('${ApiConstants.baseUrl}${ApiConstants.quotesEndpoint}'));

      // final response = await http.get(
      //     Uri.parse('${ApiConstants.baseUrl}${ApiConstants.quotesEndpoint}'));

      if (response.statusCode == 200) {
        String data = response.body;
        Map jsonData = jsonDecode(data);
      } else {
        print('statues code  = ${response.statusCode}');
      }
    } catch (e) {
      print('caught error');
    }
  }

  // Future<QuoteModel?> updateQuotes() async {
  //   final http.Response response = await http.put(
  //       Uri.parse('${ApiConstants.baseUrl}${ApiConstants.quotesEndpoint}'));
  //   if (response.statusCode == 200) {
  //     return QuoteModel.fromJson(jsonDecode(response.body));
  //   } else{
  //     throw Exception('Failed to update quote');
  //   }
  // }
}
