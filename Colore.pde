public enum Colore {
  NONE(0xFF), ROSSO(0xFFFF0000), VERDE(0xFF00FF00), GIALLO(0xFFFFFF00), BLU(0xFF0000FF);

  int col;

  Colore(int col) {
    this.col = col;
  }

  public int getColor() {
    return this.col;
  }
}