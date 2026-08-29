// Book Memory Match mini-game: flip cards to match each unlocked story's
// icon to its title. Generated entirely from data that already exists
// (story titles + icons) -- no new authored content needed.

import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/constants/book_config.dart';
import '../../core/theme/app_theme.dart';
import '../../core/utils/game_unlocks.dart';
import '../../data/models/story.dart';
import '../blocs/progress_bloc.dart';
import '../blocs/settings_bloc.dart';
import '../blocs/stories_bloc.dart';
import '../widgets/story_scene.dart';

class _MemoryCard {
  final String storyId;
  final bool isIconCard;
  const _MemoryCard(this.storyId, this.isIconCard);
}

class BookMemoryGameScreen extends StatefulWidget {
  final String bookEn;
  final String bookAm;

  const BookMemoryGameScreen({super.key, required this.bookEn, required this.bookAm});

  @override
  State<BookMemoryGameScreen> createState() => _BookMemoryGameScreenState();
}

class _BookMemoryGameScreenState extends State<BookMemoryGameScreen> {
  late ConfettiController _confetti;
  List<Story> _pairs = const [];
  List<_MemoryCard> _cards = const [];
  final List<int> _revealed = [];
  final Set<int> _matched = {};
  int _attempts = 0;
  bool _busy = false;

  @override
  void initState() {
    super.initState();
    _confetti = ConfettiController(duration: const Duration(seconds: 3));
  }

  @override
  void dispose() {
    _confetti.dispose();
    super.dispose();
  }

  void _setupIfNeeded(List<Story> pairs) {
    if (_cards.isNotEmpty) return;
    _pairs = pairs;
    final cards = <_MemoryCard>[];
    for (final s in pairs) {
      cards.add(_MemoryCard(s.id, true));
      cards.add(_MemoryCard(s.id, false));
    }
    cards.shuffle(Random());
    _cards = cards;
  }

  void _shuffle() {
    final cards = <_MemoryCard>[];
    for (final s in _pairs) {
      cards.add(_MemoryCard(s.id, true));
      cards.add(_MemoryCard(s.id, false));
    }
    cards.shuffle(Random());
    setState(() {
      _cards = cards;
      _revealed.clear();
      _matched.clear();
      _attempts = 0;
      _busy = false;
    });
  }

