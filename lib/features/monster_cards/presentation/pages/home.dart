import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monster_cards/features/monster_cards/presentation/bloc/monster_cards_bloc.dart';

import '../../../../injection_container.dart';
import '../widgets/gradient_app_bar.dart';
import '../widgets/home_body.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          GradientAppBar(title: "Monster Cards"),
          buildBody(context),
        ],
      ),
    );
  }

  BlocProvider<MonsterCardsBloc> buildBody(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<MonsterCardsBloc>(),
      child: BlocBuilder<MonsterCardsBloc, MonsterCardsState>(
        builder: (context, state) {
          if (state is Empty) {
            //TODO Add functionality
            print('============ empty');
            BlocProvider.of<MonsterCardsBloc>(context)
                .add(GetAllMonstersEvent());
            return Container();
          } else if (state is Loading) {
            //TODO Add loading screen
            print('=========== loading');
            return Container();
          } else if (state is Loaded) {
            print('=========== loaded');
            return HomeBody(monsters: state.monsters);
          } else if (state is Error) {
            //TODO Add functionality
            return Container();
          } else {
            //TODO Add functionality
            return Container();
          }
        },
      ),
    );
  }
}
