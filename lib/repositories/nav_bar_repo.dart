import 'package:bank_app/models/nav_bar_model.dart';
import 'package:bank_app/screens/email_Screen.dart';
import 'package:bank_app/screens/home_screen.dart';
import 'package:bank_app/screens/stats_screen.dart';
import 'package:bank_app/screens/wallet_screen.dart';

class NavBarRepo {
  List<NavBarItems>? items = [
    NavBarItems(
      imagePath: 'assets/navBar/home.svg',
      onPressed: HomeScreen(),
    ),
    NavBarItems(
      imagePath: 'assets/navBar/stats.svg',
      onPressed: StatsScreen(),
    ),
    NavBarItems(
      imagePath: 'assets/navBar/wallet.svg',
      onPressed: WalletScreen(),
    ),
    NavBarItems(
      imagePath: 'assets/navBar/email.svg',
      onPressed: EmailScreen(),
    ),
  ];
}
