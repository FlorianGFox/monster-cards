import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:monster_cards/core/error/failures.dart';
import 'package:monster_cards/features/monster_cards/domain/usecases/get_all_monsters.dart';
import 'package:monster_cards/features/monster_cards/presentation/bloc/monster_cards_bloc.dart';

import '../../../../fixtures/monster_data.dart';

class MockGetAllMonstersUseCase extends Mock implements GetAllMonsters {}

void main() {
  MockGetAllMonstersUseCase mockUseCase;
  MonsterCardsBloc bloc;

  setUp(() {
    mockUseCase = MockGetAllMonstersUseCase();
    bloc = MonsterCardsBloc(getAll: mockUseCase);
  });

  test('initial State is Empty', () {
    expect(bloc.initialState, Empty());
  });

  group('mapEventToState', () {
    final tMonsters = monstersFixture;

    test('Emits [Empty, Loading, Error] when a failure is returned.', () async {
      //arrange
      when(mockUseCase.call(any))
          .thenAnswer((_) async => Left(UnexpectedFailure()));
      //assert later
      final expected = [
        Empty(),
        Loading(),
        Error(),
      ];
      expectLater(bloc, emitsInOrder(expected));
      //act
      bloc.add(GetAllMonstersEvent());
    });

    test('Emits state [Empty, Loading, Loaded] with correct values.', () async {
      //arrange
      when(mockUseCase.call(any)).thenAnswer((_) async => Right(tMonsters));
      //assert later
      final expected = [
        Empty(),
        Loading(),
        Loaded(tMonsters),
      ];
      expectLater(bloc, emitsInOrder(expected));
      //act
      bloc.add(GetAllMonstersEvent());
    });
  });
}
