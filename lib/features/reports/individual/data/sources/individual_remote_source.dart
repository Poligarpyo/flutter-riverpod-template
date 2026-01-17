import 'package:dio/dio.dart';
import '../../../../../constants/dio_helper.dart';
import '../../../../../constants/endpoints.dart';
import '../model/individual_model.dart';

class IndividualRemoteSource {
  final Dio dio;

  IndividualRemoteSource({required this.dio});

  Future<List<IndividualModel>> fetchIndividual(
      {int page = 1, int limit = 10, String search = ''}) async {
    try {
      final Response response = await DioHelper.get(
        '${Endpoints.hfrsBaseUrl}${Endpoints.displayIndiv}',
        queryParams: {
          'page': page,
          'limit': limit,
          'search': search,
        },
      );

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data['data'] as List<dynamic>;
        return data
            .map((json) => IndividualModel.fromJson(json as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception('Failed to load individuals');
      }
    } catch (e) {
      // You can customize errors or wrap in a Failure class
      throw Exception('Error fetching individuals: $e');
    }
  }
}
