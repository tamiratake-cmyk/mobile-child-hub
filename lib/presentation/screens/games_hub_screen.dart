// Persistent Games Hub: the fix for "games disappear after the quiz results
// screen." Shows every book's games with a locked/ready/played state, and
// lets a child choose between multiple ready games when more than one is
// available -- the in-house version of "pick your favorite and play."

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/constants/book_config.dart';
import '../../core/theme/app_theme.dart';
import '../../core/utils/game_unlocks.dart';
import '../../data/models/story.dart';
import '../../data/models/user_progress.dart';
import '../blocs/progress_bloc.dart';
import '../blocs/settings_bloc.dart';
import '../blocs/stories_bloc.dart';
import 'book_memory_game_screen.dart';
import 'story_sequence_game_screen.dart';

enum _ChipStatus { locked, ready, played }

class _ReadyItem {
  final String label;
  final IconData icon;
  final VoidCallback onTap;
  final bool isReplay;
  const _ReadyItem({required this.label, required this.icon, required this.onTap, this.isReplay = false});
}

class GamesHubScreen extends StatelessWidget {
  const GamesHubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final settings = context.watch<SettingsBloc>().state;
    final isAm = settings.languageCode == 'am';
    final allStories = context.watch<StoriesBloc>().state.allStories;
    final progress = context.watch<ProgressBloc>().state.progress;

    final byBook = <String, List<Story>>{};
    for (final s in allStories) {
      byBook.putIfAbsent(s.bookEn, () => []).add(s);
    }

    int waitingCount = 0;
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

    final booksWithGames = BookConfig.ordered.where((b) {
      final stories = byBook[b.nameEn];
      return stories != null && stories.isNotEmpty;
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(isAm ? '🎮 ጨዋታዎች' : '🎮 Games'),
        backgroundColor: AppTheme.primaryColor,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: booksWithGames.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: _SummaryCard(waitingCount: waitingCount, isAm: isAm),
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          final book = booksWithGames[index];
                          final stories = byBook[book.nameEn]!..sort((a, b) => a.order.compareTo(b.order));
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: _BookGamesCard(book: book, stories: stories, progress: progress, isAm: isAm)
                                .animate()
                                .fadeIn(delay: Duration(milliseconds: index * 60)),
                          );
                        },
                        childCount: booksWithGames.length,
                      ),
                    ),
                  ),
                  const SliverToBoxAdapter(child: SizedBox(height: 40)),
                ],
              ),
      ),
    );
  }
}

class _SummaryCard extends StatelessWidget {
  final int waitingCount;
  final bool isAm;

  const _SummaryCard({required this.waitingCount, required this.isAm});

  @override
  Widget build(BuildContext context) {
    final hasWaiting = waitingCount > 0;
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: hasWaiting ? AppTheme.warmGradient : AppTheme.coolGradient,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: (hasWaiting ? AppTheme.secondaryColor : AppTheme.accentColor).withValues(alpha: 0.3),
            blurRadius: 15,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(hasWaiting ? Icons.sports_esports_rounded : Icons.explore_rounded, color: Colors.white, size: 36),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              hasWaiting
                  ? (isAm ? '$waitingCount ጨዋታ(ዎች) እየጠበቁዎት ነው!' : '$waitingCount game(s) waiting for you!')
                  : (isAm
                      ? 'ተጨማሪ ጨዋታዎችን ለመክፈት ፈተናዎችን ይለፉ!'
                      : 'Pass more quizzes to unlock new games!'),
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
        ],
      ),
    ).animate(target: hasWaiting ? 1 : 0).shimmer(duration: 2200.ms, color: Colors.white.withValues(alpha: 0.25));
  }
}

class _BookGamesCard extends StatelessWidget {
  final BookInfo book;
  final List<Story> stories;
  final UserProgress progress;
  final bool isAm;

  const _BookGamesCard({required this.book, required this.stories, required this.progress, required this.isAm});

