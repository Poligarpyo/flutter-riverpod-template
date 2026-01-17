import '../entities/family.dart';

abstract class FamilyRepository {
  Future<List<Family>> getFamily({required int limit, String search = ''});
}
