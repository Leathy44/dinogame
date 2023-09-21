  import 'package:flame/components.dart';
import 'package:game/directions.dart';
    
    class DinoPlayer extends SpriteComponent with HasGameRef {
      DinoPlayer() : super(size: Vector2.all(100.0));

    Direction direction = Direction.none;
    
      static get Vector2 => null;
    
    @override
    
    void update(double dt) {
      super.update(dt);
      updatePosition(dt);
    }
    
    updatePosition(double dt) {
      switch (direction) {
        case Direction.up:
          position.y --;
          break;
        case Direction.down:
          position.y ++;
          break;
        case Direction.left:
          position.x --;
          break;
        case Direction.right:
          position.x ++;
          break;
        case Direction.none:
          break;
      }
    }
          @override
      Future<void> onLoad() async {
        super.onLoad();
        sprite = await gameRef.loadSprite('gamer.png');
        position = gameRef.size / 2;
      }
    }