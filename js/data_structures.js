var color = ["Blue", "Pink", "Yellow", "Green"];
var names = ["Brad", "Ted", "Lewis", "Gertrude"];

color.push("Red");
names.push("Larry");


for (var i = 0; i < names.length; i++){
  var horse = {name: names[i], color: color[i]};
}

function Car(color, engine, seats) {
	this.color = color;
  this.engine = engine;
  this.seats = seats;

  this.give_it_some_gas = function() {console.log("VROOM, VROOM!!!")};

}

var car1 = new Car("Red", "v8", 6);
var car2 = new Car("Blue", "v12", 2);
var car3 = new Car("Silver", "electric", 4);

console.log(car1);
car1.give_it_some_gas();

console.log(car2);
car1.give_it_some_gas();

console.log(car3);
car1.give_it_some_gas();