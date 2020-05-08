import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:monster_cards/features/monster_cards/domain/usecases/get_all_monsters.dart';
import 'package:monster_cards/features/monster_cards/presentation/bloc/monster_cards_bloc.dart';

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
    //Todo Write tests
  });
}
