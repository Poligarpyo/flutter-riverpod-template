import '../entities/household.dart';
import '../repositories/household_repository.dart';

class   GetHouseholdUseCase {
  // Implementation goes here
  final HouseholdRepository repository;

  GetHouseholdUseCase(this.repository);

  Future<List<Household>> call({required int limit, String search = ''}) {
    return repository.getHouseholds(limit: limit, search: search);
  }
}
