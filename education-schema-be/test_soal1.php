<?php
$number = array(1, 2, 4, 3, 10, 11, 20, 5, 100, 200);
$number_length = count($number);
for ($x = 0; $x < $number_length; $x++) {
    echo 'Index = '.$number[$x];
    echo '</br>';
    for ($y = 1; $y <= $number[$x]; $y++) {
        if($y % 5 === 0 && $y % 11 === 0){
            echo 'FizzBuzz';
            echo '</br>';
        }else if($y % 5 === 0){
            echo 'Buzz';
            echo '</br>';
        }else if($y % 11 === 0){
            echo 'Fizz';
            echo '</br>';
        }else{
            echo $y;
            echo '</br>';
        }
    }
    echo '</br>';
    echo '</br>';
}
?>