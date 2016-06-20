/// <reference path="Script3.js" />

myApp.factory('stringService', function () {//a service is just an object, and that's what this function returns
    return {
        processString: function (input) {
            if (!input) {
                return input;
            }
            var output = "";
            for (var i = 0; i < input.length; i++) { // loop through 
                if (i > 0 && input[i] == input[i].toUpperCase()) { //ignore the first character
                    output = output + " ";
                }
                output = output + input[i];
            }
            return output;
        }
    };
});