int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  var a = 0;
  var b = 0;

  teamA.forEach((key, value) {
    if (key == 'Free throws')
      a += value;
    else if (key == '2 pointer')
      a += value * 2;
    else if (key == '3 pointer') a += value * 3;
  });

  teamB.forEach((key, value) {
    if (key == 'Free throws')
      b += value;
    else if (key == '2 pointer')
      b += value * 2;
    else if (key == '3 pointer') b += value * 3;
  });

  if (a > b)
    return 1;
  else if (a == b)
    return 0;
  else
    return 2;
}