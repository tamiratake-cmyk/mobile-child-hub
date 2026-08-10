// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_progress.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserProgressAdapter extends TypeAdapter<UserProgress> {
  @override
  final int typeId = 2;

  @override
  UserProgress read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserProgress(
      totalPoints: fields[0] as int,
      completedStories: (fields[1] as List?)?.cast<String>(),
      earnedBadges: (fields[2] as List?)?.cast<String>(),
      currentStreak: fields[3] as int,
      lastActiveDate: fields[4] as DateTime?,
      quizScores: (fields[5] as Map?)?.cast<String, int>(),
      favoriteStories: (fields[6] as List?)?.cast<String>(),
      totalStoriesRead: fields[7] as int,
      totalQuizzesCompleted: fields[8] as int,
      passedQuizzes: (fields[9] as List?)?.cast<String>(),
      completedGames: (fields[10] as List?)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, UserProgress obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.totalPoints)
      ..writeByte(1)
      ..write(obj.completedStories)
      ..writeByte(2)
      ..write(obj.earnedBadges)
      ..writeByte(3)
      ..write(obj.currentStreak)
      ..writeByte(4)
      ..write(obj.lastActiveDate)
      ..writeByte(5)
      ..write(obj.quizScores)
      ..writeByte(6)
      ..write(obj.favoriteStories)
      ..writeByte(7)
      ..write(obj.totalStoriesRead)
      ..writeByte(8)
      ..write(obj.totalQuizzesCompleted)
      ..writeByte(9)
      ..write(obj.passedQuizzes)
      ..writeByte(10)
      ..write(obj.completedGames);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserProgressAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
