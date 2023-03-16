int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int scoreA = calculateScore(teamA);
  int scoreB = calculateScore(teamB);

  return scoreA.compareTo(scoreB);
}

int calculateScore(Map<String, int> team) {
  int freeThrows = team['Free throws'] ?? 0;
  int twoPointer = team['2 pointer'] ?? 0;
  int threePointer = team['3 pointer'] ?? 0;

  return (freeThrows + (twoPointer * 2) + (threePointer * 3));
}
