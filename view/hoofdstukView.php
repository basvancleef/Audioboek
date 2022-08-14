<!doctype html>
<html>
    <head>

        <!-- META -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- CSS -->
        <link rel = "stylesheet" href = "view/css/style.css" />

        <!-- SCRIPTS -->
        <script src="view/js/script.js"></script>

        <!-- TITLE -->
        <title>Audioboek</title>

        <style>
            body {
                background-image: url("view/assets/achtergrond.png");
                background-repeat: no-repeat;
                background-size: cover;
            }
        </style>

    </head>

    <body>
        <div class = "container">

            <!-- Student info -->
            <div>
                <img class = "frame" src = "view/assets/pictureFrame.png" />
                <img class = "student" src = <?= $hoofdstuk["student"] ?> />

                <p class = "naam">IK BEN <br> <?= $hoofdstuk["lezer"] ?></p>
                <p class = "titel"><b>EN LEES HET HOOFDSTUK</b></p>
                <img class = "titleArrow" src = "view/assets/zwartePijl.png" />
                <p class = "titel2"><b> <b class = "trans">X</b> <?= $hoofdstuk["titel"] ?> </b></p>
            </div>

            <!-- Chapter image -->
            <div>
                <img class = "chapterImg" src = <?= $hoofdstuk["chapterIMG"] ?> />
            </div>

            <!-- Arrows -->
            <div class = "arrowNext" >
                <?php
                $volgende = $hoofdstuk['index'] +1;
                if ($volgende > 28){
                    echo "<a href='view/html/credits.html'> <img src = 'view/assets/finish.png'  width='50px' height='70px' alt = 'Volgend hoofdstuk'> </a> ";
                } else {
                    echo "<a href='?id=$volgende'> <img class = rotateimg180 src = 'view/assets/rozePijl.png' alt = 'Volgend hoofdstuk'> </a> "; // Volgende link
                }
                ?>
            </div>

            <div class = "arrowPrev">
                <?php
                $vorige = $hoofdstuk['index'] -1;
                if ($vorige < 0){
                    // Geen pijl
                } else {
                    echo "<a href='?id=$vorige'> <img src = 'view/assets/rozePijl.png' alt = 'Vorig hoofdstuk'></a> "; // Volgende link
                }
                ?>
            </div>

            <!-- Menu -->
            <div id = "nav-iconn1" onclick = "openNav()">
                <span style = "cursor: pointer;color: #e6007e"></span>
                <span style = "cursor: pointer;color: #e6007e"></span>
                <span style = "cursor: pointer;color: #e6007e"></span>
            </div>

            <!-- Menu V2 -->
            <div id="myNav" class="overlay">
                <a href="javascript:void(0)" class="closebtn menu" onclick="closeNav()">&times;</a>
                <div class="overlay-content">
                    <a class = "menu" href="view/html/start.html">HOME</a>
                    <a class = "menu" href="view/html/chapters.html"">HOOFDSTUKKEN</a>
                    <a class = "menu" onclick="info()">INFORMATIE</a>
                </div>
            </div>

<!--            <span style="font-size:30px;color:#e6007e;cursor:pointer" onclick="openNav()">&#9776;</span>        -->

            <!-- Audio player -->
            <div class = "">
                <audio controls autoplay class="audio-1 audio">
                    <source src="view/audio/<?= $hoofdstuk["audio"]; ?>" type="audio/mpeg">
                    Your browser does not support the audio element.
                </audio>
            </div>

            <!-- SCRIPT -->
            <script>

                // MENU
                function openNav() {
                    document.getElementById("myNav").style.width = "100%";
                }

                function closeNav() {
                    document.getElementById("myNav").style.width = "0%";
                }

            </script>
        </div>
    </body>
</html>