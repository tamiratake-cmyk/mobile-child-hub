import 'package:bible_stories/presentation/blocs/daily_verse_bloc.dart';
import 'package:bible_stories/presentation/screens/fav_screen.dart';
import 'package:bible_stories/presentation/screens/quiz_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../core/constants/book_config.dart';
import '../../core/theme/app_theme.dart';
import '../../core/utils/game_unlocks.dart';
import '../../core/utils/next_up.dart';
import '../../data/models/story.dart';
import '../../data/models/user_progress.dart';
import '../blocs/settings_bloc.dart';
import '../blocs/stories_bloc.dart';
import '../blocs/progress_bloc.dart';
import '../widgets/story_scene.dart';
import 'book_memory_game_screen.dart';
import 'games_hub_screen.dart';
import 'quiz_screen.dart';
import 'story_list_screen.dart';
import 'story_reader_screen.dart';
import 'story_sequence_game_screen.dart';
import 'progress_screen.dart';
import 'settings_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          _HomeContent(),
          QuizPage(),
          const GamesHubScreen(),
          FavoriteStories(),
          ProgressScreen(),
        ],
      ),
      bottomNavigationBar: _buildBottomNav(context),
    
    );
  }

  Widget _buildBottomNav(BuildContext context) {
    final settings = context.watch<SettingsBloc>().state;
    final isAm = settings.languageCode == 'am';

    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 20,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) => setState(() => _currentIndex = index),
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.auto_stories_rounded),
              label: isAm ? 'ታሪኮች' : 'Stories',
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.quiz_sharp),
              label: isAm ? 'ሙከራዎች' : 'Quizzes',
            ),

            BottomNavigationBarItem(
              icon: const Icon(Icons.sports_esports_rounded),
              label: isAm ? 'ጨዋታዎች' : 'Games',
            ),

            BottomNavigationBarItem(
                icon: const Icon( Icons.favorite_border_rounded),
                label: isAm ? 'የተወደዱ' : "Favorites",
                ),

                BottomNavigationBarItem(
              icon: const Icon(Icons.emoji_events_rounded),
              label: isAm ? 'እድገት' : 'Progress',
            ),
          ]
            )

             

          
        ),
      );
  }
}

class _HomeContent extends StatelessWidget {
  const _HomeContent();

