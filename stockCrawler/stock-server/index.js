const moment = require("moment");
const Schedule = require("node-schedule");
const VND = require("./src/stocks/Vndirect");

// Run everytime code start
VND.exec();

// Run job every day at 12:00 and 17:00
Schedule.scheduleJob("0 * * * *", function() {
  let hour = moment().hours();
  // Prevent run code on Saturday, Sunday
  if ([0, 6].includes(moment().day())) {
    return;
  }

  // Check if fromTime <= now <= toTime
  if (hour == 17) {
    console.log("Execute job at: ", moment().format("MMMM Do YYYY, h:mm:ss a"));
    
    // Run main code
    VND.exec();
  }
});
