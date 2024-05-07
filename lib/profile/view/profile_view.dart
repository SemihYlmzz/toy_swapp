import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../profile.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_fetchMoreOnScroll);
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_fetchMoreOnScroll)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final profileState = context.select(
      (ProfileBloc bloc) => bloc.state,
    );
    final ownedToys = profileState.ownedToys;
    final fetchMoreFailure = profileState.fetchMoreFailure;
    final fetchLatestFailure = profileState.fetchLatestToysFailure;
    final isInitializing = profileState.isInitializing;
    return RefreshIndicator(
      onRefresh: () async {
        context.read<ProfileBloc>().add(
              const ProfileEvent.fetchMoreOwnedToys(
                startOver: true,
              ),
            );
      },
      displacement: 20,
      edgeOffset: 160,
      child: CustomScrollView(
        controller: _scrollController,
        physics: const AlwaysScrollableScrollPhysics(),
        slivers: [
          const ProfileSliverAppBar(),
          if (fetchLatestFailure != null)
            SliverFillRemaining(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Oops! Something went wrong.'),
                  TextButton(
                    onPressed: () => context
                        .read<ProfileBloc>()
                        .add(const ProfileEvent.fetchMoreOwnedToys()),
                    child: const Text(
                      'Tap to try again.',
                    ),
                  ),
                ],
              ),
            )
          else
            ownedToys == null || isInitializing
                ? const SliverFillRemaining(
                    child: Center(child: CircularProgressIndicator()),
                  )
                : ownedToys.isEmpty
                    ? const SliverFillRemaining(
                        child: ProfileNoToyCreated(),
                      )
                    : OwnedToysGridViewDisplayer(
                        ownedToys: ownedToys,
                        scrollController: _scrollController,
                      ),
          if (fetchMoreFailure != null)
            SliverToBoxAdapter(
              child: Column(
                children: [
                  const Text('Oops! Something went wrong.'),
                  TextButton(
                    onPressed: () => context.read<ProfileBloc>().add(
                          const ProfileEvent.fetchMoreOwnedToys(),
                        ),
                    child: const Text(
                      'Tap to try again.',
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  void _fetchMoreOnScroll() {
    final profileState = context.read<ProfileBloc>().state;
    if (!_isBottom) {
      return;
    }
    if (profileState.isLoading) {
      return;
    }
    if (profileState.fetchMoreFailure != null) {
      return;
    }
    if (profileState.hasReachedMax) {
      return;
    }
    context.read<ProfileBloc>().add(const ProfileEvent.fetchMoreOwnedToys());
  }

  bool get _isBottom {
    if (_scrollController.position.userScrollDirection ==
        ScrollDirection.forward) {
      return false;
    }
    if (_scrollController.position.atEdge &&
        _scrollController.position.pixels != 0) {
      return false;
    }
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= maxScroll - 150;
  }
}