  @override
  Widget build(BuildContext context) {
    final title = isAm ? book.nameAm : book.nameEn;
    final sequenceStories = stories.where((s) => s.hasSequenceGame).toList();
    final memoryUnlocked = isMemoryMatchUnlocked(stories, progress);
    final memoryPlayed = isMemoryMatchPlayed(book.nameEn, progress);
    final memoryPossible = stories.length >= 2;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(color: Colors.black.withValues(alpha: 0.05), blurRadius: 10, offset: const Offset(0, 4)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(book.icon, color: book.color, size: 22),
              const SizedBox(width: 8),
              Text(title, style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              for (final story in sequenceStories)
                _GameChip(
                  label: story.getTitle(isAm ? 'am' : 'en'),
                  icon: Icons.timeline_rounded,
                  color: book.color,
                  status: isSequenceGamePlayed(story, progress)
                      ? _ChipStatus.played
                      : isSequenceGameUnlocked(story, progress)
                          ? _ChipStatus.ready
                          : _ChipStatus.locked,
                  lockedMessage: isAm
                      ? 'ይህን ለመክፈት የ"${story.getTitle('am')}" ፈተና በ${UserProgress.passThresholdPercent}% ወይም ከዚያ በላይ ማለፍ አለብዎት።'
                      : 'Pass the "${story.getTitle('en')}" quiz with ${UserProgress.passThresholdPercent}% or higher to unlock this.',
                  onReady: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => StorySequenceGameScreen(story: story)),
                  ),
                ),
              _GameChip(
                label: isAm ? 'የማስታወስ ጨዋታ' : 'Memory Match',
                icon: Icons.grid_view_rounded,
                color: book.color,
                status: !memoryPossible
                    ? _ChipStatus.locked
                    : memoryPlayed
                        ? _ChipStatus.played
                        : memoryUnlocked
                            ? _ChipStatus.ready
                            : _ChipStatus.locked,
                lockedMessage: !memoryPossible
                    ? (isAm
                        ? 'ይህ መጽሐፍ የማስታወስ ጨዋታ ለመጫወት በቂ ታሪኮች የሉትም።'
                        : 'This book doesn\'t have enough stories for a Memory Match yet.')
                    : (isAm
                        ? 'ይህን ለመክፈት በዚህ መጽሐፍ ውስጥ ቢያንስ ሁለት ፈተናዎችን ያለፉ።'
                        : 'Pass at least two quizzes in this book to unlock this.'),
                onReady: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => BookMemoryGameScreen(bookEn: book.nameEn, bookAm: book.nameAm)),
                ),
              ),
            ],
          ),
          if (_readyOrReplayCount(sequenceStories, memoryUnlocked, memoryPossible) > 1) ...[
            const SizedBox(height: 12),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton.icon(
                onPressed: () => _showGameChooser(context, sequenceStories, memoryUnlocked, memoryPossible),
                icon: Icon(Icons.casino_rounded, color: book.color, size: 18),
                label: Text(
                  isAm ? 'ጨዋታ ምረጡ' : 'Choose a game',
                  style: TextStyle(color: book.color, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  int _readyOrReplayCount(List<Story> sequenceStories, bool memoryUnlocked, bool memoryPossible) {
    var count = sequenceStories.where((s) => isSequenceGameUnlocked(s, progress)).length;
    if (memoryPossible && memoryUnlocked) count++;
    return count;
  }

  void _showGameChooser(BuildContext context, List<Story> sequenceStories, bool memoryUnlocked, bool memoryPossible) {
    final items = <_ReadyItem>[
      for (final story in sequenceStories)
        if (isSequenceGameUnlocked(story, progress))
          _ReadyItem(
            label: story.getTitle(isAm ? 'am' : 'en'),
            icon: Icons.timeline_rounded,
            isReplay: isSequenceGamePlayed(story, progress),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => StorySequenceGameScreen(story: story)),
            ),
          ),
      if (memoryPossible && memoryUnlocked)
        _ReadyItem(
          label: isAm ? 'የማስታወስ ጨዋታ' : 'Memory Match',
          icon: Icons.grid_view_rounded,
          isReplay: isMemoryMatchPlayed(book.nameEn, progress),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => BookMemoryGameScreen(bookEn: book.nameEn, bookAm: book.nameAm)),
          ),
        ),
    ];

    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
      builder: (sheetContext) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  isAm ? 'ጨዋታ ምረጡ!' : 'Choose a game!',
                  style: Theme.of(sheetContext).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                for (final item in items)
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(color: book.color.withValues(alpha: 0.15), shape: BoxShape.circle),
                      child: Icon(item.icon, color: book.color),
                    ),
                    title: Text(item.label, style: const TextStyle(fontWeight: FontWeight.bold)),
                    trailing: Text(
                      item.isReplay ? (isAm ? 'እንደገና ተጫወት' : 'Play Again') : (isAm ? 'ተጫወት' : 'Play'),
                      style: TextStyle(color: book.color, fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Navigator.pop(sheetContext);
                      item.onTap();
                    },
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _GameChip extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color color;
  final _ChipStatus status;
  final String lockedMessage;
  final VoidCallback onReady;

  const _GameChip({
    required this.label,
    required this.icon,
    required this.color,
    required this.status,
    required this.lockedMessage,
    required this.onReady,
  });

  @override
  Widget build(BuildContext context) {
    final isLocked = status == _ChipStatus.locked;
    final isPlayed = status == _ChipStatus.played;

    Widget chip = Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        color: isLocked ? Colors.grey.withValues(alpha: 0.15) : color.withValues(alpha: isPlayed ? 0.12 : 0.9),
        borderRadius: BorderRadius.circular(16),
        border: isPlayed ? Border.all(color: AppTheme.successColor, width: 1.5) : null,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            isLocked ? Icons.lock_rounded : (isPlayed ? Icons.check_circle_rounded : icon),
            size: 16,
            color: isLocked ? Colors.grey : (isPlayed ? AppTheme.successColor : Colors.white),
          ),
          const SizedBox(width: 6),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: isLocked ? Colors.grey.shade600 : (isPlayed ? AppTheme.successColor : Colors.white),
            ),
          ),
        ],
      ),
    );

    if (status == _ChipStatus.ready) {
      chip = chip.animate(onPlay: (c) => c.repeat()).shimmer(duration: 1800.ms, color: Colors.white.withValues(alpha: 0.5));
    }

    return GestureDetector(
      onTap: isLocked
          ? () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(lockedMessage), behavior: SnackBarBehavior.floating),
              );
            }
          : onReady,
      child: chip,
    );
  }
}
