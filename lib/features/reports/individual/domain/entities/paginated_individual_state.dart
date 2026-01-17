import 'individual.dart';

class PaginatedIndividualState {
  final List<Individual> individual;
  final bool isLoading;
  final bool isLoadingMore;
  final String? error;
  final int limit;
  final String search;
  final bool hasMore;

  PaginatedIndividualState({
    required this.individual,
    this.isLoading = false,
    this.isLoadingMore = false,
    this.error,
    this.limit = 10,
    this.search = '',
    this.hasMore = true,
  });

  PaginatedIndividualState copyWith({
    List<Individual>? individual,
    bool? isLoading,
    bool? isLoadingMore,
    String? error,
    int? limit,
    String? search,
    bool? hasMore,
  }) {
    return PaginatedIndividualState(
      individual: individual ?? this.individual,
      isLoading: isLoading ?? this.isLoading,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      error: error,
      limit: limit ?? this.limit,
      search: search ?? this.search,
      hasMore: hasMore ?? this.hasMore,
    );
  }
}
