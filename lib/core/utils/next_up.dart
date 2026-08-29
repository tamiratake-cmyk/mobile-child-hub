// Computes the single next actionable thing for a child to do: the next
// unread story, the next unpassed quiz, an unplayed Sequence game, or (once
// everything else is caught up) an unplayed Memory Match. This is the
// canonical source for the Home "Continue Your Adventure" hero card and the
// "games waiting" count -- nothing else should hand-roll this walk.

import '../../data/models/story.dart';
import '../../data/models/user_progress.dart';
import '../constants/book_config.dart';
import 'game_unlocks.dart';

enum NextActionType { readStory, takeQuiz, playSequenceGame, playMemoryMatch }

class NextUpResult {
  final NextActionType type;
  final Story? story; // set for readStory/takeQuiz/playSequenceGame
  final String bookEn;
  final String bookAm;

  const NextUpResult({
    required this.type,
    required this.bookEn,
    required this.bookAm,
    this.story,
  });
}

NextUpResult? computeNextUp(List<Story> allStories, UserProgress progress) {
  final ordered = [...allStories]..sort((a, b) {
      final orderA = BookConfig.byNameEn(a.bookEn)?.order ?? 999;
      final orderB = BookConfig.byNameEn(b.bookEn)?.order ?? 999;
      if (orderA != orderB) return orderA.compareTo(orderB);
      return a.order.compareTo(b.order);
    });

  for (final story in ordered) {
    if (!progress.completedStories.contains(story.id)) {
      return NextUpResult(
        type: NextActionType.readStory,
        story: story,
        bookEn: story.bookEn,
        bookAm: story.bookAm,
      );
    }
    if (!progress.hasPassedQuiz(story.id)) {
      return NextUpResult(
        type: NextActionType.takeQuiz,
        story: story,
        bookEn: story.bookEn,
        bookAm: story.bookAm,
      );
    }
    if (isSequenceGameUnlocked(story, progress) && !isSequenceGamePlayed(story, progress)) {
      return NextUpResult(
        type: NextActionType.playSequenceGame,
        story: story,
        bookEn: story.bookEn,
        bookAm: story.bookAm,
      );
    }
  }

  // Reading/quizzes/sequence games are all caught up -- offer an unplayed
  // Memory Match if one is available.
  final byBook = <String, List<Story>>{};
  for (final s in allStories) {
    byBook.putIfAbsent(s.bookEn, () => []).add(s);
  }
  for (final book in BookConfig.ordered) {
    final storiesInBook = byBook[book.nameEn];
    if (storiesInBook == null) continue;
    if (isMemoryMatchUnlocked(storiesInBook, progress) && !isMemoryMatchPlayed(book.nameEn, progress)) {
      return NextUpResult(
        type: NextActionType.playMemoryMatch,
        bookEn: book.nameEn,
        bookAm: book.nameAm,
      );
    }
  }

  return null; // fully caught up
}