  @override
  Widget build(BuildContext context) {
    final settings = context.watch<SettingsBloc>().state;
    final isAm = settings.languageCode == 'am';

    final currentTime = DateTime.now();

    final greeting  = currentTime.hour < 12
        ? (isAm ? 'እንደምን አደሩ' : 'Good Morning')
        : currentTime.hour < 18
            ? (isAm ? 'እንደምን አደሩ' : 'Good Afternoon')
            : (isAm ? 'እንደምን አደሩ' : 'Good Evening');
    
       
    

    return Scaffold(
      body: SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          isAm ? 'ሰላም! 👋' : 'Hello! 👋',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        const SizedBox(height: 4),
                        Text(
                           greeting,
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.color
                                    ?.withValues(alpha: 0.7),
                              ),
                        ),
                      ],
                    ).animate().fadeIn().slideX(begin: -0.1),
                  ),
                  Row(
                    children: [
                       _buildStreakBadge(context),
                       const SizedBox(width: 12),
                       IconButton(onPressed: (){
                        Navigator.push(context,
                          MaterialPageRoute(
                            builder: (_) => SettingsScreen(),
                          ),
                        );  
                        },

                        icon:  Icon(Icons.settings_rounded).animate().fadeIn().slideX(begin: 0.1, delay: 200.ms),
                  )],)
                ],
              ),
            ),
          ),

      _ContinueAndGamesSection(isAm: isAm),

      BlocBuilder<DailyVerseBloc, DailyVerseState>(
        builder: (context, state) {
          if (state is DailyVerseLoading) {
            return const SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator()),
            );
          } else if (state is DailyVerseLoaded) {
            return SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    gradient: AppTheme.coolGradient,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: AppTheme.primaryColor.withValues(alpha: 0.3),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        isAm ? 'የዕለቱ  ቃል' : 'Daily Verse',
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        state.verse,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(height: 4),
                      // Align(
                      //   alignment: Alignment.bottomRight,
                      //   child: Text(
                      //     '- ${state.reference}',
                      //     style: const TextStyle(
                      //       color: Colors.white70,
                      //       fontStyle: FontStyle.italic,
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            );
          } else if (state is DailyVerseError) {
            return SliverToBoxAdapter(
              child: Center(child: Text(isAm ? 'የዕለቱ አምላክ ቃል ማግኘት አልተቻለም።' : 'Failed to load daily verse.')),
            );
          } else {
            return const SliverToBoxAdapter();
          }
        },
      ),
          
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          // Books, grouped by testament
          BlocBuilder<StoriesBloc, StoriesState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const SliverToBoxAdapter(
                  child: Center(child: CircularProgressIndicator()),
                );
              }
              return BlocBuilder<ProgressBloc, ProgressState>(
                builder: (context, progressState) {
                  final progress = progressState.progress;
                  final nextUp = computeNextUp(state.allStories, progress);

                  final present = state.allStories.map((s) => s.bookEn).toSet();
                  final oldTestament = BookConfig.ordered
                      .where((b) => b.testament == Testament.old && present.contains(b.nameEn))
                      .toList();
                  final newTestament = BookConfig.ordered
                      .where((b) => b.testament == Testament.newTestament && present.contains(b.nameEn))
                      .toList();

                  return SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (oldTestament.isNotEmpty) ...[
                            Text(
                              isAm ? 'ብሉይ ኪዳን' : 'Old Testament',
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                            const SizedBox(height: 16),
                            _BookGrid(
                              books: oldTestament,
                              allStories: state.allStories,
                              progress: progress,
                              nextUpBookEn: nextUp?.bookEn,
                              isAm: isAm,
                            ),
                            const SizedBox(height: 32),
                          ],
                          if (newTestament.isNotEmpty) ...[
                            Text(
                              isAm ? 'አዲስ ኪዳን' : 'New Testament',
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                            const SizedBox(height: 16),
                            _BookGrid(
                              books: newTestament,
                              allStories: state.allStories,
                              progress: progress,
                              nextUpBookEn: nextUp?.bookEn,
                              isAm: isAm,
                            ),
                          ],
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 100)),
        ],

        
      ),
    
    )
    );

  }

  Widget _buildStreakBadge(BuildContext context) {
    return BlocBuilder<ProgressBloc, ProgressState>(
      builder: (context, state) {
        final streak = state.progress.currentStreak;
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            gradient: AppTheme.warmGradient,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: AppTheme.secondaryColor.withValues(alpha: 0.3),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.local_fire_department, color: Colors.white, size: 20),
              const SizedBox(width: 4),
              Text(
                '$streak',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ).animate().scale(delay: 500.ms, duration: 400.ms);
      },
    );
  }
}

class _BookGrid extends StatelessWidget {
  final List<BookInfo> books;
  final List<Story> allStories;
  final UserProgress progress;
  final String? nextUpBookEn;
  final bool isAm;

  const _BookGrid({
    required this.books,
    required this.allStories,
    required this.progress,
    required this.nextUpBookEn,
    required this.isAm,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 0.85,
      ),
      itemCount: books.length,
      itemBuilder: (context, index) {
        final book = books[index];
        final storiesInBook = allStories.where((s) => s.bookEn == book.nameEn).toList();
        final readCount = storiesInBook.where((s) => progress.completedStories.contains(s.id)).length;
        return _BookCard(
          book: book,
          storyCount: storiesInBook.length,
          readCount: readCount,
          isNextUp: book.nameEn == nextUpBookEn,
          delay: index * 80,
        );
      },
    );
  }
}

class _BookCard extends StatelessWidget {
  final BookInfo book;
  final int storyCount;
  final int readCount;
  final bool isNextUp;
  final int delay;

  const _BookCard({
    required this.book,
    required this.storyCount,
    required this.readCount,
    required this.isNextUp,
    required this.delay,
  });

