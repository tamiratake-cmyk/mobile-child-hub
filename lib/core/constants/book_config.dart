// Central registry of every Bible book the app currently has stories for.
// Adding a new book to Phase 2+ content only requires adding an entry here --
// the home screen, quiz tab, and story-color/icon lookups all read from it.

import 'package:flutter/material.dart';

enum Testament { old, newTestament }

class BookInfo {
  final String nameEn;
  final String nameAm;
  final Color color;
  final IconData icon;
  final int order;
  final Testament testament;

  const BookInfo({
    required this.nameEn,
    required this.nameAm,
    required this.color,
    required this.icon,
    required this.order,
    required this.testament,
  });
}

class BookConfig {
  BookConfig._();

  static const List<BookInfo> books = [
    BookInfo(
      nameEn: 'Genesis',
      nameAm: 'ዘፍጥረት',
      color: Color(0xFF6C63FF),
      icon: Icons.wb_sunny_rounded,
      order: 1,
      testament: Testament.old,
    ),
    BookInfo(
      nameEn: 'Exodus',
      nameAm: 'ዘጸአት',
      color: Color(0xFFFF6B6B),
      icon: Icons.directions_walk_rounded,
      order: 2,
      testament: Testament.old,
    ),
    BookInfo(
      nameEn: 'Leviticus',
      nameAm: 'ዘሌዋውያን',
      color: Color(0xFF4ECDC4),
      icon: Icons.local_fire_department_rounded,
      order: 3,
      testament: Testament.old,
    ),
    BookInfo(
      nameEn: 'Numbers',
      nameAm: 'ዘኍልቍ',
      color: Color(0xFFFFA94D),
      icon: Icons.format_list_numbered_rounded,
      order: 4,
      testament: Testament.old,
    ),
    BookInfo(
      nameEn: 'Deuteronomy',
      nameAm: 'ዘዳግም',
      color: Color(0xFF9B5DE5),
      icon: Icons.menu_book_rounded,
      order: 5,
      testament: Testament.old,
    ),
    BookInfo(
      nameEn: 'Joshua',
      nameAm: 'መጽሐፈ ኢያሱ',
      color: Color(0xFFF15BB5),
      icon: Icons.fort_rounded,
      order: 6,
      testament: Testament.old,
    ),
    BookInfo(
      nameEn: 'Judges',
      nameAm: 'መጽሐፈ መሳፍንት',
      color: Color(0xFFE63946),
      icon: Icons.gavel_rounded,
      order: 7,
      testament: Testament.old,
    ),
    BookInfo(
      nameEn: 'Ruth',
      nameAm: 'መጽሐፈ ሩት',
      color: Color(0xFFFF7096),
      icon: Icons.favorite_rounded,
      order: 8,
      testament: Testament.old,
    ),
    BookInfo(
      nameEn: '1 Samuel',
      nameAm: '1ኛ ሳሙኤል',
      color: Color(0xFF2EC4B6),
      icon: Icons.military_tech_rounded,
      order: 9,
      testament: Testament.old,
    ),
    BookInfo(
      nameEn: '1 Kings',
      nameAm: '1ኛ ነገሥት',
      color: Color(0xFFF4A300),
      icon: Icons.workspace_premium_rounded,
      order: 10,
      testament: Testament.old,
    ),
    BookInfo(
      nameEn: 'Esther',
      nameAm: 'መጽሐፈ አስቴር',
      color: Color(0xFFC1121F),
      icon: Icons.diamond_rounded,
      order: 11,
      testament: Testament.old,
    ),
    BookInfo(
      nameEn: 'Daniel',
      nameAm: 'መጽሐፈ ዳንኤል',
      color: Color(0xFF3A86FF),
      icon: Icons.pets_rounded,
      order: 12,
      testament: Testament.old,
    ),
    BookInfo(
      nameEn: 'Jonah',
      nameAm: 'መጽሐፈ ዮናስ',
      color: Color(0xFF06AED5),
      icon: Icons.waves_rounded,
      order: 13,
      testament: Testament.old,
    ),
    BookInfo(
      nameEn: 'Matthew',
      nameAm: 'የማቴዎስ ወንጌል',
      color: Color(0xFF7B2CBF),
      icon: Icons.star_rounded,
      order: 14,
      testament: Testament.newTestament,
    ),
    BookInfo(
      nameEn: 'Mark',
      nameAm: 'የማርቆስ ወንጌል',
      color: Color(0xFFFB5607),
      icon: Icons.sailing_rounded,
      order: 15,
      testament: Testament.newTestament,
    ),
    BookInfo(
      nameEn: 'Luke',
      nameAm: 'የሉቃስ ወንጌል',
      color: Color(0xFF43AA8B),
      icon: Icons.volunteer_activism_rounded,
      order: 16,
      testament: Testament.newTestament,
    ),
    BookInfo(
      nameEn: 'John',
      nameAm: 'የዮሐንስ ወንጌል',
      color: Color(0xFF277DA1),
      icon: Icons.groups_rounded,
      order: 17,
      testament: Testament.newTestament,
    ),
  ];

  static BookInfo? byNameEn(String nameEn) {
    for (final b in books) {
      if (b.nameEn.toLowerCase() == nameEn.toLowerCase()) return b;
    }
    return null;
  }

  static Color colorFor(String nameEn) =>
      byNameEn(nameEn)?.color ?? const Color(0xFF6C63FF);

  static IconData iconFor(String nameEn) =>
      byNameEn(nameEn)?.icon ?? Icons.book_rounded;

  static String nameFor(String nameEn, bool isAm) {
    final info = byNameEn(nameEn);
    if (info == null) return nameEn;
    return isAm ? info.nameAm : info.nameEn;
  }

  /// Books in canonical Bible reading order.
  static List<BookInfo> get ordered =>
      [...books]..sort((a, b) => a.order.compareTo(b.order));
}
