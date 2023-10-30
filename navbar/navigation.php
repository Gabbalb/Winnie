<?php

require 'vendor/autoload.php';

$templates = new League\Plates\Engine('template', 'tpl');

echo $templates -> render('menu', []);