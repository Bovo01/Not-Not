private class Solution {
  public Direction dirSolution;
  public Colore colSolution;
}

public class Game {
  private Porta[] porte;
  private Solution solution;

  public Game() {
    generaPorte(4);
  }

  public void show() {
    push();
    final float DIM_SCENA = width - 100;
    translate(width / 2, height / 2);
    rectMode(CENTER);
    fill(50);
    // Scena
    rect(0, 0, DIM_SCENA, DIM_SCENA);
    // Porte
    for (Porta p : porte) {
      p.show(DIM_SCENA / 2);
    }

    pop();
  }

  private void generaPorte(int numPorte) {
    porte = new Porta[numPorte];
    int i = 0;
    for (Direction d : Direction.getFirstDirections(numPorte)) {
      porte[i++] = new Porta(d);
    }
  }
}