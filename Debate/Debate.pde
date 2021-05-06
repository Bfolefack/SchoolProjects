Team[] teams;

ArrayList<Team> round1 = new ArrayList<Team>();
ArrayList<Team> round2 = new ArrayList<Team>();
ArrayList<Team> finals = new ArrayList<Team>();
ArrayList<Team> losers = new ArrayList<Team>();

ArrayList<Team> currentRound;

int match1;
int match2;
PVector topicNum;
int timer;

Team team1;
Team team2;
Team winner;

Team first;
Team second;
Team third;
Team fourth;

String debateState;

void setup() {
  size(1800, 900);
  textAlign(CENTER, CENTER);

  String[] names;

  names = loadStrings("Names.txt");

  ArrayList<String> nameList = new ArrayList<String>();
  teams = new Team[8];
  debateState = "prelim";

  for (int i = 0; i < names.length; i++) {
    nameList.add(names[i]);
  }


  teams[0] = new Team();
  teams[0].addName("Breakout Room 2");


  teams[1] = new Team();
  teams[1].addName("Breakout Room 3");


  teams[2] = new Team();
  teams[2].addName("Open Bracket Insert Cool Team Name Close Bracket");


  teams[3] = new Team();
  teams[3].addName("Lord Help Us");


  teams[4] = new Team();
  teams[4].addName("JMS");


  teams[5] = new Team();
  teams[5].addName("Yee-Yee Haircuts");


  teams[6] = new Team();
  teams[6].addName("Biden-Harris Administration");

  teams[7] = new Team();
  teams[7].addName("MINE Kampf (Lame)");



  for (int i = 0; i < 8; i++) {
    round1.add(teams[i]);
  }
  //BR2
  //JMS
  //Biden-Harris
  println("1");
  round2.add(teams[0]);
  round1.remove(teams[0]);
  round1.remove(teams[1]);

  println("1");
  round2.add(teams[3]);
  round1.remove(teams[3]);
  round1.remove(teams[2]);

  round2.add(teams[4]);
  round1.remove(teams[4]);
  round1.remove(teams[5]);

  round2.add(teams[6]);
  round1.remove(teams[6]);
  round1.remove(teams[7]);

  finals.add(teams[0]);
  losers.add(teams[3]);
  round2.remove(teams[0]);
  round2.remove(teams[3]);

  currentRound = round2;
}

void draw() {
  if (timer > 0 && frameCount % 60 == 0) {
    timer--;
  }
  background(125);
  if (debateState == "prelim") {
    if (currentRound == round1) {
      drawTeams("Qualifiers!", currentRound);
    } 
    if (currentRound == round2) {
      drawTeams("Semifinals!", currentRound);
    } 
    if (currentRound == losers) {
      drawTeams("Loser's Quarrel!", currentRound);
    } 
    if (currentRound == finals) {
      drawTeams("Finals!", currentRound);
    }
  } else if (debateState == "matchup") {
    matchup(currentRound, 3);
  } else if (debateState == "match") {
    matchTeams(currentRound);
    debateState = "showMatch";
  } else if (debateState == "showMatch") {
    team1.display(200);
    team2.display(200);
    fill(0);
    textSize(200);
    text("vs.", width/2, height/2);
  } else if (debateState == "showTopic") {
    textSize(100);
    text("Your topic is #" + (int) topicNum.x + ":" + (int) topicNum.y + ":" + (int) topicNum.z, width/2, height/2);
  } else if (debateState == "preparation") {
    timer("Preparation Time!");
  } else if (debateState == "open1") {
    timer("Team 1 Opening Statements");
  } else if (debateState == "open2") {
    timer("Team 2 Opening Statements");
  } else if (debateState == "crossDebate") {
    timer("Cross Debate!");
  } else if (debateState == "close1") {
    timer("Team 1 Closing Arguments");
  } else if (debateState == "close2") {
    timer("Team 2 Closing Arguments");
  } else if (debateState == "votingTime") {
    timer("Voting Time!", loadImage("QR.png"));
  } else if (debateState == "theWinnerIs") {
    fill(0);
    textSize(200);
    text("The Winner Is...", width/2, height/2);
  } else if (debateState == "teamWins") {
    winner(winner);
  } else if (debateState == "rankings"){
    first.pos = new PVector(width/2, 150);
    first.display(180);
    second.pos = new PVector(width/2, 350);
    second.display(180);
    third.pos = new PVector(width/2, 550);
    third.display(180);
    fourth.pos = new PVector(width/2, 750);
    fourth.display(180);
  }


  //println(debateState);
}

