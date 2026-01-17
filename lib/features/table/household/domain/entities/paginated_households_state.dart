import '../../domain/entities/household.dart';

class PaginatedHouseholdsState {
  final List<Household> households;
  final bool isLoading;
  final bool isLoadingMore;
  final String? error;
  final int limit;
  final String search;
  final bool hasMore;

  PaginatedHouseholdsState({
    required this.households,
    this.isLoading = false,
    this.isLoadingMore = false,
    this.error,
    this.limit = 10,
    this.search = '',
    this.hasMore = true,
  });

  PaginatedHouseholdsState copyWith({
    List<Household>? households,
    bool? isLoading,
    bool? isLoadingMore,
    String? error,
    int? limit,
    String? search,
    bool? hasMore,
  }) {
    return PaginatedHouseholdsState(
      households: households ?? this.households,
      isLoading: isLoading ?? this.isLoading,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      error: error,
      limit: limit ?? this.limit,
      search: search ?? this.search,
      hasMore: hasMore ?? this.hasMore,
    );
  }
}
