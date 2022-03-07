
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_navigation_bar/responsive_navigation_bar.dart';
import 'package:top_shop/bloc/cubit.dart';
import 'package:top_shop/bloc/states.dart';

class ShopLayout extends StatelessWidget {
  const ShopLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = TopShopCubit.get(context);
    return BlocConsumer<TopShopCubit, TopShopStates>(
      listener: (context, state){},
      builder: (context, state){
        return Scaffold(
          appBar: AppBar(
            title: const Text('topShop'),
          ),
          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar: ResponsiveNavigationBar(
            selectedIndex: cubit.currentIndex,
            onTabChange: (index) {
              cubit.changeBot(index);
            },
            navigationBarButtons: cubit.tabs,
            textStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      },
    );
  }
}