void mousePressed() {
  if (debateState == "prelim" && mouseButton == CENTER) {
    debateState = "matchup";
    return;
  } else if (debateState == "matchup" && mouseButton == CENTER) {
    debateState = "match";
    return;
  } else if (false) {
    debateState = "showTopic";
    topicNum = new PVector((int) random(2) + 1, (int) random(3) + 1, (int) random(6) + 1);
    return;
  } else if (debateState == "showMatch" && mouseButton == CENTER) {
    debateState = "open1";
    timer = 150;
    return;
  } else if (debateState == "showTopic" && mouseButton == CENTER) {
    debateState = "preparation";
    timer = 240;
    return;
  } else if (debateState == "preparation" && mouseButton == CENTER) {
    debateState = "open1";
    timer = 150;
    return;
  } else if (debateState == "open1" && mouseButton == CENTER) {
    debateState = "open2";
    timer = 150;
    return;
  } else if (debateState == "open2" && mouseButton == CENTER) {
    debateState = "crossDebate";
    timer = 240;
    return;
  } else if (debateState == "crossDebate" && mouseButton == CENTER) {
    debateState = "close1";
    timer = 180;
    return;
  } else if (debateState == "close1" && mouseButton == CENTER) {
    debateState = "close2";
    timer = 180;
    return;
  } else if (debateState == "close2" && mouseButton == CENTER) {
    debateState = "votingTime";
    timer = 240;
    return;
  } else if (debateState == "votingTime") {
    debateState = "theWinnerIs";
    return;
  } else if (debateState == "theWinnerIs") {
    debateState = "theWinner";
    if (mouseButton == LEFT) {
      debateState = "teamWins";
      winner = team1;
      if (currentRound == round1) {
        println("1");
        round2.add(team1);
        round1.remove(team1);
        round1.remove(team2);
        return;
      } else if (currentRound == round2) {
        finals.add(team1);
        losers.add(team2);
        round2.remove(team1);
        round2.remove(team2);
        return;
      } else if (currentRound == losers) {
        third = team1;
        fourth = team2;
        return;
      } else if (currentRound == finals) {
        first = team1;
        second = team2;
        return;
      }
    } else if (mouseButton == RIGHT) {
      debateState = "teamWins";
      winner = team2;
      if (currentRound == round1) {
        println("2");
        round2.add(team2);
        round1.remove(team2);
        round1.remove(team1);
        currentRound = round1;
        return;
      } else if (currentRound == round2) {
        finals.add(team2);
        losers.add(team1);
        round2.remove(team2);
        round2.remove(team1);
        currentRound = round2;
        return;
      } else if (currentRound == losers) {
        third = team2;
        fourth = team1;
        currentRound = losers;
        return;
      } else if (currentRound == finals) {
        first = team2;
        second = team1;
        currentRound = finals;
        return;
      }
    } else {
      debateState = "theWinnerIs";
    }
  } else if (debateState == "teamWins") {
    if (currentRound.size() < 2) {
      if (currentRound == round1) {
        debateState = "prelim";
        currentRound = round2;
        return;
      } else if (currentRound == round2) {
        debateState = "prelim";
        currentRound = finals;
        return;
      }
    } else if (currentRound == losers) {
      debateState = "rankings";
      return;
    } else if (currentRound == finals) {
      currentRound = losers;
      debateState = "prelim";
      return;
    } else {
      debateState = "matchup";
      return;
    }
  }
}

void matchup(ArrayList<Team> t, int mod) {
  match1 =(int)random(2);
  match2 =(int)random(2);
  t.get(match1).pos = new PVector(width/5, height/2);
  t.get(match1).display(200);

  t.get(match2).pos = new PVector(4 * width/5, height/2);
  t.get(match2).display(200);

  fill(0);
  textSize(200);
  text("vs.", width/2, height/2);
}

void matchTeams(ArrayList<Team> t) {
  match1 =(int)random(2);
  match2 =(int)random(2);

  while (match1 == match2) {
    match2 =(int)random(2);
  }

  t.get(match1).pos = new PVector(width/5, height/2);
  t.get(match1).display(200);
  team1 = t.get(match1);

  t.get(match2).pos = new PVector(4 * width/5, height/2);
  t.get(match2).display(200);
  team2 = t.get(match2);

  fill(0);
  textSize(200);
  text("vs.", width/2, height/2);
}

void drawTeams(String title, ArrayList<Team> t) {
  background(125);
  fill(0);
  textSize(100);
  text(title, width/2, height/10);
  int count = 0;
  for (Team team : t) {
    team.pos = new PVector(((width * count/t.size())) + 800/t.size(), height/2);
    team.display(800/t.size());
    count++;
  }
}

void timer(String title) {
  textSize(100);
  text(title, width/2, height/10);

  textSize(400);
  String seconds = "" + timer % 60;
  if (seconds.length() == 1) {
    seconds = "0" + seconds;
  }
  text(timer/60 + ":" + seconds, width/2, height/2);
}

void timer(String title, PImage image) {
  textSize(100);
  text(title, width/2, height/10);

  image(image, width/2 - 200, height/2 - 200, 400, 400);

  textSize(100);
  String seconds = "" + timer % 60;
  if (seconds.length() == 1) {
    seconds = "0" + seconds;
  }
  text(timer/60 + ":" + seconds, width/2, 4 * height/5);
}

void winner(Team w) {
  textSize(100);
  text("The Winner Is:", width/2, height/10);
  w.pos =  new PVector(width/2, height/2);
  w.display(300);
}
