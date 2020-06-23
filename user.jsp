<!DOCTYPE html>
<html>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<body>

<h2>Validation Email Address</h2>

<form ng-app="myApp" ng-controller="validateCtrl" name="myForm" novalidate>
    <p>Email:<br>
    <input type="email" name="email" ng-model="email" required>
    <span style="color:red" ng-show="myForm.email.$dirty && myForm.email.$invalid">
    <span ng-show="myForm.email.$error.required">Email is required.</span>
    <span ng-show="myForm.email.$error.email">Invalid email address.</span>
    </span>
</p>

<p>
    <input type="submit" ng-disabled="myForm.user.$dirty && myForm.user.$invalid || myForm.email.$dirty && myForm.email.$invalid">
</p>

</form>

<script>
    var app = angular.module('myApp', []);
    app.controller('validateCtrl', function($scope) {
    $scope.email = 'abc@gmail.com';
});
</script>

</body>
</html>