/// <reference path="Script2.js" />

myApp.filter("gender", function () { //Anonymous function that returns another function
    return function (gender) {
        switch (gender) {
            case 1:
                return "Male";
            case 2:
                return "Female";
            case 3:
                return "Not Specified";
        }
    }
})