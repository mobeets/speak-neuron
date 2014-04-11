## -*- coding: utf-8 -*-
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:og="http://ogp.me/ns#"
      xmlns:fb="https://www.facebook.com/2008/fbml">
<head>
    <meta name=viewport content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
    <meta property="og:image" content="http://speak-neuron.github.io/images/face.jpeg"/>
	<link rel="shortcut icon" type="image/x-icon" href="static/favicon.ico">
	<script>
	  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

	  ga('create', 'UA-49919505-1', 'speak-neuron.github.io');
	  ga('send', 'pageview');

	</script>
	<title>Speak Neuron - 2nd Edition</title>
</head>
<body>
	<div id="wrapper">
		<div id="sidebar" class="unselectable">
			<div id="nav-title">
				<h1><a href="">Speak Neuron</a></h1>
			</div>
			<div id="icons">
				<div id="home-icon" class="icon">
	    			<a href="" title="Home"><img id="home-icon-img" src="static/home-icon.png"/></a>
	    		</div>
	    		<div id="book-icon" class="icon">
	    			<a href="glossary" title="Glossary"><img id="book-icon-img" src="static/g-icon.png"/></a>
	    		</div>
	    		<div id="app-icon" class="icon">
	    			<a href="appendix" title="Appendix"><img id="app-icon-img" src="static/a-icon.png"/></a>
	    		</div>
	    	</div>
			<div id="nav-buttons">
		        <span id="prev"><< Prev</span> | 
		        <span id="cur">-1
		        </span>
		        of
		        <span id="total">${len(content)-2}</span> |
		        <span id="next">
		        	Next >>
		        </span>
		    </div>
		    <div id="nav-page">
		    	<h3><span id="begin">BEGIN!</span></h3>
		    </div>
	    </div>
		<div id="chapters">
			% for name, number, words in content:
			<div id="ch-${name}" class="chapter">
				<a name="${name}" class="anchor"></a><br>
				${words}
			</div>
			% endfor
		</div>
	</div>
	<script src="//code.jquery.com/jquery-1.10.2.min.js"></script>
	<script type="text/javascript" src="static/speak-neuron.js"></script>
</body>
</html>
<link href='static/speak-neuron.css' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Inconsolata' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic' rel='stylesheet' type='text/css'>
