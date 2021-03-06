<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>JBake - Java based open source static site/blog generator</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="JBake is a Java based, open source, static site/blog generator for developers." />
    <meta name="author" content="Jonathan Bullock" />
    <meta name="keywords" content="java, baking, open source, generator, web site" />
    <meta name="google-site-verification" content="Fy5-c09PlgYztOz2_xH6-FsoQ7K0jpprkk4cyJHCRh8" />
    <meta name="generator" content="JBake"/>
    <meta name="generation" content="${published_date?datetime}" />

	<link rel="alternate" type="application/rss+xml" title="RSS" href="/${config.feed_file}" />
	<link rel="shortcut icon" href="/favicon.ico" />

    <!-- Le styles -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/asciidoctor.css" rel="stylesheet">
    <link href="/css/bootstrap-responsive.min.css" rel="stylesheet">
    <link href="/css/prettify.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 20px;
        padding-bottom: 40px;
      }

      /* Custom container */
      .container-narrow {
        margin: 0 auto;
        max-width: 700px;
      }
      .container-narrow > hr {
        margin: 30px 0;
      }

      /* Main marketing message and sign up button */
      .jumbotron {
        margin: 60px 0;
        text-align: center;
      }
      .jumbotron h1 {
        font-size: 72px;
        line-height: 1;
      }
      .jumbotron .btn {
        font-size: 21px;
        padding: 14px 24px;
      }

      /* Supporting marketing content */
      .marketing {
        margin: 30px 0;
      }
      .marketing p + h4 {
        margin-top: 28px;
      }

      /*.navbar .btn-navbar {
      	float: left;
      }*/
      .navbar-fixed-top .container {
        width: 700px;
      }
      @media (max-width: 979px) {
      .navbar-fixed-top .container {
       width: auto;
       }
    </style>

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="/js/html5shiv.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <!--<link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
    <link rel="shortcut icon" href="../assets/ico/favicon.png">-->
  </head>
  <body onload="prettyPrint()">
    <div class="container-narrow">
