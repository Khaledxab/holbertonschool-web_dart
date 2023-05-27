int whoWins(Map<String, int?> teamA, Map<String, int?> teamB) {
  int teamAPoints = getPoints(teamA);
  int teamBPoints = getPoints(teamB);
  
  if (teamAPoints > teamBPoints) {
    return 1;
  } else if (teamAPoints < teamBPoints) {
    return 2;
  } else {
    return 0;
  }
}

int getPoints(Map<String, int?> team) {
  int points = 0;
  if (team.containsKey('Free throws')) {
    points += team['Free throws'] ?? 0;
  }
  if (team.containsKey('2 pointer')) {
    points += 2 * (team['2 pointer'] ?? 0);
  }
  if (team.containsKey('3 pointer')) {
    points += 3 * (team['3 pointer'] ?? 0);
  }
  return points;
}
