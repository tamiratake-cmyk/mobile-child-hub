// Story Sequence mini-game: drag the scrambled story beats back into the
// correct chronological order. Unlocked once the story's quiz is passed
// (enforced by callers -- this screen assumes it's allowed to be here).

import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/theme/app_theme.dart';
import '../../data/models/story.dart';
import '../blocs/progress_bloc.dart';
import '../blocs/settings_bloc.dart';
import '../widgets/story_scene.dart';

class StorySequenceGameScreen extends StatefulWidget {
  final Story story;

  const StorySequenceGameScreen({super.key, required this.story});

  @override
  State<StorySequenceGameScreen> createState() => _StorySequenceGameScreenState();
}

class _StorySequenceGameScreenState extends State<StorySequenceGameScreen> {
  late List<int> _order; // holds original indices in the player's current order
  late ConfettiController _confetti;
  bool _checked = false;
  bool _solved = false;

  @override
  void initState() {
    super.initState();
    _confetti = ConfettiController(duration: const Duration(seconds: 3));
    _shuffle();
  }

  @override
  void dispose() {
    _confetti.dispose();
    super.dispose();
  }

  void _shuffle() {
    final events = widget.story.sequenceEventsEn;
    final indices = List<int>.generate(events.length, (i) => i);
    final random = Random();
    do {
      indices.shuffle(random);
    } while (_isSorted(indices) && indices.length > 1);
    setState(() {
      _order = indices;
      _checked = false;
      _solved = false;
    });
  }

  bool _isSorted(List<int> list) {
    for (var i = 0; i < list.length; i++) {
      if (list[i] != i) return false;
    }
    return true;
  }

  void _checkOrder(BuildContext context) {
    final correct = _isSorted(_order);
    setState(() {
      _checked = true;
      _solved = correct;
    });
    if (correct) {
      _confetti.play();
      context.read<ProgressBloc>().add(CompleteGame(widget.story.id));
    }
  }

  @override
  Widget build(BuildContext context) {
    final settings = context.watch<SettingsBloc>().state;
    final isAm = settings.languageCode == 'am';
    final color = AppTheme.getBookColor(widget.story.bookEn);
    final events = widget.story.getSequenceEvents(settings.languageCode);

    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            title: Text(isAm ? 'የታሪክ ቅደም ተከተል' : 'Story Sequence'),
            backgroundColor: color,
            foregroundColor: Colors.white,
          ),
          body: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 90,
                  child: StoryScene(
                    bookEn: widget.story.bookEn,
                    storyId: widget.story.id,
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 16, 20, 8),
                  child: Text(
                    isAm
                        ? 'ክስተቶቹን ወደ ትክክለኛው ቅደም ተከተል ያንቀሳቅሱ'
                        : 'Drag the events into the order they happened',
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center,
                  ),
                ).animate().fadeIn(),
                if (_checked)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                    child: Text(
                      _solved
                          ? (isAm ? 'በጣም ጥሩ! ትክክለኛ ቅደም ተከተል!' : 'Great job! That\'s the right order!')
                          : (isAm ? 'ገና አልተሳካም። ትክክል ያልሆኑት በቀይ ተለይተዋል፣ እንደገና ይሞክሩ!' : 'Not quite -- items in red are out of place. Try again!'),
                      style: TextStyle(
                        color: _solved ? AppTheme.successColor : AppTheme.errorColor,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                Expanded(
                  child: ReorderableListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    itemCount: _order.length,
                    onReorder: _solved
                        ? (_, _) {}
                        : (oldIndex, newIndex) {
                            setState(() {
                              if (newIndex > oldIndex) newIndex -= 1;
                              final item = _order.removeAt(oldIndex);
                              _order.insert(newIndex, item);
                              _checked = false;
                            });
                          },
                    itemBuilder: (context, position) {
                      final originalIndex = _order[position];
                      final isCorrectSpot = _checked && originalIndex == position;
                      final isWrongSpot = _checked && originalIndex != position;

                      return Padding(
                        key: ValueKey(originalIndex),
                        padding: const EdgeInsets.only(bottom: 12),
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Theme.of(context).cardColor,
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: isCorrectSpot
                                  ? AppTheme.successColor
                                  : isWrongSpot
                                      ? AppTheme.errorColor
                                      : color.withValues(alpha: 0.3),
                              width: isCorrectSpot || isWrongSpot ? 2 : 1,
                            ),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 32,
                                height: 32,
                                decoration: BoxDecoration(
                                  color: color.withValues(alpha: 0.15),
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Text(
                                    '${position + 1}',
                                    style: TextStyle(color: color, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  events[originalIndex],
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                              ),
                              Icon(Icons.drag_handle_rounded, color: Colors.grey.withValues(alpha: 0.6)),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: _solved
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
                        )
                      : ElevatedButton.icon(
                          onPressed: () => _checkOrder(context),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: color,
                            minimumSize: const Size(double.infinity, 56),
                          ),
                          icon: const Icon(Icons.check_circle_outline_rounded),
                          label: Text(isAm ? 'ቅደም ተከተል ያረጋግጡ' : 'Check Order'),
                        ),
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
}
