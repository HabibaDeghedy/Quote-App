import 'package:flutter/material.dart';
import 'package:quote_app/core/utils/app_colors.dart';
import 'package:quote_app/core/utils/app_strings.dart';
import 'package:quote_app/features/random_qoute/presentation/widgets/quote_content.dart';

import '../../data/models/api_model.dart';
class QuoteScreen extends StatefulWidget {
  const QuoteScreen({Key? key}) : super(key: key);

  @override
  State<QuoteScreen> createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {
  // late Future<QuoteModel> refreshQuote;
  //
  // @override
  // void initState() {
  //   super.initState();
  //   refreshQuote = _refreshData();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.appName),
      ),
      body: buildBodyContent(),
    );
  }
  Widget buildBodyContent(){
    return Column(
      children: [
        QuoteContent(),
        Container(
          margin: EdgeInsets.symmetric(vertical: 15),
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.primary,
          ),
          child: IconButton(
            onPressed: (){
              // setState(() {
              //   refreshQuote = updateQuotes();
              // });
            },
            icon: Icon(Icons.refresh),
            color: Colors.white,
            iconSize: 28,
          ),
        ),
      ],
    );
  }
}
