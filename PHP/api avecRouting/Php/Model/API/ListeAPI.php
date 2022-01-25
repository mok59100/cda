<?php
//fichier pour appel AJAX
echo json_encode(MarquesManager::getList(true));
