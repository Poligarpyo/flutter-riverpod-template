import '../entities/individual.dart';

abstract class IndividualRepository {
  Future<List<Individual>> getIndividual({required int limit, String search = ''});
}
