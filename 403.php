<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>403 - FORBIDDEN</title>
    <style>
        @import url(https://fonts.googleapis.com/css?family=Oswald);
        body, html {
            font-family: 'Oswald', sans-serif;
            overflow:hidden;
            height:100%;
            width:100%;
            background:#404853;
            color:#333;
            font-size:18px;
            background:#404853;
            
            -webkit-user-select: none;
        }
        video {
            position:absolute;
            opacity:0.25;
        }
        .container {
            position: absolute;
            top:50%;
            left:50%;
            margin:-250px 0 0 -250px;
            height:500px;
            text-align: center;
            width:500px;
        
        }
        i {
            font-style: normal;
            font-size:200px;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Prohibido <span>:(</span></h1>
        <p>Lo sentimos, pero usted no tiene permisos para ver estos recursos.</p>
        <i>403</i>
    </div>
    <a href="http://gianlucaguarini.com" target="_blank">
        <video autoplay="autoplay"  preload loop="loop">
            <source src="http://gianlucaguarini.com/videos/noise.mp4" />
            <source src="http://gianlucaguarini.com/videos/noise.webm" />
            <source src="http://gianlucaguarini.com/videos/noise.ogv" />
        </video>
    </a>
</div>

<script>
var parent = $(window),
$video = $("video");
// https://raw.github.com/brianreavis/jquery-fitToParent/master/jquery.fittoparent.js
var resize = function () {
    var o = {
        fitX: true,
        fitY: true,
        fillArea: false,
        allowEnlargement: true
    };
    
    parentWidth = parent.innerWidth(),
    parentHeight = parent.innerHeight();

    var originalSize = $video.data('original-size');
    if (!originalSize) {
        originalSize = {
            width:  1280,
            height: 720
        };
        $video.data('original-size', originalSize);
    }

    var currentSize = {
        width:  originalSize.width,
        height: originalSize.height
    };

    var scale = 1;
    if (o.fitX && (o.allowEnlargement || currentSize.width > parentWidth)) {
        scale = parentWidth / currentSize.width;
        currentSize.width = Math.floor(currentSize.width * scale);
        currentSize.height = Math.floor(currentSize.height * scale);
    }

    if (o.fitY) {
        var doScale = currentSize.height > parentHeight;
        var newScale = parentHeight / currentSize.height;
        if (o.fillArea) doScale = currentSize.height < parentHeight;
        if (o.allowEnlargement) doScale = newScale > scale;
        if (doScale) {
            currentSize.width = Math.floor(currentSize.width * newScale);
            currentSize.height = Math.floor(currentSize.height * newScale);
            scale = newScale;
        }
    }

    $video.css({
        top: Math.round((parentHeight - currentSize.height) / 2),
        left: Math.round((parentWidth - currentSize.width) / 2),
        width: currentSize.width,
        height: currentSize.height,
        
    });
}


$(window).on("resize",resize);

resize();
</script>
</body>
</html>