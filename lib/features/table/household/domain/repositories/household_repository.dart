import '../entities/household.dart';

abstract class HouseholdRepository {
  Future<List<Household>> getHouseholds({required int limit, String search = ''});
}
