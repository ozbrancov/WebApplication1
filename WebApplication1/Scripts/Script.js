/// <reference path="angular.js" />

var myApp = angular.module("myModule", []);

myApp.controller("myController", function ($scope) {
    $scope.message = "AngularJS tutorial";
    //the data that you attach to the scope is the model
});