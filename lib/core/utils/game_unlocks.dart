// Single source of truth for "is this game unlocked / has it been played"
// logic. Home, the Games Hub, and any story/quiz list should all derive
// their locked/ready/played state from these helpers so the three surfaces
// can never disagree about what's available.

import '../../data/models/story.dart';
import '../../data/models/user_progress.dart';

bool isSequenceGameUnlocked(Story story, UserProgress progress) =>
    story.hasSequenceGame && progress.hasPassedQuiz(story.id);

bool isSequenceGamePlayed(Story story, UserProgress progress) =>
    progress.completedGames.contains(story.id);

/// A book's Memory Match unlocks once at least two of its stories have
/// passed quizzes -- a single-story book can't produce a meaningful match.
bool isMemoryMatchUnlocked(List<Story> storiesInBook, UserProgress progress) {
  final passedCount = storiesInBook.where((s) => progress.hasPassedQuiz(s.id)).length;
  return passedCount >= 2;
}

bool isMemoryMatchPlayed(String bookEn, UserProgress progress) =>
    progress.hasCompletedMemoryGame(bookEn);

/// Stories to use as Memory Match pairs: passed-quiz stories in that book,
/// ordered by their reading order, capped at 6 pairs (12 cards) so the grid
/// stays playable.
List<Story> memoryMatchPairs(List<Story> storiesInBook, UserProgress progress) {
  final eligible = storiesInBook.where((s) => progress.hasPassedQuiz(s.id)).toList()
    ..sort((a, b) => a.order.compareTo(b.order));
  return eligible.length > 6 ? eligible.sublist(0, 6) : eligible;
}
