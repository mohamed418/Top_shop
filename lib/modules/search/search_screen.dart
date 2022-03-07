// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:top_shop/bloc/cubit.dart';
import 'package:top_shop/bloc/states.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TopShopCubit, TopShopStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  hintText: 'enter any thing you want..',
                  label: Text(
                    'Search',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Lottie.asset('assets/lotties/search.json'),
            ),
          ],
        );
      },
    );
  }
}
