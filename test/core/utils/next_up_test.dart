import 'package:flutter_test/flutter_test.dart';
import 'package:bible_stories/core/utils/next_up.dart';
import 'package:bible_stories/data/models/story.dart';
import 'package:bible_stories/data/models/user_progress.dart';

Story _story(String id, String bookEn, String bookAm, int order, {bool hasSequence = true}) {
  return Story(
    id: id,
    titleEn: id,
    titleAm: id,
    contentEn: 'content',
    contentAm: 'content',
    bookEn: bookEn,
    bookAm: bookAm,
    character: 'someone',
    imagePath: '',
    order: order,
    verseReferences: const ['Genesis 1:1'],
    summaryEn: 'summary',
    summaryAm: 'summary',
    sequenceEventsEn: hasSequence ? const ['a', 'b', 'c'] : const [],
    sequenceEventsAm: hasSequence ? const ['a', 'b', 'c'] : const [],
  );
}

void main() {
  group('computeNextUp', () {
    test('fresh progress -> first unread story', () {
      final stories = [_story('genesis_1', 'Genesis', 'ዘፍጥረት', 1)];
      final progress = UserProgress();

      final result = computeNextUp(stories, progress);

      expect(result, isNotNull);
      expect(result!.type, NextActionType.readStory);
      expect(result.story!.id, 'genesis_1');
    });

    test('story read but quiz not passed -> takeQuiz', () {
      final stories = [_story('genesis_1', 'Genesis', 'ዘፍጥረት', 1)];
      final progress = UserProgress()..completeStory('genesis_1');

      final result = computeNextUp(stories, progress);

      expect(result!.type, NextActionType.takeQuiz);
      expect(result.story!.id, 'genesis_1');
    });

    test('quiz passed, sequence game unplayed -> playSequenceGame', () {
      final stories = [_story('genesis_1', 'Genesis', 'ዘፍጥረት', 1)];
      final progress = UserProgress()
        ..completeStory('genesis_1')
        ..passQuizIfEligible('genesis_1', 100);

      final result = computeNextUp(stories, progress);

      expect(result!.type, NextActionType.playSequenceGame);
      expect(result.story!.id, 'genesis_1');
    });

    test('sequence game played -> advances to the next story', () {
      final stories = [
        _story('genesis_1', 'Genesis', 'ዘፍጥረት', 1),
        _story('genesis_2', 'Genesis', 'ዘፍጥረት', 2),
      ];
      final progress = UserProgress()
        ..completeStory('genesis_1')
        ..passQuizIfEligible('genesis_1', 100)
        ..completeGame('genesis_1');

      final result = computeNextUp(stories, progress);

      expect(result!.type, NextActionType.readStory);
      expect(result.story!.id, 'genesis_2');
    });

    test('all stories/quizzes/games done, memory match unplayed -> playMemoryMatch', () {
      final stories = [
        _story('genesis_1', 'Genesis', 'ዘፍጥረት', 1),
        _story('genesis_2', 'Genesis', 'ዘፍጥረት', 2),
      ];
      final progress = UserProgress();
      for (final s in stories) {
        progress.completeStory(s.id);
        progress.passQuizIfEligible(s.id, 100);
        progress.completeGame(s.id);
      }

      final result = computeNextUp(stories, progress);

      expect(result!.type, NextActionType.playMemoryMatch);
      expect(result.bookEn, 'Genesis');
    });

    test('fully caught up (memory match played too) -> null', () {
      final stories = [
        _story('genesis_1', 'Genesis', 'ዘፍጥረት', 1),
        _story('genesis_2', 'Genesis', 'ዘፍጥረት', 2),
      ];
      final progress = UserProgress();
      for (final s in stories) {
        progress.completeStory(s.id);
        progress.passQuizIfEligible(s.id, 100);
        progress.completeGame(s.id);
      }
      progress.completeMemoryGame('Genesis');

      final result = computeNextUp(stories, progress);

      expect(result, isNull);
    });

    test('single story with no sequence game skips straight past it once quiz is passed', () {
      final stories = [_story('genesis_1', 'Genesis', 'ዘፍጥረት', 1, hasSequence: false)];
      final progress = UserProgress()
        ..completeStory('genesis_1')
        ..passQuizIfEligible('genesis_1', 100);

      final result = computeNextUp(stories, progress);

      // Not enough stories in the book for a Memory Match either (needs 2),
      // so nothing is left to do.
      expect(result, isNull);
    });
  });
}
