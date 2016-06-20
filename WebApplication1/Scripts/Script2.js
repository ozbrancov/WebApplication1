/// <reference path="angular.js" />

var myApp = angular.module("myModule2", []);


myApp.controller("myController", function ($scope) {
    var employees = [
    { name: "Ben", dateOfBirth: new Date("November 23, 1980"), gender: "Male", salary: 55000.788 },
    { name: "Sara", dateOfBirth: new Date("January 1, 1970"), gender: "Female", salary: 70000.335648 },
    { name: "Mark", dateOfBirth: new Date("June 23, 2001"), gender: "Male", salary: 59000.7899 },
    { name: "Jenine", dateOfBirth: new Date("June 24, 1967"), gender: "Male", salary: 0.7899 },
    { name: "Oliver", dateOfBirth: new Date("June 27, 2001"), gender: "Male", salary: 0 },
    { name: "Todd", dateOfBirth: new Date("Juley 23, 1980"), gender: "Male", salary: 90000.22222 }
    ];

    $scope.employees = employees;
    $scope.employeeView = "EmployeeTable.html"
    $scope.sortColumn = "name";
    $scope.reverseSort = false;

    $scope.sortData = function (column) {
        $scope.reverseSort = ($scope.sortColumn == column) ? !$scope.reverseSort : false;
        $scope.sortColumn = column;
    };
    $scope.getSortClass = function (column) {
        if ($scope.sortColumn == column) {
            return ($scope.reverseSort) ? 'arrow-down' : 'arrow-up';
        }
        return '';
    }

    var cats = [
        { name: "Ben", dateOfBirth: new Date("November 23, 1980"), gender: 1 },
        { name: "Sara", dateOfBirth: new Date("January 1, 1970"), gender: 2 },
        { name: "Mark", dateOfBirth: new Date("June 23, 2001"), gender: 1 },
        { name: "Jenine", dateOfBirth: new Date("June 24, 1967"), gender: 2 },
        { name: "Oliver", dateOfBirth: new Date("June 27, 2001"), gender: 1 },
        { name: "Todd", dateOfBirth: new Date("Juley 23, 1980"), gender: 3 }
    ];
    $scope.cats = cats;
});