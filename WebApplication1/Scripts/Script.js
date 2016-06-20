/// <reference path="angular.js" />

var myApp = angular.module("myModule", []);

myApp.controller("myController", function ($scope) {
    //var employee = {
    //    firstName: "Mark",
    //    lastName: "Twain",
    //    Gender: "male"
    //};
    var message = "data binding example";

    var youtube = {
        logo: "/Images/Youtube.png"
    };

    var countries = [
        {
            name: "UK",
            cities: [
                { name: "London" },
                { name: "Leeds" },
                { name: "Liverpool" }
            ]
        },
        {
            name: "US",
            cities: [
                { name: "Chicago" },
                { name: "LA" },
                { name: "Houston"}
            ]
        }
    ];

    var technologies = [
        { name: "C#", likes: 0, dislikes: 0 },
        { name: "ASP.NET", likes: 0, dislikes: 0 },
        { name: "SQL SERVER", likes: 0, dislikes: 0 },
        { name: "AngularJS", likes: 0, dislikes: 0 }
    ]

    //$scope.employee = employee;
    $scope.message = message;
    $scope.youtube = youtube;
    $scope.countries = countries;
    $scope.technologies = technologies;
    $scope.incrementLikes = function (technology) {
        technology.likes++;
    }
    $scope.incrementDislikes = function (technology) {
        technology.dislikes++;
    }
    //the data that you attach to the scope is the model
    //The controller is used to setup and to add behavior to the scope object.  
    //Two way data binding keeps the model and the view in sync at all times. 

    var employees = [
        { name: "Ben", dateOfBirth: new Date("November 23, 1980"), gender: "Male", salary: 55000.788 },
        {name: "Sara", dateOfBirth: new Date("January 1, 1970"), gender: "Female", salary: 70000.788},
        {name: "Mark", dateOfBirth: new Date("June 23, 2001"), gender: "Male", salary: 59000.788},
        {name: "Todd", dateOfBirth: new Date("Juley 23, 1980"), gender: "Male", salary: 90000.788}
    ];
    $scope.employees = employees;
    $scope.rowlimit = 3;
});