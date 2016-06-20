/// <reference path="angular.js" />

var myApp = angular.module("myModule3", []);

myApp.controller("myController", function ($scope, $log, stringService) {//insert our custom service into the controller
    $scope.transformString = function (input) { 
        $scope.output = stringService.processString(input);
        $log.info(input)
    }
});