  void _onTapCard(int index) {
    if (_busy || _matched.contains(index) || _revealed.contains(index)) return;
    if (_revealed.length == 2) return;

    setState(() => _revealed.add(index));

    if (_revealed.length == 2) {
      _attempts++;
      final a = _cards[_revealed[0]];
      final b = _cards[_revealed[1]];
      if (a.storyId == b.storyId) {
        setState(() {
          _matched.addAll(_revealed);
          _revealed.clear();
        });
        if (_matched.length == _cards.length) {
          _confetti.play();
          context.read<ProgressBloc>().add(CompleteMemoryGame(widget.bookEn));
        }
      } else {
        _busy = true;
        Future.delayed(const Duration(milliseconds: 500), () {
          if (!mounted) return;
          setState(() {
            _revealed.clear();
            _busy = false;
          });
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final settings = context.watch<SettingsBloc>().state;
    final isAm = settings.languageCode == 'am';
    final color = AppTheme.getBookColor(widget.bookEn);
    final bookTitle = isAm ? widget.bookAm : widget.bookEn;
    final storiesState = context.watch<StoriesBloc>().state;
    final progress = context.watch<ProgressBloc>().state.progress;

    final storiesInBook = storiesState.allStories.where((s) => s.bookEn == widget.bookEn).toList();
    final pairs = memoryMatchPairs(storiesInBook, progress);
    _setupIfNeeded(pairs);

    final solved = _cards.isNotEmpty && _matched.length == _cards.length;

    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            title: Text(isAm ? '$bookTitle - የማስታወስ ጨዋታ' : '$bookTitle Memory Match'),
            backgroundColor: color,
            foregroundColor: Colors.white,
          ),
          body: SafeArea(
            child: pairs.length < 2
                ? _buildEmptyState(context, isAm, color)
                : Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 16, 20, 8),
                        child: Column(
                          children: [
                            Text(
                              isAm
                                  ? 'ርዕሱን ከሚመሳሰለው ምልክት ጋር ያዛምዱ'
                                  : 'Match each title to its story icon',
                              style: Theme.of(context).textTheme.titleMedium,
                              textAlign: TextAlign.center,
                            ).animate().fadeIn(),
                            const SizedBox(height: 8),
                            Text(
                              isAm ? 'ሙከራዎች: $_attempts' : 'Attempts: $_attempts',
                              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: Theme.of(context).textTheme.bodyMedium?.color?.withValues(alpha: 0.6),
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: GridView.builder(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 12,
                            crossAxisSpacing: 12,
                            childAspectRatio: 0.8,
                          ),
                          itemCount: _cards.length,
                          itemBuilder: (context, index) {
                            final card = _cards[index];
                            final story = _pairs.firstWhere((s) => s.id == card.storyId);
                            final isFaceUp = _revealed.contains(index) || _matched.contains(index);
                            final isMatched = _matched.contains(index);

                            return GestureDetector(
                              onTap: () => _onTapCard(index),
                              child: AnimatedSwitcher(
                                duration: const Duration(milliseconds: 200),
                                transitionBuilder: (child, anim) =>
                                    ScaleTransition(scale: anim, child: FadeTransition(opacity: anim, child: child)),
                                child: Container(
                                  key: ValueKey('$index-$isFaceUp'),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    gradient: LinearGradient(
                                      colors: isFaceUp
                                          ? [color, Color.lerp(color, Colors.black, 0.2)!]
                                          : [color.withValues(alpha: 0.35), color.withValues(alpha: 0.5)],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                    border: isMatched ? Border.all(color: AppTheme.successColor, width: 3) : null,
                                  ),
                                  padding: const EdgeInsets.all(8),
                                  child: Center(
                                    child: isFaceUp
                                        ? (card.isIconCard
                                            ? Icon(
                                                storySceneIcons[story.id] ?? BookConfig.iconFor(widget.bookEn),
                                                color: Colors.white,
                                                size: 30,
                                              )
                                            : Text(
                                                story.getTitle(settings.languageCode),
                                                textAlign: TextAlign.center,
                                                maxLines: 3,
                                                overflow: TextOverflow.ellipsis,
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ))
                                        : Icon(Icons.auto_awesome_rounded, color: Colors.white.withValues(alpha: 0.5)),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: solved
                            ? Row(
                                children: [
                                  Expanded(
                                    child: OutlinedButton.icon(
                                      onPressed: _shuffle,
                                      icon: const Icon(Icons.refresh),
                                      label: Text(isAm ? 'እንደገና ተጫወት' : 'Play Again'),
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Expanded(
                                    child: ElevatedButton.icon(
                                      onPressed: () => Navigator.pop(context),
                                      style: ElevatedButton.styleFrom(backgroundColor: color),
                                      icon: const Icon(Icons.check_rounded),
                                      label: Text(isAm ? 'ተከናውኗል' : 'Done'),
                                    ),
                                  ),
                                ],
                              ).animate().fadeIn().slideY(begin: 0.2)
                            : const SizedBox.shrink(),
                      ),
                    ],
                  ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: ConfettiWidget(
            confettiController: _confetti,
            blastDirectionality: BlastDirectionality.explosive,
            particleDrag: 0.05,
            emissionFrequency: 0.05,
            numberOfParticles: 20,
            gravity: 0.1,
            colors: const [
              Colors.green, Colors.blue, Colors.pink, Colors.orange, Colors.purple,
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildEmptyState(BuildContext context, bool isAm, Color color) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.hourglass_empty_rounded, size: 64, color: color.withValues(alpha: 0.5)),
            const SizedBox(height: 16),
            Text(
              isAm
                  ? 'ይህ ጨዋታ ገና ዝግጁ አይደለም። ለዚህ መጽሐፍ ቢያንስ ሁለት ፈተናዎችን ያለፉ!'
                  : 'Not enough stories unlocked yet. Pass at least two quizzes in this book first!',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
