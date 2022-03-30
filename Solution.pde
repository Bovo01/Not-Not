private class Solution {
  public Direction dirSolution;
  public Colore colSolution;
  int nots;

  Solution(Direction dir) {
    this(dir, Colore.NONE);
  }

  Solution(Direction dir, Colore col) {
    dirSolution = dir;
    colSolution = col;
  }

  public String toString() {
    return dirSolution.toString();
  }
}