<?php

/*
 * Questo + il controller dell'applicazione moltiplicazione
 */

$colore = [
    'Black',
    'Brown',
    'Red',
    'Orange',
    'Yellow',
    'Green',
    'Blue',
    'Violet',
    'Grey',
    'White'
];
$valore_colore = [
    'Black' => 0,
    'Brown' => 1,
    'Red' => 2,
    'Orange' => 3,
    'Yellow' => 4,
    'Green' => 5,
    'Blue' => 6,
    'Violet' => 7,
    'Grey' => 8,
    'White' => 9
];
$moltiplicatore = [
    'Black',
    'Brown',
    'Red',
    'Orange',
    'Yellow',
    'Green',
    'Blue',
    'Violet',
    'Grey',
    'White',
    'Gold',
    'Silver'
];
$valore_moltiplicatore = [
    'Black' => 1,
    'Brown' => 10,
    'Red' => 100,
    'Orange' => 1000,
    'Yellow' => 10000,
    'Green' => 100000,
    'Blue' => 1000000,
    'Violet' => 10000000,
    'Grey' => 100000000,
    'White' => 1000000000,
    'Gold' => 0.1,
    'Silver' => 0.01
];
$tolleranza = [
    'Brown',
    'Red',
    'Green',
    'Blue',
    'Violet',
    'Grey',
    'Gold',
    'Silver'
];
$valore_tolleranza = [
    'Brown' => 1,
    'Red' => 2,
    'Green' => 0.5,
    'Blue' => 0.25,
    'Violet' => 0.1,
    'Grey' => 0.05,
    'Gold' => 5,
    'Silver' => 10
];

require 'vendor/autoload.php';

$templates = new League\Plates\Engine('templates','tpl');

//La funzione var_dump è per fare debug sporco e veloce
//var_dump($_POST);

$primocolore = $_POST['primaBanda'];
$primovalore = $valore_colore[$primocolore];
$secondocolore = $_POST['secondaBanda'];
$secondovalore = $valore_colore[$secondocolore];
$terzocolore = $_POST['terzaBanda'];
$terzovalore = $valore_colore[$terzocolore];
$bandamoltiplicatore = $_POST['moltiplicatore'];
$moltiplicatorevalore = $valore_moltiplicatore[$bandamoltiplicatore];
$bandatolleranza = $_POST['tolleranza'];
$valtolleranza = $valore_tolleranza[$bandatolleranza];
$risultato = (($primovalore + $secondovalore + $terzovalore) * $moltiplicatorevalore);


echo $templates->render('resistenza',[
    'colori' => $colore,
    'moltiplicatori' => $moltiplicatore,
    'tolleranze' => $tolleranza,
    'risultato' => $risultato,
    'valtolleranza' => $valtolleranza
]);
