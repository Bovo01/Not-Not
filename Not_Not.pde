import java.util.Random;

Game game;

void setup() {
  size(800, 800);

  game = new Game();
}

void draw() {
  background(240);
  game.show();
}