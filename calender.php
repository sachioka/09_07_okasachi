<?php
session_start();
include("functions.php");
check_session_id();
// get user ID
$user_id = $_SESSION['id'];
// connect DB
$pdo = connect_to_db();

//SQL


$sql = 'SELECT * FROM todo_table where user_id=:user_id';

//
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':user_id', $user_id, PDO::PARAM_STR);
$status = $stmt->execute();


if ($status == false) {
  $error = $stmt->errorInfo();
  echo json_encode(["error_msg" => "{$error[2]}"]);
  exit();
} else {
  $result = $stmt->fetchAll(PDO::FETCH_ASSOC);  // データの出力用変数（初期値は空文字）を設定
  // get todo 

  // var_dump($result[0]["deadline"]);
  // exit();


  ///////////////////////

  //timezone 
  date_default_timezone_set('Asia/Tokyo');

  //next month & prev month = GET
  if (isset($_GET['ym'])) {
    $ym = $_GET['ym'];
  } else {
    //this month
    $ym = date('Y-m');
  }


  //timestamp
  $timestamp = strtotime($ym . '-01');
  if ($timestamp === false) {
    $ym = date('Y-m');
    $timestamp = strtotime($ym . '-01');
  }

  //today
  $today = date('Y-m-j');
  //// j = Day of the month without leading zeros


  //calender title
  $html_title = date('Y年n月', $timestamp);

  //prev & next manth Y-M
  $prev = date('Y-m', mktime(0, 0, 0, date('m', $timestamp) - 1, 1, date('Y', $timestamp)));
  $next = date('Y-m', mktime(0, 0, 0, date('m', $timestamp) + 1, 1, date('Y', $timestamp)));


  //this month days count
  $day_count = date('t', $timestamp);

  //youbi
  $youbi = date('w', mktime(0, 0, 0, date('n', $timestamp), 1, date('Y', $timestamp)));
  // var_dump($youbi);
  // exit();
  // ready to make calender
  $weeks = [];
  $week = '';

  $week .= str_repeat('<td></td>', $youbi);
  // var_dump($week);
  // exit();

  for ($day = 1; $day <= $day_count; $day++, $youbi++) {
    $date = $ym . '-' . $day;
    if ($today == $date) {
      $week .= '<td class="today">' . $day;
    } else {
      $week .= '<td>' . $day;
    }
    //add todo
    $dl_list = array_column($result, "deadline");
    $counts = count(array_keys($dl_list, $date));
    if ($counts <> 0) {
      $week .= '<br><a href="todo_read_select.php?date=' .$date  .'">' . $counts . '件</a>';
    } else {
    }
    //<td><a href='like_create.php?user_id={$user_id}&todo_id={$record["id"]}'>like{$record["cnt"]}</a></td>"
    ///////////////////////////////
    $week .= '</td>';
    // if end of week or end of month
    if ($youbi % 7 == 6 || $day == $day_count) {

      if ($day == $day_count) {
        // if last day of month,add brank cell
        // ex）if last day of the month is thursday , add  brank for friday and saturday
        $week .= str_repeat('<td></td>', 6 - ($youbi % 7));
      }

      // add "tr"and"$week" to  array"weeks"
      $weeks[] = '<tr>' . $week . '</tr>';

      //reset "week"
      $week = '';
    }
  }
}

?>

<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>カレンダー</title>
  <!-- Latest compiled and minified CSS -->
  <!-- CSS only -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

  <!-- JS, Popper.js, and jQuery -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP&display=swap" rel="stylesheet">
  <style>
    .container {
      font-family: 'Noto Sans JP', sans-serif;
      margin-top: 80px;
    }

    h3 {
      margin-bottom: 30px;
    }

    th {
      height: 30px;
      text-align: center;
    }

    td {
      height: 100px;
    }

    .today {
      background: orange;
    }

    th:nth-of-type(1),
    td:nth-of-type(1) {
      color: red;
    }

    th:nth-of-type(7),
    td:nth-of-type(7) {
      color: blue;
    }
  </style>
</head>

<body>
  <div class="container">
    <h3><a href="?ym=<?php echo $prev; ?>">&lt;</a> <?php echo $html_title; ?> <a href="?ym=<?php echo $next; ?>">&gt;</a></h3>

    <table class="table table-bordered">
      <tr>
        <th>日</th>
        <th>月</th>
        <th>火</th>
        <th>水</th>
        <th>木</th>
        <th>金</th>
        <th>土</th>
      </tr>
      <?php
      foreach ($weeks as $week) {
        echo $week;
      }
      ?>
    </table>
  </div>
</body>

</html>