<?php
$data = array(1, "ka", 67, "wah", "1772", "edukasi", 7, 98, -1);
$number_length = count($data);
for ($x = 0; $x < $number_length; $x++) {
    if(is_integer($data[$x])){
        if($data[$x]<=0){
            echo 'index ke '.$x.' Tidak bisa di validasi sistem';
            echo '</br>';
        }else{
            $tipe_data = 'integer';
            echo 'index ke '.$x.' adalah integer dengan data '.$data[$x].'';
            echo '</br>';
        }
    }else if(is_string($data[$x])){
        $tipe_data = 'string';
        echo 'index ke '.$x.' adalah string dengan data '.$data[$x].'';
        echo '</br>';
    }
}
?>