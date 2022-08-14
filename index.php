<?php

    require 'model/model.php';

    // URL filter
    $index = filter_input(INPUT_GET,'id', FILTER_VALIDATE_INT);
    if(isset($index)){
        // Model vragen om gegevens
        $hoofdstuk = getHoofdstuk($index);
    }
    else{
        $hoofdstuk = getHoofdstuk(0);
    }

    // Inladen van template
    include 'view/hoofdstukView.php';

?>