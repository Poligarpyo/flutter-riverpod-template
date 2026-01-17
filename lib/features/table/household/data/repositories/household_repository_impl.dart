import '../../domain/entities/household.dart';
import '../../domain/repositories/household_repository.dart';
import '../model/household_model.dart';
import '../sources/household_remote_source.dart';

class HouseholdRepositoryImpl implements HouseholdRepository {
  final HouseholdRemoteSource remoteDataSource;

  HouseholdRepositoryImpl({required this.remoteDataSource});
  
  @override
  Future<List<Household>> getHouseholds({required int limit, String search = ''}) async {
    final models = await remoteDataSource.fetchHouseholds(limit: limit, search: search);
    return models.map((e) => e.toEntity()).toList();
  }
}
