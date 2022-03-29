public enum Direction {
  LEFT, RIGHT, UP, DOWN;
}

public enum Colore {
  NONE, ROSSO, VERDE, GIALLO, BLU;
}

public class Porta {
  private Direction dir;
  private Colore col;

  Porta(Direction dir) {
    this(dir, Colore.NONE);
  }

  Porta(Direction dir, Colore col) {
    this.dir = dir;
    this.col = col;
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