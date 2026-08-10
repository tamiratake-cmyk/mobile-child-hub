import 'package:bible_stories/presentation/screens/quiz_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../core/theme/app_theme.dart';
import '../../data/models/story.dart';
import '../../data/models/user_progress.dart';
import '../blocs/settings_bloc.dart';
import '../blocs/stories_bloc.dart';
import '../blocs/progress_bloc.dart';
import '../widgets/story_scene.dart';
import 'story_reader_screen.dart';

class StoryListScreen extends StatelessWidget {
  final String bookEn;
  final String bookAm;

  const StoryListScreen({
    super.key,
    required this.bookEn,
    required this.bookAm,
  });

  @override
  Widget build(BuildContext context) {
    final settings = context.watch<SettingsBloc>().state;
    final isAm = settings.languageCode == 'am';
    final title = isAm ? bookAm : bookEn;
    final color = AppTheme.getBookColor(bookEn);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Gradient App Bar
          SliverAppBar(
            expandedHeight: 180,
            pinned: true,
            backgroundColor: color,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_rounded, color: Colors.white),
              onPressed: () => Navigator.pop(context),
            ),
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              background: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [color, color.withValues(alpha: 0.7)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      right: -30,
                      bottom: -30,
                      child: Icon(
                        _getBookIcon(bookEn),
                        size: 180,
                        color: Colors.white.withValues(alpha: 0.15),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Story List
          BlocBuilder<StoriesBloc, StoriesState>(
            builder: (context, state) {
              final stories = state.allStories
                  .where((s) => s.bookEn == bookEn)
                  .toList()
                ..sort((a, b) => a.order.compareTo(b.order));

              if (stories.isEmpty) {
                return SliverFillRemaining(
                  child: Center(
                    child: Text(
                      isAm ? 'ታሪኮች የሉም' : 'No stories yet',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                );
              }

              final progress = context.watch<ProgressBloc>().state.progress;

              return SliverPadding(
                padding: const EdgeInsets.all(16),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      final story = stories[index];
                      final isLocked = index > 0 &&
                          !progress.hasPassedQuiz(stories[index - 1].id);
                      return StoryCard(
                        story: story,
                        index: index,
                        isquiz: false,
                        color: color,
                        isLocked: isLocked,
                      );
                    },
                    childCount: stories.length,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  IconData _getBookIcon(String book) {
    switch (book) {
      case 'Genesis':
        return Icons.wb_sunny_rounded;
      case 'Exodus':
        return Icons.directions_walk_rounded;
      case 'Leviticus':
        return Icons.local_fire_department_rounded;
      case 'Numbers':
        return Icons.format_list_numbered_rounded;
      default:
        return Icons.book_rounded;
    }
  }
}

class StoryCard extends StatelessWidget {
  final Story story;
  final int index;
  final Color color;
  final bool isquiz;
  final bool isLocked;

  const StoryCard({
    super.key,
    required this.story,
    required this.index,
    required this.isquiz,
    required this.color,
    this.isLocked = false,
  });

  @override
  Widget build(BuildContext context) {
    final settings = context.watch<SettingsBloc>().state;
    final isAm = settings.languageCode == 'am';
    final progress = context.watch<ProgressBloc>().state.progress;
    final isCompleted = progress.completedStories.contains(story.id);
    final passed = progress.hasPassedQuiz(story.id);

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: GestureDetector(
        onTap: isLocked
            ? () => _showLockedMessage(context, isAm)
            : () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      return isquiz ? QuizScreen(story: story) : StoryReaderScreen(story: story);
                    },
                  ),
                );
              },
        child: Opacity(
          opacity: isLocked ? 0.55 : 1.0,
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              children: [
                // Story Scene thumbnail (or lock icon)
                SizedBox(
                  width: 54,
                  height: 54,
                  child: isLocked
                      ? Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.withValues(alpha: 0.25),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Icon(Icons.lock_rounded, color: Colors.white, size: 24),
                        )
                      : StoryScene(
                          bookEn: story.bookEn,
                          storyId: story.id,
                          compact: true,
                          borderRadius: BorderRadius.circular(15),
                        ),
                ),
                const SizedBox(width: 16),
                // Story Info
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        story.getTitle(settings.languageCode),
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        isLocked
                            ? (isAm ? 'ቀዳሚውን ፈተና ካለፉ በኋላ ይከፈታል' : 'Unlocks after the previous quiz')
                            : story.getSummary(settings.languageCode),
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.color
                                  ?.withValues(alpha: 0.7),
                            ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                // Status
                if (isLocked)
                  const Icon(Icons.lock_rounded, color: Colors.grey, size: 20)
                else if (isquiz && passed)
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: AppTheme.goldColor.withValues(alpha: 0.15),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.emoji_events_rounded,
                      color: AppTheme.goldColor,
                      size: 20,
                    ),
                  )
                else if (!isquiz && isCompleted)
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: AppTheme.successColor.withValues(alpha: 0.1),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.check_rounded,
                      color: AppTheme.successColor,
                      size: 20,
                    ),
                  )
                else
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: color,
                    size: 18,
                  ),
              ],
            ),
          ),
        ),
      ),
    ).animate().fadeIn(delay: Duration(milliseconds: index * 100)).slideX(
          begin: 0.1,
          delay: Duration(milliseconds: index * 100),
        );
  }

  void _showLockedMessage(BuildContext context, bool isAm) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          isAm
              ? 'ይህን ለመክፈት ቀዳሚውን ታሪክ ፈተና በ${UserProgress.passThresholdPercent}% ወይም ከዚያ በላይ ማለፍ አለብዎት።'
              : 'Pass the previous story\'s quiz with ${UserProgress.passThresholdPercent}% or higher to unlock this.',
        ),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}
