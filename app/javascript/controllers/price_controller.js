import { Controller } from "@hotwired/stimulus"
// require date

let D1 = null;
let D2 = null;

export default class extends Controller {

  static targets = ["start", "end_date", "daily", "money"]

  connect() {
    console.log("Hello from our first Stimulus controller")
    console.log(this.startTarget)
    console.log(this.dailyTarget.innerText)

  }

  submitDate(event) {
    // console.log(event.target.value)
    // console.log(event.target,valueasDate)
    const start_date = event.target.value;
    // console.log(typeof start_date); // String
    // console.log(event);
     D1 = new Date(start_date)
    // console.log(typeof d1); // Object
    // console.log(d1);
    // console.log(Math.abs(D1)) THIS ONE IS GOOD


    // console.log(Math.abs(end_date - start_date))
    // console.log(start_date);
    // console.log(end_date - start_date);
  };

  submitEndDate(event) {
    const end_date = event.target.value;
     D2 = new Date(end_date);
    // console.log(Math.abs(D2)-Math.abs(D1)); // THIS ONE IS GOOD
    var dateDifference = (Math.abs(D2)-Math.abs(D1))/86400000;
    console.log(dateDifference)
    // dateDifference()
    let numberofDays = document.getElementById("days");
    numberofDays.innerHTML = dateDifference

    let totalPrice = document.getElementById("totalprice");
    let days = this.dailyTarget.innerText; // Daily price

    let multiplication = dateDifference * days;
    totalPrice.innerText = multiplication;
    this.moneyTarget.value = multiplication
  }
}



// Where to put maths logic

// event.target.value  // 2022-09-17
// event.target.valueasDate // Wed Sep 07 2022 01:00:00 GMT+0100 (British Summer Time)
