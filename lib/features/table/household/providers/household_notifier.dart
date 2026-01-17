import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/entities/household.dart';
import '../domain/entities/paginated_households_state.dart';
import '../domain/repositories/household_repository.dart';
import '../domain/usecases/get_household_usecase.dart';

class HouseholdNotifier extends StateNotifier<PaginatedHouseholdsState> {
  final GetHouseholdUseCase getHouseholdUseCase;

  HouseholdNotifier(this.getHouseholdUseCase)
      : super(PaginatedHouseholdsState(
          households: [],
          limit: 10,
          search: '',
          isLoading: false,
          hasMore: true,
        )) {
    loadInitial(search: '');
  }

  Future<void> loadInitial({required String search}) async {
    await _fetch(limit: state.limit, search: search);
  }

  Future<void> loadMore({required String search}) async {
    if (state.isLoading || !state.hasMore) return;

    final newLimit = state.limit + 10;
    await _fetch(limit: newLimit, search: search);
  }

  Future<void> _fetch({required int limit, String search = ''}) async {
    try {
      state = state.copyWith(isLoading: true, error: null);

      // ✅ Use the UseCase here instead of repository
      final data = await getHouseholdUseCase(limit: limit, search: search);

      state = state.copyWith(
        households: data,
        limit: limit,
        isLoading: false,
        hasMore: data.length == limit,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }
}
