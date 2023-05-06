import 'dart:convert';
import 'package:http/http.dart';
import 'package:quote_app/core/utils/constants/api_constants.dart';

class QuoteModel {
  int? id;
  String? author = '';
  String? quote = '';


  QuoteModel({
    this.author,
    this.id,
    this.quote,
  });



  Future<Map<String, dynamic>?> getQuotes() async{
    try{
      Uri APIURL = Uri.parse('${ApiConstants.baseUrl}${ApiConstants.quotesEndpoint}');
      print(APIURL);
      Response response = await get(APIURL);

      if (response.statusCode == 200){
        String data = response.body;
        Map<String, dynamic> jsonData = jsonDecode(data);
        return jsonData;
        print(jsonData);
      } else {
        print('statues code  = ${response.statusCode}');
      }
    } catch(e){
      print('caught error');
    }

    return {};
  }

  factory QuoteModel.fromJson(Map <String, dynamic>jsonData){
    return QuoteModel(
        id: jsonData['id'] as int,
        author: jsonData['author'] as String,
        quote: jsonData['quote'] as String,
    );
  }


  Map<String, dynamic> toJson() => {
        'id': id,
        'author': author,
        'quote': quote,
      };



  QuoteModel copyWith({
    int? id,
    String? author,
    String? quote,
  }) {
    return QuoteModel(
      id: id ?? this.id,
      author: author ?? this.author,
      quote: quote ?? this.quote,
    );
  }


}

