import '../entities/individual.dart';
import '../repositories/individual_repository.dart';

class GetIndividualUseCase {
  // Implementation goes here
  final IndividualRepository repository;

  GetIndividualUseCase(this.repository);

  Future<List<Individual>> call({required int limit, String search = ''}) {
    return repository.getIndividual(limit: limit, search: search);
  }
}
