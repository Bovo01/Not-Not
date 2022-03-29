public enum Direction {
  LEFT(0), RIGHT(1), UP(2), DOWN(3);

  private int val;

  private Direction(int val) {
    this.val = val;
  }

  static Direction fromVal(int val) {
    for (Direction d : Direction.values()) {
      if (d.val == val)
        return d;
    }
    return null;
  }

  static Direction[] getFirstDirections(int numDirections) {
    Direction[] dirs = new Direction[numDirections];
    Direction[] values = Direction.values();
    for (int i = 0; i < numDirections; i++) {
      dirs[i] = values[i];
    }
    return dirs;
  }
}
