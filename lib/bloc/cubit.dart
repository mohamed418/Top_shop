import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_navigation_bar/responsive_navigation_bar.dart';
import 'package:top_shop/bloc/states.dart';
import 'package:top_shop/modules/categories/categories_screen.dart';
import 'package:top_shop/modules/favorites/favorites_screen.dart';
import 'package:top_shop/modules/product/product_screen.dart';
import 'package:top_shop/modules/search/search_screen.dart';
import 'package:top_shop/modules/settings/settings_screen.dart';

class TopShopCubit extends Cubit<TopShopStates> {
  TopShopCubit() : super(TopShopInitialState());

  static TopShopCubit get(context) => BlocProvider.of(context);

  int currentIndex = 2;

  List<NavigationBarButton> tabs = [
    const NavigationBarButton(
      icon: Icons.favorite_outline_rounded,
      text: 'Favorites',
      backgroundGradient: LinearGradient(
        colors: <Color>[
          Colors.yellow,
          Colors.orange,
          Colors.deepOrange,
        ],
      ),
    ),
    const NavigationBarButton(
      icon: Icons.category_outlined,
      text: 'Categories',
      backgroundGradient: LinearGradient(
        colors: <Color>[
          Colors.yellow,
          Colors.orange,
          Colors.deepOrange,
        ],
      ),
    ),
    const NavigationBarButton(
      icon: Icons.shopping_cart_outlined,
      text: 'Shopping',
      backgroundGradient: LinearGradient(
        colors: <Color>[
          Colors.yellow,
          Colors.orange,
          Colors.deepOrange,
        ],
      ),
    ),
    const NavigationBarButton(
      icon: Icons.search_outlined,
      text: 'Search',
      backgroundGradient: LinearGradient(
        colors: <Color>[
          Colors.yellow,
          Colors.orange,
          Colors.deepOrange,
        ],
      ),
    ),
    const NavigationBarButton(
      icon: Icons.settings_rounded,
      text: 'Settings',
      backgroundGradient: LinearGradient(
        colors: <Color>[
          Colors.yellow,
          Colors.orange,
          Colors.deepOrange,
        ],
      ),
    ),
  ];

  List<Widget> screens = [
    const FavoritesScreen(),
    const CategoriesScreen(),
    const ProductScreen(),
    const SearchScreen(),
    const SettingsScreen(),
  ];

  void changeBot(index) {
    currentIndex = index;
    emit(ChangeBotNavState());
  }

  List<dynamic> search = [];
}
