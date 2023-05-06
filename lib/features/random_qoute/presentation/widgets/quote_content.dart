import 'package:flutter/material.dart';
import 'package:quote_app/core/utils/app_colors.dart';
import 'package:quote_app/features/random_qoute/data/models/api_model.dart';
import 'package:quote_app/features/random_qoute/domain/repositories/quote_api_repo.dart';

class QuoteContent extends StatefulWidget {
  const QuoteContent({Key? key}) : super(key: key);

  @override
  State<QuoteContent> createState() => _QuoteContentState();
}

class _QuoteContentState extends State<QuoteContent> {
  Map<String, dynamic> quotes = {};


  @override
  void initState(){
  super.initState();
  getData();
}
void getData() async{
  QuoteModel quoteObject = new QuoteModel();
  quotes = await quoteObject.getQuotes() as Map<String, dynamic>;
  print(quotes);
  setState(() {});
}

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AppColors.primary,
        ),
        child: Column(
          children: [
                 Text(quotes["quote"] ,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              child: Text(
                  quotes["author"],
                style: Theme.of(context).textTheme.bodyMedium,

              ),
            ),
          ],
        ),
      ),
    );
  }
}
