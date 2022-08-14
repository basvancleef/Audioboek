<?php

function initialiseerHoofdstuk(){
        try {
            $pdo = new PDO('mysql:host=localhost;dbname=audioboek;charset=UTF8'
            ,'root','',[PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]);
            if ($pdo) {
                //echo "Succesvol verbonden met Audioboek!";
            }
        } catch (PDOException $e) {
            echo $e->getMessage();
        }

        $query = "SELECT * FROM hoofdstuk";

        $collectie = $pdo->query($query);
        $hoofdstukken = $collectie->fetchAll(PDO::FETCH_ASSOC);
        $pdo=null;

//    Hoofdstuk info
//    $hoofdstuk[0]["student"] = "view/images/students/student1.png";
//    $hoofdstuk[0]["titel"] = "JONAS EN ROSA";
//    $hoofdstuk[0]["lezer"] = "MANON DE LEEUW";
//    $hoofdstuk[0]["chapterIMG"] = "view/images/chapters/afbeeldingHoofdstuk1.png";
//    $hoofdstuk[0]["audio"] = "view/audio/Melissa_Nahumurry_H.Vertrek_blz.12t-m15.mp3";
//    $hoofdstuk[0]["index"] = 0;
//
//    $hoofdstuk[1]["student"] = "view/images/students/student1.png";
//    $hoofdstuk[1]["titel"] = "JONAS EN ROSA 2";
//    $hoofdstuk[1]["lezer"] = "MANON DE LEEUW 2";
//    $hoofdstuk[1]["chapterIMG"] = "view/images/chapters/afbeeldingHoofdstuk2.png";
//    $hoofdstuk[1]["audio"] = "view/audio/Melissa_Nahumurry_H.Vertrek_blz.12t-m15.mp3";
//    $hoofdstuk[1]["index"] = 1;
//
//    $hoofdstuk[2]["student"] = "view/images/students/student1.png";
//    $hoofdstuk[2]["titel"] = "TITEL H2";
//    $hoofdstuk[2]["lezer"] = "LEZER H2";
//    $hoofdstuk[2]["chapterIMG"] = "view/images/chapters/afbeeldingHoofdstuk2.png";
//    $hoofdstuk[2]["audio"] = "";
//    $hoofdstuk[2]["index"] = 2;
//
//    $hoofdstuk[3]["student"] = "";
//    $hoofdstuk[3]["titel"] = "";
//    $hoofdstuk[3]["lezer"] = "";
//    $hoofdstuk[3]["chapterIMG"] = "";
//    $hoofdstuk[3]["audio"] = "";
//    $hoofdstuk[3]["index"] = 3;
//
//    $hoofdstuk[4]["student"] = "";
//    $hoofdstuk[4]["titel"] = "";
//    $hoofdstuk[4]["lezer"] = "";
//    $hoofdstuk[4]["chapterIMG"] = "";
//    $hoofdstuk[4]["audio"] = "";
//    $hoofdstuk[4]["index"] = 4;
//
//    $hoofdstuk[5]["student"] = "";
//    $hoofdstuk[5]["titel"] = "";
//    $hoofdstuk[5]["lezer"] = "";
//    $hoofdstuk[5]["chapterIMG"] = "";
//    $hoofdstuk[5]["audio"] = "";
//    $hoofdstuk[5]["index"] = 5;
    return $hoofdstukken;
}

function getHoofdstuk($index) {
    $hfd = initialiseerHoofdstuk();

    if ($index < 0) {
        $index = 0;
    }
    return $hfd[$index];
}
