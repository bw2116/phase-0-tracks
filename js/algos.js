function longest(l){
  var longest = " "
  for (i = 0; i < l.length; i++) {
    if (l[i].length > longest.length) {
      longest = l[i];
    }
  }
  return longest;
}

////////////////////////////////////

var person1 = {name: "Steven", age: 54}
var person2 = {name: "Tamir", age: 54}

function compare(p1, p2) {
    if (p1.name == p2.name || p1.age == p2.age) {
      console.log("True");
    } else {
      console.log("False");
    }
}

////////////////////////////////////

function gibberish(x) {
  var letters = "abcdefghijklmnopqrstuvwxyz";
  // var random_num = Math.floor(Math.random() * letters.length);
  
  var gibberish_array = [];

  for (i = 0; i < x; i++) {
    l = (Math.floor(Math.random(x) * 2)) + 1;
    //console.log("L's numbers: " + l);
    m = (Math.ceil(Math.random(x) * 10)) + 1;
    //console.log("M's numbers: " + m);
    sub_string = letters.substring(l, m);
    gibberish_array.push(sub_string);
  }
  return gibberish_array
}

////////////////////////////////////
//var words = ["word1", "word_1", "word_one", "w_o_r_d_o_n_e"];
//console.log(longest(words));

//console.log(longest);
//compare(person1, person2);

console.log(longest(gibberish(7)));