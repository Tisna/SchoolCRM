<?php  
include 'connection.php';
require_once('./controller/function.php');

// if (!isset($_SESSION['logged_id'])) {
//   header("location:login.php");
// }
?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>TK SINAR PRIMA | Dashboard</title>
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="dashboard/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="dashboard/plugins/fontawesome/css/font-awesome.min.css">
  <!-- <link rel="stylesheet" href="dashboard/https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css"> -->
  <link rel="stylesheet" href="dashboard/dist/css/AdminLTE.min.css">
  <link rel="stylesheet" href="dashboard/dist/css/skins/_all-skins.min.css">
  <link rel="stylesheet" href="dashboard/plugins/iCheck/flat/blue.css">
  <link rel="stylesheet" href="dashboard/plugins/iCheck/square/blue.css">
  <link rel="stylesheet" href="dashboard/plugins/datepicker/datepicker3.css">
  <link rel="stylesheet" href="dashboard/plugins/daterangepicker/daterangepicker.css">
  <link rel="stylesheet" href="assets/style.css">
</head>
<body class="hold-transition skin-black-light layout-top-nav">

  <div class="wrapper">
    <?php 

    require 'header.php';
    // require 'sidebar.php'; 

    ?>

    <div class="content-wrapper">

      <section class="content">
