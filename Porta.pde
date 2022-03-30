public class Porta {
  private static final float PORT_WIDTH = 50f;
  private static final float PORT_HEIGHT = 20f;

  private Direction dir;
  private Colore col;

  Porta(Direction dir) {
    this(dir, Colore.NONE);
  }

  Porta(Direction dir, Colore col) {
    this.dir = dir;
    this.col = col;
  }

  public void show(float centerDistance) {
    fill(col.getColor());
    switch (dir) {
    case LEFT:
      rect(-centerDistance, 0, PORT_HEIGHT, PORT_WIDTH);
      return;
    case RIGHT:
      rect(centerDistance, 0, PORT_HEIGHT, PORT_WIDTH);
      return;
    case UP:
      rect(0, -centerDistance, PORT_WIDTH, PORT_HEIGHT);
      return;
    case DOWN:
      rect(0, centerDistance, PORT_WIDTH, PORT_HEIGHT);
      return;
    }
  }

  public Direction getDirection() {
    return this.dir;
  }

  public Colore getColore() {
    return this.col;
  }

  public void setDirection(Direction dir) {
    this.dir = dir;
  }

  public void setColore(Colore col) {
    this.col = col;
  }
}