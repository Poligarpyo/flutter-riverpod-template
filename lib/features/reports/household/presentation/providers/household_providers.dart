import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repositories/household_repository_impl.dart';
import '../../data/sources/household_remote_source.dart';
import '../../domain/entities/household.dart';
import '../states/paginated_households_state.dart';
import '../../domain/repositories/household_repository.dart';
import '../../domain/usecases/get_household_usecase.dart';
import '../notifiers/household_notifier.dart';

final dioProvider = Provider<Dio>((ref) {
  return Dio();
});

final householdRemoteSourceProvider = Provider<HouseholdRemoteSource>((ref) {
  final dio = ref.read(dioProvider);
  return HouseholdRemoteSource(dio: dio);
});

final householdRepositoryProvider = Provider<HouseholdRepository>((ref) {
  return HouseholdRepositoryImpl(
    remoteDataSource: ref.read(householdRemoteSourceProvider),
  );
});

final getHouseholdUseCaseProvider = Provider<GetHouseholdUseCase>((ref) {
  final repository = ref.read(householdRepositoryProvider);
  return GetHouseholdUseCase(repository);
});
 

final householdProvider =
    StateNotifierProvider<HouseholdNotifier, PaginatedHouseholdsState>(
  (ref) {
    final useCase = ref.read(getHouseholdUseCaseProvider);
    return HouseholdNotifier(useCase);
  },
);
