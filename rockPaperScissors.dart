import 'dart:io';
import 'dart:math';

  // if (computer_wins < 4 || player1_wins < 4)
void main() {
  int computer_wins = 0;
  int player1_wins = 0;
  int score = 4;
  String comp = 'Computer';
  
  print('Hi Player 1, what is your name?');  
  String? name = stdin.readLineSync();
  
  for (var i = 0 ; i <= score; i++) {
    Random number = Random();
    int? rsp = number.nextInt(2);
    int? computer = rsp.toInt();
      if (computer == 0) {
        computer == 'Scissors';
  } 
      else if (computer == 1) {
        computer == 'Rock';
  }   
      else if (computer == 2) {
        computer == 'Paper';
  }

  print('Hello $name! Make your move \n (S)cissors, (R)ock or (P)aper');
  String? move = stdin.readLineSync();
  
    if (move == 'S') {
      if (computer == 0) {
        print('\n$name, you chose Scissors  \n $comp chose Scissors \n');
        print('It\'s a tie!\n');
    }   
      else if (computer == 1) {
        print('\n$name, you chose Scissors  \n $comp chose Rock \n');
        print('$comp wins\n');
        computer_wins++;
    } 
      else if (computer == 2) {
        print('\n$name, you chose Scissors  \n $comp chose Paper \n');
        print('$name wins\n');
        player1_wins++;
    }
  } 
    
    else if (move == 'R') {
      if (computer == 0) {
        print('\n $name, you chose Rock  \n $comp chose Scissors \n');
        print('$name wins!\n');
        player1_wins++;
    } 
      else if (computer == 1) {
        print('\n $name, you chose Rock  \n $comp chose Rock \n');
        print('It\'s a tie!\n');
    } 
      else if (computer == 2) {
        print('\n $name, you chose Rock  \n $comp chose Paper \n');
        print('$comp wins\n');
        computer_wins++;
    }
  } 
      else if (move == 'P') {
        if (computer == 0) {
          print('\n$name, you chose Paper  \n $comp chose Scissors \n');
          print('$comp wins\n');
          computer_wins++;
    } 
        else if (computer == 1) {
          print('\n $name, you chose Paper  \n $comp chose Rock \n');
          print('$name wins\n');
          player1_wins++;
    } 
        else if (computer == 2) {
          print('\n $name, you chose Paper  \n $comp chose  Paper \n');
          print('It\'s a tie!\n');
    }
  }    
    }
        print ('FINAL SCORES... $name: $player1_wins; $comp: $computer_wins');
  }

