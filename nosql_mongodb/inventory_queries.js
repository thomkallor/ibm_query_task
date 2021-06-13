const stocks = [
  {
    model: "Accord",
    color: "Red",
    year: 2012,
    quantity: 4,
  },
  {
    model: "Punto",
    color: "White",
    year: 2014,
    quantity: 3,
  },
  {
    model: "Fiesta",
    color: "Black",
    year: 2016,
    quantity: 2,
  },
  {
    model: "Fiesta",
    color: "Blue",
    year: 2016,
    quantity: 2,
  },
];

// insert into db
db.inventory.insertMany(stocks);

// Get count of paricular model and year
db.inventory.find({ model: "Fiesta", color: "Blue" });

// query inventory group by color
db.inventory.aggregate([
  {
    $group: { _id: "$color", count: { $sum: "$quantity" } },
  },
]);
