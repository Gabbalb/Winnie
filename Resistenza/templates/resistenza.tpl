<?php
/**
 * @var $risultato
 */
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/daisyui@3.7.7/dist/full.css" rel="stylesheet" type="text/css" />
    <script src="https://cdn.tailwindcss.com"></script>
    <title>resistenze</title>
</head>
<body>
<div class="navbar bg-base-100">
    <div class="navbar-start">
        <div class="dropdown">
            <label tabindex="0" class="btn btn-ghost lg:hidden">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h8m-8 6h16" /></svg>
            </label>
            <ul tabindex="0" class="menu menu-sm dropdown-content mt-3 z-[1] p-2 shadow bg-base-100 rounded-box w-52">
                <li><a href="/~gabby/index.html">Home</a></li>
                <li><a>Info Base</a>
                    <ul class="p-2">
                        <li><a href="/~gabby/Deploy/deploy.html">Deploy</a></li>
                        <li><a href="/~gabby/intro/IntroHtml.html">Intro HTML</a></li>
                    </ul>
                </li>
                <li><a>Database</a>
                    <ul class="p-2">
                        <li><a href="/~gabby/DataBase/Database.html">Database</a></li>
                    </ul>
                </li>
                <li><a>PHP</a>
                    <ul class="p-2">
                        <li><a href="/~gabby/Moltiplicatore/index.php">Calcolatrice</a></li>
                        <li><a href="/~gabby/Resistenza/resistenza.php">Resistenza</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <a class="btn btn-ghost normal-case text-xl">Gabby</a>
    </div>
    <div class="navbar-center hidden lg:flex">
        <ul class="menu menu-horizontal px-1">
            <li><a href="/~gabby/index.html">Home</a></li>
            <li tabindex="0">
                <details>
                    <summary>Info base</summary>
                    <ul class="p-2">
                        <li><a href="/~gabby/Deploy/deploy.html">Deploy</a></li>
                        <li><a href="/~gabby/intro/IntroHtml.html">Intro HTML</a></li>
                    </ul>
                </details>
            </li>
            <li  tabindex="0">
                <details>
                    <summary>Database</summary>
                    <ul class="p-2">
                        <li><a href="/~gabby/DataBase/Database.html">Database</a></li>
                    </ul>
                </details>
            </li>
            <li  tabindex="0">
                <details>
                    <summary>PHP</summary>
                    <ul class="p-2">
                        <li><a href="/~gabby/Moltiplicatore/index.php">Calcolatrice</a></li>
                        <li><a href="/~gabby/Resistenza/resistenza.php">Resistenza</a></li>
                    </ul>
                </details>
            </li>
        </ul>
    </div>
    <div class="navbar-end">
        <div class="avatar">
            <div class="w-24 rounded-full">
                <img src="../img/iislogo.gif" />
            </div>
        </div>
    </div>
</div>

<div class="hero min-h-screen bg-amber-200 ">
    <div class="hero-content text-center">

        <div class="max-w-md">
            <h1 class="text-3xl font-bold">Calcola resistenza</h1>
            <form method="post">
                <h1 class="text-xl font-bold">Prima Banda</h1>
                <select name="primaBanda">
                    <?php foreach ($colori as $colore):?>
                    <option><?=$colore?></option>
                    <?php endforeach;?>
                </select>
                <h1 class="text-xl font-bold">Seconda Banda</h1>
                <select name="secondaBanda">
                    <?php foreach ($colori as $colore):?>
                    <option><?=$colore?></option>
                    <?php endforeach;?>
                </select>
                <h1 class="text-xl font-bold">Terza Banda</h1>
                <select name="terzaBanda">
                    <?php foreach ($colori as $colore):?>
                    <option><?=$colore?></option>
                    <?php endforeach;?>
                </select>
                <h1 class="text-xl font-bold">Moltiplicatore</h1>
                <select name="moltiplicatore">
                    <?php foreach ($moltiplicatori as $moltiplicatore):?>
                    <option><?=$moltiplicatore?></option>
                    <?php endforeach;?>
                </select>
                <h1 class="text-xl font-bold">Tolleranza</h1>
                <select name="tolleranza">
                    <?php foreach ($tolleranze as $tolleranza):?>
                    <option><?=$tolleranza?></option>
                    <?php endforeach;?>
                </select>
                <br>
                <button type="submit">Fai il calcolo</button>
                <br>
                <br>
                <br>
                <h1 class="text-xl font-bold">Il risultato è </h1>
                <h1 class="text-xl font-bold"><?=$risultato?> Ω +- <?=$valtolleranza?>%</h1>

            </form>
        </div>
        <div class="max-w-md">
            <img src="56anelli.png">
        </div>
    </div>
</div>



</body>
</html>

</body>
</html>
