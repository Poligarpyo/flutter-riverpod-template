import '../../domain/entities/individual.dart';
import '../../domain/repositories/individual_repository.dart';
import '../model/individual_model.dart';
import '../sources/individual_remote_source.dart';

class IndividualRepositoryImpl implements IndividualRepository {
  final IndividualRemoteSource remoteDataSource;
  IndividualRepositoryImpl({required this.remoteDataSource});
  
  @override
  Future<List<Individual>> getIndividual({required int limit, String search = ''}) async {
    final models = await remoteDataSource.fetchIndividual(limit: limit, search: search);
    return models.map((e) => e.toEntity()).toList();
  } 
}
