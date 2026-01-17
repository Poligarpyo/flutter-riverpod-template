import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
 
import '../data/repositories/individual_repository_impl.dart';
import '../data/sources/individual_remote_source.dart';
import '../domain/entities/individual.dart'; 
import '../domain/entities/paginated_individual_state.dart';
import '../domain/repositories/individual_repository.dart';
import '../domain/usecases/get_individual_usecase.dart';
import 'individual_notifier.dart';

final dioProvider = Provider<Dio>((ref) {
  return Dio();
});

final individualRemoteSourceProvider = Provider<IndividualRemoteSource>((ref) {
  final dio = ref.read(dioProvider);
  return IndividualRemoteSource(dio: dio);
});

final individualRepositoryProvider = Provider<IndividualRepository>((ref) {
  return IndividualRepositoryImpl(
    remoteDataSource: ref.read(individualRemoteSourceProvider),
  );
});

final getIndividualUseCaseProvider = Provider<GetIndividualUseCase>((ref) {
  final repository = ref.read(individualRepositoryProvider);
  return GetIndividualUseCase(repository);
});
 

final individualProvider =
    StateNotifierProvider<IndividualNotifier, PaginatedIndividualState>(
  (ref) {
    final useCase = ref.read(getIndividualUseCaseProvider);
    return IndividualNotifier(useCase);
  },
);
