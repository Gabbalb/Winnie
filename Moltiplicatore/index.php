<?php
require 'vendor/autoload.php';

$templates = new League\Plates\Engine('templates', 'tpl');

$a = null;
$b = null;
$risultato = null;

// codice applicativo
if (isset($_POST['a'])) {
    $a = $_POST['a'];
    $b = $_POST['b'];
    $risultato = $a * $b;

    if (isset($_POST['addizione'])) {
        // Il risultato "Calcola" e' stato premuto
        $risultato = $a + $b;
    }
    if (isset($_POST['sottrazione'])) {
        // Il risultato "Calcola" e' stato premuto
        $risultato = $a - $b;
    }
    if (isset($_POST['moltiplicazione'])) {
        // Il risultato "Calcola" e' stato premuto
        $risultato = $a * $b;
    }
    if (isset($_POST['divisione'])) {
        // Il risultato "Calcola" e' stato premuto
        $risultato = $a / $b;
    }
}

echo $templates -> render('moltiplicazione', [
    'risultato' => $risultato,
    'a' => $a,
    'b' => $b
]);



