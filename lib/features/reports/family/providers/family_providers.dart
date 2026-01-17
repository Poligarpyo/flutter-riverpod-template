import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' hide FamilyNotifier;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/repositories/family_repository_impl.dart';
import '../data/sources/family_remote_source.dart';
import '../domain/entities/family.dart'; 
import '../domain/entities/paginated_family_state.dart';
import '../domain/repositories/family_repository.dart';
import '../domain/usecases/get_family_usecase.dart';
import 'family_notifier.dart';

final dioProvider = Provider<Dio>((ref) {
  return Dio();
});

final familyRemoteSourceProvider = Provider<FamilyRemoteSource>((ref) {
  final dio = ref.read(dioProvider);
  return FamilyRemoteSource(dio: dio);
});

final familyRepositoryProvider = Provider<FamilyRepository>((ref) {
  return FamilyRepositoryImpl(
    remoteDataSource: ref.read(familyRemoteSourceProvider),
  );
});

final getFamilyUseCaseProvider = Provider<GetFamilyUseCase>((ref) {
  final repository = ref.read(familyRepositoryProvider);
  return GetFamilyUseCase(repository);
});
 

final familyProvider =
    StateNotifierProvider<FamilyNotifier, PaginatedFamilyState>(
  (ref) {
    final useCase = ref.read(getFamilyUseCaseProvider);
    return FamilyNotifier(useCase);
  },
);
