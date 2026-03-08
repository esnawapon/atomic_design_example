import 'package:atomic_design_example/models/feed.dart';
import 'package:atomic_design_example/screens/home/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState());

  Future<void> init() async {
    emit(state.copyWith(status: .loading));

    // api all
    await Future.delayed(const Duration(milliseconds: 500));
    emit(
      state.copyWith(
        status: .ready,
        feeds: [
          ...[..._dummyData]..shuffle(),
        ],
      ),
    );
  }
}

const _dummyData = [
  Feed(
    username: "Alice Tan",
    userhandle: "@alicetan",
    content: "Just finished building my first Flutter app. Feeling proud!",
    time: "10m",
    imageUrl: "",
    commentCount: 3,
    shareCount: 1,
    likeCount: 25,
  ),
  Feed(
    username: "Kenji Watanabe",
    userhandle: "@kenji_dev",
    content: "Dark mode should be the default for every app.",
    time: "25m",
    imageUrl: "https://picsum.photos/seed/flutter/600/400",
    commentCount: 8,
    shareCount: 2,
    likeCount: 40,
  ),
  Feed(
    username: "Sofia Martinez",
    userhandle: "@sofia.codes",
    content: "Atomic Design really changed how I think about UI components.",
    time: "40m",
    imageUrl: "",
    commentCount: 5,
    shareCount: 3,
    likeCount: 33,
  ),
  Feed(
    username: "David Kim",
    userhandle: "@davidk",
    content: "Low RAM devices make mobile development a real challenge.",
    time: "1hr",
    imageUrl: "https://picsum.photos/seed/code/600/400",
    commentCount: 12,
    shareCount: 5,
    likeCount: 70,
  ),
  Feed(
    username: "Liam O'Connor",
    userhandle: "@liamtech",
    content: "Trying Riverpod after years of Bloc. Interesting experience so far.",
    time: "2hr",
    imageUrl: "",
    commentCount: 6,
    shareCount: 1,
    likeCount: 28,
  ),
  Feed(
    username: "Nina Petrova",
    userhandle: "@ninadev",
    content: "Just deployed my backend. No errors on first run... suspicious.",
    time: "3hr",
    imageUrl: "https://picsum.photos/seed/backend/600/400",
    commentCount: 14,
    shareCount: 4,
    likeCount: 95,
  ),
  Feed(
    username: "Carlos Mendes",
    userhandle: "@cmendes",
    content: "Coffee + coding + rain = perfect productivity combo.",
    time: "5hr",
    imageUrl: "https://picsum.photos/seed/coffee/600/400",
    commentCount: 2,
    shareCount: 0,
    likeCount: 19,
  ),
  Feed(
    username: "Emma Johnson",
    userhandle: "@emma_ui",
    content: "Design tip: contrast matters more than color choice.",
    time: "7hr",
    imageUrl: "",
    commentCount: 4,
    shareCount: 2,
    likeCount: 44,
  ),
  Feed(
    username: "Arjun Patel",
    userhandle: "@arjunbuilds",
    content: "Spent 4 hours debugging. The issue was a missing semicolon.",
    time: "12hr",
    imageUrl: "https://picsum.photos/seed/debug/600/400",
    commentCount: 20,
    shareCount: 7,
    likeCount: 120,
  ),
  Feed(
    username: "Mika Sato",
    userhandle: "@mikasato",
    content: "Starting a 30-day coding challenge today. Wish me luck!",
    time: "1d",
    imageUrl: "",
    commentCount: 9,
    shareCount: 3,
    likeCount: 65,
  ),
];
