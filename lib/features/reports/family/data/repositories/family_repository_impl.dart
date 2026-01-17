import '../../domain/entities/family.dart';
import '../../domain/repositories/family_repository.dart';
import '../model/family_model.dart';
import '../sources/family_remote_source.dart';

class FamilyRepositoryImpl implements FamilyRepository {
  final FamilyRemoteSource remoteDataSource;
  FamilyRepositoryImpl({required this.remoteDataSource});
  
  @override
  Future<List<Family>> getFamily({required int limit, String search = ''}) async {
    final models = await remoteDataSource.fetchFamily(limit: limit, search: search);
    return models.map((e) => e.toEntity()).toList();
  } 
}
