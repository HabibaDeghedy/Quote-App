import 'package:quote_app/features/random_qoute/presentation/screens/favourite_quote_screen.dart';
import 'package:quote_app/features/random_qoute/presentation/screens/quote_screen.dart';

class Routes{
  static const String initialRoute = '/quoteScreen';
  static const String favouriteQuoteRoute = '/favouriteQuote';

}

final routes= {
  Routes.initialRoute: (context) => const QuoteScreen(),
  Routes.favouriteQuoteRoute: (context) => const FavouriteQuoteScreen(),

};