<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:og="http://ogp.me/ns#"
      xmlns:fb="https://www.facebook.com/2008/fbml">
<head>
    <meta name=viewport content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
    <meta property="og:image" content="http://speak-neuron.github.io/images/face.jpeg"/>
    <link rel="shortcut icon" type="image/x-icon" href="static/favicon.ico">
    <title>Speak Neuron - 2nd Edition</title>
</head>
<body>
	<div id="wrapper">
		<div id="sidebar" class="unselectable">
			<div id="nav-title">
				<h1><a href="index">Speak Neuron</a></h1>
			</div>
			<div id="icons">
				<div id="home-icon" class="icon">
	    			<a href="index" title="Home"><img id="home-icon-img" src="static/home-icon.png"/></a>
	    		</div>
	    		<div id="book-icon" class="icon">
	    			<a href="glossary" title="Glossary"><img id="book-icon-img" src="static/g-icon.png"/></a>
	    		</div>
	    		<div id="app-icon" class="icon">
	    			<a href="appendix" title="Appendix"><img id="app-icon-img" src="static/a-icon.png"/></a>
	    		</div>
	    	</div>
	    	<div id="nav-page">
                <h3>Glossary</h3>
            </div>
	    </div>
		<div id="glossary">
			<br>
		% for name, number, words in content:
			<a name="${name}" class="anchor"></a>
            <div class="term">
                <p>
                    <a class="term-inner">${name.replace('-', ' ')}</a>:
                </p>
            </div>
            <div class="defn">
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
