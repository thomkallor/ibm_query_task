const sales = [
  {
    model: "Accord",
    color: "Red",
    year: 2012,
    quantity: 1,
    soldAt: new Date("2020/06/11").getTime(),
  },
  {
    model: "Punto",
    color: "White",
    year: 2014,
    quantity: 1,
    soldAt: new Date("2020/06/11").getTime(),
  },
  {
    model: "Fiesta",
    color: "Black",
    year: 2016,
    quantity: 1,
    soldAt: new Date("2020/06/12").getTime(),
  },
  {
    model: "Fiesta",
    color: "Blue",
    year: 2016,
    quantity: 1,
    soldAt: new Date("2020/06/12").getTime(),
  },
];

db.sales.insertMany(sales);

// one day in ms
const oneDayInms = 86400000;
const date = new Date("2020/06/12").getTime();
const nextDay = date + oneDayInms;

// sales count on a day
db.sales.aggregate([
  {
    $match: { soldAt: { $gte: date, $lt: nextDay } },
  },
  {
    $group: { _id: null, count: { $sum: "$quantity" } },
  },
]);
