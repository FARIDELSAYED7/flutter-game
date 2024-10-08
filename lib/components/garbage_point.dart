import 'dart:async';

import 'package:GenGoal/gen_goal.dart';
import 'package:flame/components.dart';

class GarbagePoint extends SpriteComponent with HasGameRef<GenGoal> {
  final String imageName;

  GarbagePoint({
    super.position,
    super.size,
    required this.imageName,
  });

  @override
  FutureOr<void> onLoad() {
    sprite = Sprite(
      game.images.fromCache('Exteriors/$imageName.png'),
    );

    return super.onLoad();
  }
}
