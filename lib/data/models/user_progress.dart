import 'package:hive/hive.dart';

part 'user_progress.g.dart';

@HiveType(typeId: 2)
class UserProgress extends HiveObject {
  @HiveField(0)
  int totalPoints;

  @HiveField(1)
  List<String> completedStories;

  @HiveField(2)
  List<String> earnedBadges;

  @HiveField(3)
  int currentStreak;

  @HiveField(4)
  DateTime lastActiveDate;

  @HiveField(5)
  Map<String, int> quizScores; // storyId -> score

  @HiveField(6)
  List<String> favoriteStories;

  @HiveField(7)
  int totalStoriesRead;

  @HiveField(8)
  int totalQuizzesCompleted;

  /// Story ids whose quiz was passed at or above [passThresholdPercent].
  /// Passing a story's quiz unlocks the next story in its book and that
  /// story's Sequence mini-game.
  @HiveField(9)
  List<String> passedQuizzes;

  /// Story ids whose Sequence (timeline) mini-game has been completed.
  @HiveField(10)
  List<String> completedGames;

  /// Book names (bookEn) whose Memory Match mini-game has been completed.
  @HiveField(11)
  List<String> completedMemoryGames;

  UserProgress({
    this.totalPoints = 0,
    List<String>? completedStories,
    List<String>? earnedBadges,
    this.currentStreak = 0,
    DateTime? lastActiveDate,
    Map<String, int>? quizScores,
    List<String>? favoriteStories,
    this.totalStoriesRead = 0,
    this.totalQuizzesCompleted = 0,
    List<String>? passedQuizzes,
    List<String>? completedGames,
    List<String>? completedMemoryGames,
  })  : completedStories = completedStories ?? [],
        earnedBadges = earnedBadges ?? [],
        lastActiveDate = lastActiveDate ?? DateTime.now(),
        quizScores = quizScores ?? {},
        favoriteStories = favoriteStories ?? [],
        passedQuizzes = passedQuizzes ?? [],
        completedGames = completedGames ?? [],
        completedMemoryGames = completedMemoryGames ?? [];

  /// Minimum score percentage required to pass a quiz and unlock the next
  /// story + that story's mini-game.
  static const int passThresholdPercent = 70;

  void addPoints(int points) {
    totalPoints += points;
  }

  void completeStory(String storyId) {
    if (!completedStories.contains(storyId)) {
      completedStories.add(storyId);
      totalStoriesRead++;
    }
  }

  void recordQuizScore(String storyId, int score) {
    quizScores[storyId] = score;
    totalQuizzesCompleted++;
  }

  /// Marks [storyId]'s quiz as passed if [percentage] clears the threshold.
  /// Returns true if this call newly unlocked the next content.
  bool passQuizIfEligible(String storyId, int percentage) {
    if (percentage < passThresholdPercent) return false;
    if (passedQuizzes.contains(storyId)) return false;
    passedQuizzes.add(storyId);
    return true;
  }

  bool hasPassedQuiz(String storyId) => passedQuizzes.contains(storyId);

  void completeGame(String storyId) {
    if (!completedGames.contains(storyId)) {
      completedGames.add(storyId);
    }
  }

  void completeMemoryGame(String bookEn) {
    if (!completedMemoryGames.contains(bookEn)) {
      completedMemoryGames.add(bookEn);
    }
  }

  bool hasCompletedMemoryGame(String bookEn) => completedMemoryGames.contains(bookEn);

  void updateStreak() {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final lastActive = DateTime(
      lastActiveDate.year,
      lastActiveDate.month,
      lastActiveDate.day,
    );

    final difference = today.difference(lastActive).inDays;

    if (difference == 1) {
      currentStreak++;
    } else if (difference > 1) {
      currentStreak = 1;
    }
    lastActiveDate = now;
  }

  void earnBadge(String badgeId) {
    if (!earnedBadges.contains(badgeId)) {
      earnedBadges.add(badgeId);
    }
  }

  void toggleFavorite(String storyId) {
    if (favoriteStories.contains(storyId)) {
      favoriteStories.remove(storyId);
    } else {
      favoriteStories.add(storyId);
    }
  }

  int get level => (totalPoints / 100).floor() + 1;
  int get pointsToNextLevel => 100 - (totalPoints % 100);
}