  @override
  Widget build(BuildContext context) {
    final settings = context.watch<SettingsBloc>().state;
    final isAm = settings.languageCode == 'am';
    final title = isAm ? book.nameAm : book.nameEn;
    final progressValue = storyCount == 0 ? 0.0 : readCount / storyCount;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => StoryListScreen(bookEn: book.nameEn, bookAm: book.nameAm),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [book.color, book.color.withValues(alpha: 0.7)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(24),
          border: isNextUp ? Border.all(color: Colors.white, width: 3) : null,
          boxShadow: [
            BoxShadow(
              color: book.color.withValues(alpha: isNextUp ? 0.65 : 0.4),
              blurRadius: isNextUp ? 24 : 15,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: Stack(
          children: [
            // Background pattern
            Positioned(
              right: -20,
              bottom: -20,
              child: Icon(
                book.icon,
                size: 100,
                color: Colors.white.withValues(alpha: 0.2),
              ),
            ),
            // Progress ring
            Positioned(
              top: 16,
              right: 16,
              child: SizedBox(
                width: 40,
                height: 40,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CircularProgressIndicator(
                      value: progressValue,
                      strokeWidth: 3.5,
                      backgroundColor: Colors.white.withValues(alpha: 0.25),
                      valueColor: const AlwaysStoppedAnimation(Colors.white),
                    ),
                    Text(
                      '$readCount/$storyCount',
                      style: const TextStyle(color: Colors.white, fontSize: 9, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            // Content
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.2),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Icon(book.icon, color: Colors.white, size: 28),
                  ),
                  const Spacer(),
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    isAm ? '$storyCount ታሪኮች' : '$storyCount stories',
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.9),
                      fontSize: 14,
                    ),
                  ),
                  if (isNextUp) ...[
                    const SizedBox(height: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.9),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        isAm ? '▶ ይቀጥሉ' : '▶ Continue',
                        style: TextStyle(color: book.color, fontSize: 11, fontWeight: FontWeight.bold),
                      ),
                    )
                        .animate(onPlay: (c) => c.repeat(reverse: true))
                        .scale(begin: const Offset(1, 1), end: const Offset(1.06, 1.06), duration: 900.ms),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    ).animate().fadeIn(delay: Duration(milliseconds: delay)).scale(
          begin: const Offset(0.8, 0.8),
          delay: Duration(milliseconds: delay),
        );
  }
}

/// Home hero: "Continue Your Adventure" card (driven by [computeNextUp]) plus
/// a conditional "games waiting for you" banner -- the two surfaces that fix
/// the original complaint of games being reachable only once, transiently,
/// from the quiz-results screen.
class _ContinueAndGamesSection extends StatelessWidget {
  final bool isAm;

  const _ContinueAndGamesSection({required this.isAm});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoriesBloc, StoriesState>(
      builder: (context, storiesState) {
        if (storiesState.isLoading) return const SliverToBoxAdapter();
        return BlocBuilder<ProgressBloc, ProgressState>(
          builder: (context, progressState) {
            final allStories = storiesState.allStories;
            final progress = progressState.progress;
            final nextUp = computeNextUp(allStories, progress);

            final byBook = <String, List<Story>>{};
            for (final s in allStories) {
              byBook.putIfAbsent(s.bookEn, () => []).add(s);
            }
            var waitingCount = 0;
            for (final s in allStories) {
              if (isSequenceGameUnlocked(s, progress) && !isSequenceGamePlayed(s, progress)) waitingCount++;
            }
            for (final book in BookConfig.ordered) {
              final storiesInBook = byBook[book.nameEn];
              if (storiesInBook == null) continue;
              if (isMemoryMatchUnlocked(storiesInBook, progress) && !isMemoryMatchPlayed(book.nameEn, progress)) {
                waitingCount++;
              }
            }

            return SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    _ContinueAdventureCard(nextUp: nextUp, isAm: isAm),
                    if (waitingCount > 0) ...[
                      const SizedBox(height: 12),
                      _GamesWaitingBanner(count: waitingCount, isAm: isAm),
                    ],
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class _ContinueAdventureCard extends StatelessWidget {
  final NextUpResult? nextUp;
  final bool isAm;

  const _ContinueAdventureCard({required this.nextUp, required this.isAm});

  @override
  Widget build(BuildContext context) {
    final result = nextUp;
    if (result == null) {
      return Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(gradient: AppTheme.primaryGradient, borderRadius: BorderRadius.circular(24)),
        child: Row(
          children: [
            const Icon(Icons.celebration_rounded, color: Colors.white, size: 36),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                isAm ? 'መላውን መጽሐፍ ቅዱስ አስሰዋል! 🎉' : 'You\'ve explored the whole Bible! 🎉',
                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ],
        ),
      ).animate().fadeIn();
    }

    final title = isAm ? 'ጉዞዎን ይቀጥሉ' : 'Continue Your Adventure';
    late final String subtitle;
    late final String ctaLabel;
    late final IconData ctaIcon;
    late final VoidCallback onTap;

    switch (result.type) {
      case NextActionType.readStory:
        final story = result.story!;
        subtitle = story.getTitle(isAm ? 'am' : 'en');
        ctaLabel = isAm ? '📖 አንብብ' : '📖 Read Now';
        ctaIcon = Icons.auto_stories_rounded;
        onTap = () => Navigator.push(context, MaterialPageRoute(builder: (_) => StoryReaderScreen(story: story)));
      case NextActionType.takeQuiz:
        final story = result.story!;
        subtitle = story.getTitle(isAm ? 'am' : 'en');
        ctaLabel = isAm ? '📝 ፈተና ውሰድ' : '📝 Take the Quiz';
        ctaIcon = Icons.quiz_rounded;
        onTap = () => Navigator.push(context, MaterialPageRoute(builder: (_) => QuizScreen(story: story)));
      case NextActionType.playSequenceGame:
        final story = result.story!;
        subtitle = story.getTitle(isAm ? 'am' : 'en');
        ctaLabel = isAm ? '🎮 ተጫወት' : '🎮 Play the Game';
        ctaIcon = Icons.sports_esports_rounded;
        onTap = () =>
            Navigator.push(context, MaterialPageRoute(builder: (_) => StorySequenceGameScreen(story: story)));
      case NextActionType.playMemoryMatch:
        subtitle = isAm ? result.bookAm : result.bookEn;
        ctaLabel = isAm ? '🧠 የማስታወስ ጨዋታ' : '🧠 Memory Match';
        ctaIcon = Icons.grid_view_rounded;
        onTap = () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => BookMemoryGameScreen(bookEn: result.bookEn, bookAm: result.bookAm)),
            );
    }

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: AppTheme.primaryGradient,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(color: AppTheme.primaryColor.withValues(alpha: 0.35), blurRadius: 16, offset: const Offset(0, 8)),
        ],
      ),
      child: Row(
        children: [
          SizedBox(
            width: 64,
            height: 64,
            child: StoryScene(
              bookEn: result.bookEn,
              storyId: result.story?.id,
              compact: true,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(color: Colors.white70, fontSize: 12, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 2),
                Text(
                  subtitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          ElevatedButton.icon(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: AppTheme.primaryColor,
            ),
            icon: Icon(ctaIcon, size: 18),
            label: Text(ctaLabel, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
          ),
        ],
      ),
    ).animate().fadeIn().slideY(begin: 0.1);
  }
}

class _GamesWaitingBanner extends StatelessWidget {
  final int count;
  final bool isAm;

  const _GamesWaitingBanner({required this.count, required this.isAm});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const GamesHubScreen())),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          gradient: AppTheme.warmGradient,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(color: AppTheme.secondaryColor.withValues(alpha: 0.3), blurRadius: 10, offset: const Offset(0, 4)),
          ],
        ),
        child: Row(
          children: [
            const Icon(Icons.sports_esports_rounded, color: Colors.white, size: 20),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                isAm ? '🎮 $count ጨዋታ(ዎች) እየጠበቁዎት ነው!' : '🎮 $count game(s) waiting for you!',
                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            const Icon(Icons.arrow_forward_ios_rounded, color: Colors.white, size: 14),
          ],
        ),
      ),
    ).animate(onPlay: (c) => c.repeat()).shimmer(duration: 2200.ms, color: Colors.white.withValues(alpha: 0.3));
  }
}
