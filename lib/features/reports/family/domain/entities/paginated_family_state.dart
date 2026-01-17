import 'family.dart';

class PaginatedFamilyState {
  final List<Family> family;
  final bool isLoading;
  final bool isLoadingMore;
  final String? error;
  final int limit;
  final String search;
  final bool hasMore;

  PaginatedFamilyState({
    required this.family,
    this.isLoading = false,
    this.isLoadingMore = false,
    this.error,
    this.limit = 10,
    this.search = '',
    this.hasMore = true,
  });

  PaginatedFamilyState copyWith({
    List<Family>? family,
    bool? isLoading,
    bool? isLoadingMore,
    String? error,
    int? limit,
    String? search,
    bool? hasMore,
  }) {
    return PaginatedFamilyState(
      family: family ?? this.family,
      isLoading: isLoading ?? this.isLoading,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      error: error,
      limit: limit ?? this.limit,
      search: search ?? this.search,
      hasMore: hasMore ?? this.hasMore,
    );
  }
}
