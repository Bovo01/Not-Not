public enum Direction {
  LEFT(0), RIGHT(1), UP(2), DOWN(3);

  private int val;

  private Direction(int val) {
    this.val = val;
  }

  public String toString() {
    switch (this.val) {
    case 0:
      return "Left";
    case 1:
      return "Right";
    case 2:
      return "Up";
    case 3:
      return "Down";
    }
    throw new IllegalArgumentException("Direzione non implementata");
  }

  public static Direction randomDirection() {
    return Direction.values()[Math.abs(new Random().nextInt() % Direction.values().length)];
  }

  public static Direction fromVal(int val) {
    for (Direction d : Direction.values()) {
      if (d.val == val)
        return d;
    }
    return null;
  }

  public static Direction[] getFirstDirections(int numDirections) {
    Direction[] dirs = new Direction[numDirections];
    Direction[] values = Direction.values();
    for (int i = 0; i < numDirections; i++) {
      dirs[i] = values[i];
    }
    return dirs;
  }
}
