import '../entities/household.dart';

// ignore: one_member_abstracts
abstract class HouseholdRepository {
  Future<List<Household>> getHouseholds(
      {required int limit, String search = ''});
}
