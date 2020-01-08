<?php

require_once 'MyPDO.template.php';

MyPDO::setConfiguration(
    'mysql:host=mysql;dbname=cutron01_music;charset=utf8',
    'web',
    'web');
