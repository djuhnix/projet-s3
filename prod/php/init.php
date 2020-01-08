<?php

declare(strict_types=1);
require_once 'autoload.inc.php';

$page = new WebPage('Webgestion master');

$page->appendToHead(
    <<<HTML
    <meta name="keywords" content=" Université de Reims Champagne-Ardenne: Se connecter sur le site" />
HTML
);

$page->appendCssUrl('css/animate.css');
$page->appendCssUrl('css/icomoon.css');
$page->appendCssUrl('css/flexslider.css');
$page->appendCssUrl('css/style.css');
$page->appendCssUrl('');

$page->appendJsUrl('js/jquery.min.js');
$page->appendJsUrl('js/jquery.flexslider-min.js');
$page->appendJsUrl('js/jquery.waypoints.min.js');
$page->appendJsUrl('js/jquery.easing.1.3.js');
$page->appendJsUrl('js/bootstrap.min.js');
$page->appendJsUrl('js/main.js');

$page->appendContent(
    <<<HTML
<div class="d-flex flex-row wrap">
        <div class="p-2 row-xs-12 col-lg-3 center">
            <div class="center">
            <div>
                <img src="img/logo_urca.png">
            </div>
            <h1>Acces aux pages de connexions </h1>
            <h2>Vous êtes : </h2>
            <a href="controller/form.php?u=e"><button type="submit" class="btn btn-primary input-form" id="loginbtn">Etudiant</button></a>
            <a href="controller/form.php?u=p"><button type="submit" class="btn btn-primary input-form" id="loginbtn">Professeur</button></a>
            <a href="controller/form.php?u=s"><button type="submit" class="btn btn-primary input-form" id="loginbtn">Intervenant professionel</button></a>
            <a href="controller/form.php?u=g"><button type="submit" class="btn btn-secondary input-form" id="loginbtn">Administration</button></a>

            <footer class="page-copyright">
            </footer>
            </div>
        </div>
        <div class="col-md-8 col-lg-10 float-left">
            <div id="fh5co-main float-left">
            <aside id="fh5co-hero" class="js-fullheight">
                <div class="flexslider js-fullheight">
                    <ul class="slides">
                    <li style="background-image: url(img/img-1.jpg);">
                        <div class="overlay"></div>
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-8 col-md-offset-2 text-center js-fullheight slider-text">
                                    <div class="slider-text-inner">
                                        <h1>Intuitive <strong></strong> is How Give We the User New Superpowers</h1>
                                        <h2>Free html5 templates Made by <a href="" target="_blank"></a></h2>
                                            <p><a class="btn btn-primary btn-demo popup-vimeo" href=""> Live Preview</a> <a class="btn btn-primary btn-learn">Learn More</a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li style="background-image: url(img/img-2.jpg);">
                        <div class="overlay"></div>
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-8 col-md-offset-2 text-center js-fullheight slider-text">
                                    <div class="slider-text-inner">
                                        <h1>We are Happy to Create Newest Modern Websites</h1>
                                            <h2>Free html5 templates Made by <a href="" target="_blank">freehtml5.co</a></h2>
                                            <p><a class="btn btn-primary btn-demo popup-vimeo" href="">  Live Preview</a> <a class="btn btn-primary btn-learn">Learn More</a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li style="background-image: url(img/img-3.jpg);">
                        <div class="overlay"></div>
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-8 col-md-offset-2 text-center js-fullheight slider-text">
                                    <div class="slider-text-inner">
                                        <h1>Download our Free HTML5 Bootstrap Template</h1>
                                            <h2>Free html5 templates Made by <a href="" target="_blank">freehtml5.co</a></h2>
                                            <p><a class="btn btn-primary btn-demo popup-vimeo" href="">Live Preview</a> <a class="btn btn-primary btn-learn">Learn More</i></a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    </ul>
                </div>
            </aside>
        </div>

    </div>
</div>
HTML
);
//echo $page->toHTML();

return $page;
