$(document).ready(function(){
  //Defaults player's turn to X
  var turn="X";
  //Array stores values with we'll check for winner
  var turns=["#", "#", "#", "#", "#", "#", "#", "#", "#"];
  //Default computer's turn
  var computersTurn="O";
  //Keeps tack of whose turn it is
  var gameOn="false";
  //Keeps track of computer's turn so no infinite loop
  var count = 0;

  //Change player's turn to X and computer to O
  $('#turnX').click(function(){
    turn = "O";
    computersTurn = "X";
    $('#turnX').removeClass('btn-primary');
    $('#turnO').addClass('btn-primary');
    reset();
  });

  $('#turnO').click(function(){
    turn = "X";
    computersTurn = "O";
    $('#turnO').removeClass('btn-primary');
    $('#turnX').addClass('btn-primary');
    reset();
  });

  function computerTurn(){
    //Used to break the while loop
    var taken = false;
    while(taken === false && count !== 5){
      // Generate computer's random turn
      var computersMove = (Math.random()*10).toFixed();
      var move = $('#'+computersMove).text();
      if(move === '#'){
        $("#"+computersMove).text(computersTurn);
        taken = true;
        turns[computersMove] = computersTurn;
      };
    };
  };

  //When you click on .tic
  function playerTurn(turn, id){
    var spotTaken = $("#"+id).text();
    if(spotTaken === "#"){
      count++; //increments count
      turns[id] = turn;
      $("#"+id).text(turn);
      winCondition(turns, turn);
      if(gameOn === false){
        computerTurn();
        winCondition(turns, computersTurn);
      }
    };
  };

  function winCondition(turnArray, currentTurn){
    if (turnArray[0] === currentTurn && turnArray[1] === currentTurn && turnArray[2] === currentTurn) {
      gameOn = true;
      reset();
      alert("Player " + currentTurn + " wins! (Top row across, 0, 1, 2 spots)");
    } else if (turnArray[3] === currentTurn && turnArray[4] === currentTurn && turnArray[5] === currentTurn) {
      gameOn = true;
      reset();
      alert("Player " + currentTurn + " wins! (Second row across, 3, 4, 5 spots)");
    } else if (turnArray[6] === currentTurn && turnArray[7] === currentTurn && turnArray[8] === currentTurn) {
      gameOn = true;
      reset();
      alert("Player " + currentTurn + " wins! (Bottom row across, 6, 7, 8 spots)");
    } else if (turnArray[0] === currentTurn && turnArray[3] === currentTurn && turnArray[6] === currentTurn) {
      gameOn = true;
      reset();
      alert("Player " + currentTurn + " wins! (First column down, 0, 3, 6 spots)");
    } else if (turnArray[1] === currentTurn && turnArray[4] === currentTurn && turnArray[7] === currentTurn) {
      gameOn = true;
      reset();
      alert("Player " + currentTurn + " wins! (Second column down, 1, 4, 7 spots)");
    } else if (turnArray[2] === currentTurn && turnArray[5] === currentTurn && turnArray[8] === currentTurn) {
      gameOn = true;
      reset();
      alert("Player " + currentTurn + " wins! (Third column down, 2, 5, 8 spots)");
    } else if (turnArray[0] === currentTurn && turnArray[4] === currentTurn && turnArray[8] === currentTurn) {
      gameOn = true;
      reset();
      alert("Player " + currentTurn + " wins! (Diagonal down 0, 4, 8 spots)");
    } else if (turnArray[2] === currentTurn && turnArray[4] === currentTurn && turnArray[6] === currentTurn) {
      gameOn = true;
      reset();
      alert("Player " + currentTurn + " wins! (Diagonal up 2, 4, 6 spots)");

    } else {
      gameOn = false;
    }
  };

  $('.tic').click(function(){
    var slot = $(this).attr('id');
    playerTurn(turn, slot);
  });

  function reset(){
    turns = ["#", "#", "#", "#", "#", "#", "#", "#", "#"];
    count = 0;
    $('.tic').text('#');
    gameOn = true;
  };

});




// $(function (){

//   var $students = $('#students');

//   $ajax({
//     type: 'GET',
//     url: 'http://example.com/api/v1/students.json',
//     success: function(students){
//       $.each(students, function(i, student){
//         $students.apend('<p>Name: '+ student.name +'</p>');
//       });
//     }
//   });
// });
