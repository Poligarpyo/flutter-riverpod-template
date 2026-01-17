import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../../router/app_router.dart';
import '../../../../../utils/context_extensions.dart';
import '../../domain/entities/household.dart';
import '../../providers/household_providers.dart';
import '../widgets/card.dart';

class HouseholdScreen extends ConsumerStatefulWidget {
  const HouseholdScreen({super.key});

  @override
  ConsumerState<HouseholdScreen> createState() => _HouseholdScreenState();
}

class _HouseholdScreenState extends ConsumerState<HouseholdScreen> {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _searchController = TextEditingController();

  bool _isWaitingToLoadMore = false;

  Timer? _loadMoreTimer;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent - 200) {
        if (_isWaitingToLoadMore) return;
        if (_loadMoreTimer?.isActive ?? false) return;

        _loadMoreTimer = Timer(const Duration(seconds: 2), () {
          ref
              .read(householdProvider.notifier)
              .loadMore(search: _searchController.text);
        });
      }
    });
  }

  @override
  void dispose() {
    _loadMoreTimer?.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  void _onSearchChanged(String value) {
    _loadMoreTimer?.cancel(); 
    _loadMoreTimer = Timer(const Duration(seconds: 2), () {
      ref.read(householdProvider.notifier).loadMore(search: value);
      ref.read(householdProvider.notifier).loadInitial(search: value);
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(householdProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Households'),
        backgroundColor: Colors.deepPurple,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: context.colorScheme.primary),
          onPressed: () {
            context.go(SGRoute.home.route);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.08),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🔹 Title
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    'Household List',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                  ),
                  Text(
                    '${state.households.length}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              TextField(
                onChanged: _onSearchChanged,
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search Households',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.deepPurple.shade50,
                ),
              ),
              const SizedBox(height: 12),
              // 🔹 Scrollable list
              Expanded(
                child: ListView.builder(
                  controller: _scrollController,
                  itemCount:
                      state.households.length + (state.isLoading ? 1 : 0),
                  itemBuilder: (context, index) {
                    if (index == state.households.length) {
                      return const Padding(
                        padding: EdgeInsets.all(16),
                        child: Center(child: CircularProgressIndicator()),
                      );
                    }

                    final household = state.households[index];
                    return HouseholdCard(
                      household: household,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
