int getPoints(Map<String, int> team) {
  int points = 0;
  team.forEach((key, value) {
    if (key == 'Free throws') {
      points += value;
    } else if (key == '2 pointer') {
      points += value * 2;
    } else if (key == '3 pointer') {
      points += value * 3;
    }
  });
  return points;
}

int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int teamAPoints = getPoints(teamA);
  int teamBPoints = getPoints(teamB);
  return teamAPoints.compareTo(teamBPoints);
}
