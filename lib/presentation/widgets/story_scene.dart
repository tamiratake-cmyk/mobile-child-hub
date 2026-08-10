// A themed, animated "hero" illustration built entirely from Flutter
// primitives (gradients, icons, motion) -- no external image/GIF assets.
// Used anywhere a story needs a visual: list cards, reader header, quiz
// header, and the sequence game. Swapping in real artwork later only means
// giving Story a populated `imagePath` and branching in this widget.

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../core/constants/book_config.dart';

/// Optional per-story icon overrides so a specific story (e.g. Noah's Ark)
/// gets a more evocative icon than its book's generic one.
const Map<String, IconData> storySceneIcons = {
  'adam_eve': Icons.eco_rounded,
  'noahs_ark': Icons.directions_boat_filled_rounded,
  'abrahams_call': Icons.nightlight_round,
  'joseph_brothers': Icons.checkroom_rounded,
  'moses_bush': Icons.local_fire_department_rounded,
  'ten_plagues': Icons.water_drop_rounded,
  'crossing_red_sea': Icons.waves_rounded,
  'ten_commandments': Icons.description_rounded,
  'aaron_priest': Icons.church_rounded,
  'day_atonement': Icons.brightness_high_rounded,
  'twelve_spies': Icons.travel_explore_rounded,
  'bronze_serpent': Icons.healing_rounded,
  'moses_farewell': Icons.flag_rounded,
  'crossing_jordan': Icons.water_rounded,
  'walls_of_jericho': Icons.fort_rounded,
  'gideons_army': Icons.shield_rounded,
  'samson_strength': Icons.fitness_center_rounded,
  'ruth_loyalty': Icons.volunteer_activism_rounded,
  'samuel_calls': Icons.hearing_rounded,
  'david_goliath': Icons.sports_martial_arts_rounded,
  'david_jonathan': Icons.handshake_rounded,
  'solomons_wisdom': Icons.balance_rounded,
  'elijah_carmel': Icons.local_fire_department_rounded,
  'queen_esther': Icons.diamond_rounded,
  'daniel_lions_den': Icons.pets_rounded,
  'fiery_furnace': Icons.whatshot_rounded,
  'jonah_big_fish': Icons.set_meal_rounded,
  'birth_of_jesus': Icons.star_rounded,
  'wise_men_visit': Icons.card_giftcard_rounded,
  'jesus_baptized': Icons.water_drop_rounded,
  'jesus_calls_disciples': Icons.groups_rounded,
  'feeding_five_thousand': Icons.bakery_dining_rounded,
  'jesus_calms_storm': Icons.storm_rounded,
  'good_samaritan': Icons.favorite_rounded,
  'prodigal_son': Icons.home_rounded,
  'jesus_walks_water': Icons.directions_walk_rounded,
  'lazarus_lives': Icons.wb_sunny_rounded,
  'palm_sunday': Icons.park_rounded,
  'last_supper': Icons.restaurant_rounded,
  'resurrection': Icons.auto_awesome_rounded,
};

class StoryScene extends StatelessWidget {
  final String bookEn;
  final String? storyId;
  final bool compact;
  final BorderRadiusGeometry borderRadius;

  const StoryScene({
    super.key,
    required this.bookEn,
    this.storyId,
    this.compact = false,
    this.borderRadius = const BorderRadius.all(Radius.circular(20)),
  });

  IconData get _mainIcon =>
      (storyId != null ? storySceneIcons[storyId] : null) ??
      BookConfig.iconFor(bookEn);

  @override
  Widget build(BuildContext context) {
    final color = BookConfig.colorFor(bookEn);
    final iconSize = compact ? 34.0 : 64.0;

    return ClipRRect(
      borderRadius: borderRadius,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color, Color.lerp(color, Colors.black, 0.25)!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Soft highlight glow, top-left.
            Positioned(
              left: compact ? -20 : -30,
              top: compact ? -20 : -30,
              child: Container(
                width: compact ? 70 : 130,
                height: compact ? 70 : 130,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withValues(alpha: 0.18),
                ),
              ),
            ),
            // Drifting decorative sparkles.
            if (!compact) ..._sparkles(),
            // Central themed icon.
            Container(
              padding: EdgeInsets.all(compact ? 10 : 20),
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.22),
                shape: BoxShape.circle,
              ),
              child: Icon(_mainIcon, size: iconSize, color: Colors.white),
            )
                .animate(onPlay: (c) => c.repeat(reverse: true))
                .scale(
                  begin: const Offset(1, 1),
                  end: const Offset(1.06, 1.06),
                  duration: 1800.ms,
                  curve: Curves.easeInOut,
                )
                .animate()
                .fadeIn(duration: 400.ms)
                .scale(begin: const Offset(0.6, 0.6), curve: Curves.elasticOut, duration: 700.ms),
          ],
        ),
      ),
    )
        .animate(onPlay: (c) => c.repeat())
        .shimmer(duration: 2600.ms, color: Colors.white.withValues(alpha: 0.16));
  }

  List<Widget> _sparkles() {
    const offsets = [
      Alignment(0.75, -0.7),
      Alignment(-0.8, 0.6),
      Alignment(0.85, 0.75),
    ];
    return List.generate(offsets.length, (i) {
      return Align(
        alignment: offsets[i],
        child: Icon(
          Icons.auto_awesome_rounded,
          size: 16,
          color: Colors.white.withValues(alpha: 0.7),
        )
            .animate(
              onPlay: (c) => c.repeat(reverse: true),
              delay: Duration(milliseconds: 300 * i),
            )
            .moveY(begin: 0, end: -10, duration: 1600.ms, curve: Curves.easeInOut)
            .fadeIn(duration: 600.ms),
      );
    });
  }
}
