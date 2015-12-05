#!/bin/bash

# the idea behind this slide show comes from
# https://css-tricks.com/snippets/jquery/simple-auto-playing-slideshow/

cat <<-ENDOFHEADER
<html>
<head>
<title>CrossChx Employees</title>
<script src='jquery-2.1.4.min.js'></script>
<script src='slideshow.js'></script>
<link rel='stylesheet' href='slideshow.css'>
</head>
<body>
<div id='slideshow'>
ENDOFHEADER

for file in $(ls *.jpg *.JPG *.gif *.gif 2>/dev/null); do
    echo "<div><img src='${file}'></div>"
done

cat <<-ENDOFFOOTER
</div>
</body>
</html>
ENDOFFOOTER
