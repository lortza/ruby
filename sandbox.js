function isValidWalk(minutes, walk){

  var blocks = {
    'n': 0,
    's': 0,
    'e': 0,
    'w': 0
  }

  if(walk.length != minutes){
    return false
  }

  walk.forEach(function(block) {
    blocks[block] +=1
  });

  return (blocks['n'] === blocks['s'] && blocks['w'] === blocks['e'])
}

console.log('1 ' + (isValidWalk(10, ['n','n','n','n','n','n','s','s','s','s']) == false ? 'passed' : 'failed'))
console.log('2 ' + (isValidWalk(10, ['n','n','n','n','n','n','s','s','s','s','s','s']) == false ? 'passed' : 'failed'))
console.log('3 ' + (isValidWalk(10, ['w']) == false ? 'passed' : 'failed'))
console.log('4 ' + (isValidWalk(10, ['e','e','e','e','e','w','w','w','w','w']) == true ? 'passed' : 'failed'))
console.log('5 ' + (isValidWalk(10, ['n', 'n', 'n', 's','s', 's','e','e', 'w', 'w']) == true ? 'passed' : 'failed'))
console.log('6 ' + (isValidWalk(10, ['n','n','n', 's','s', 'e','e','e', 'w','w']) == false ? 'passed' : 'failed'))
console.log('7 ' + (isValidWalk(10, []) == false ? 'passed' : 'failed'))

