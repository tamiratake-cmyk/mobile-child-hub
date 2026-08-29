import 'package:flutter_test/flutter_test.dart';
import 'package:bible_stories/core/utils/game_unlocks.dart';
import 'package:bible_stories/data/models/story.dart';
import 'package:bible_stories/data/models/user_progress.dart';

Story _story(String id, int order) {
  return Story(
    id: id,
    titleEn: id,
    titleAm: id,
    contentEn: 'content',
    contentAm: 'content',
    bookEn: 'Genesis',
    bookAm: 'ዘፍጥረት',
    character: 'someone',
    imagePath: '',
    order: order,
    verseReferences: const ['Genesis 1:1'],
    summaryEn: 'summary',
    summaryAm: 'summary',
    sequenceEventsEn: const ['a', 'b', 'c'],
    sequenceEventsAm: const ['a', 'b', 'c'],
  );
}

void main() {
  group('isMemoryMatchUnlocked', () {
    test('false with fewer than 2 passed quizzes', () {
      final stories = [_story('s1', 1), _story('s2', 2), _story('s3', 3)];
      final progress = UserProgress()..passQuizIfEligible('s1', 100);

      expect(isMemoryMatchUnlocked(stories, progress), isFalse);
    });

    test('true at exactly 2 passed quizzes', () {
      final stories = [_story('s1', 1), _story('s2', 2), _story('s3', 3)];
      final progress = UserProgress()
        ..passQuizIfEligible('s1', 100)
        ..passQuizIfEligible('s2', 100);

      expect(isMemoryMatchUnlocked(stories, progress), isTrue);
    });
  });

  group('isSequenceGameUnlocked / isSequenceGamePlayed', () {
    test('locked until the quiz is passed', () {
      final story = _story('s1', 1);
      final progress = UserProgress();

      expect(isSequenceGameUnlocked(story, progress), isFalse);

      progress.passQuizIfEligible('s1', 100);
      expect(isSequenceGameUnlocked(story, progress), isTrue);
      expect(isSequenceGamePlayed(story, progress), isFalse);

      progress.completeGame('s1');
      expect(isSequenceGamePlayed(story, progress), isTrue);
    });
  });

  group('memoryMatchPairs', () {
    test('caps at 6 and sorts by story order, not pass order', () {
      final stories = List.generate(8, (i) => _story('s${i + 1}', i + 1));
      final progress = UserProgress();
      // Pass quizzes out of order to prove sorting is by `order`, not insertion.
      for (final id in ['s8', 's1', 's3', 's2', 's7', 's4', 's6', 's5']) {
        progress.passQuizIfEligible(id, 100);
      }

      final result = memoryMatchPairs(stories, progress);

      expect(result.length, 6);
      expect(result.map((s) => s.id).toList(), ['s1', 's2', 's3', 's4', 's5', 's6']);
    });

    test('only includes passed-quiz stories', () {
      final stories = [_story('s1', 1), _story('s2', 2), _story('s3', 3)];
      final progress = UserProgress()..passQuizIfEligible('s2', 100);

      final result = memoryMatchPairs(stories, progress);

      expect(result.map((s) => s.id).toList(), ['s2']);
    });
  });
}
