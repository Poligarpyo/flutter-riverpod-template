import '../entities/family.dart';
import '../repositories/family_repository.dart';

class GetFamilyUseCase {
  // Implementation goes here
  final FamilyRepository repository;

  GetFamilyUseCase(this.repository);

  Future<List<Family>> call({required int limit, String search = ''}) {
    return repository.getFamily(limit: limit, search: search);
  }
}
