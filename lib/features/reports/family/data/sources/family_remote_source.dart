import 'package:dio/dio.dart';
import '../../../../../constants/dio_helper.dart';
import '../../../../../constants/endpoints.dart';
import '../model/family_model.dart';

class FamilyRemoteSource {
  final Dio dio;

  FamilyRemoteSource({required this.dio});

  Future<List<FamilyModel>> fetchFamily(
      {int page = 1, int limit = 10, String search = ''}) async {
    try {
      final Response response = await DioHelper.get(
        '${Endpoints.hfrsBaseUrl}${Endpoints.displayFamily}',
        queryParams: {
          'page': page,
          'limit': limit,
          'search': search,
        },
      );

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data['data'] as List<dynamic>;
        return data
            .map((json) => FamilyModel.fromJson(json as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception('Failed to load families');
      }
    } catch (e) {
      // You can customize errors or wrap in a Failure class
      throw Exception('Error fetching families: $e');
    }
  }
}
