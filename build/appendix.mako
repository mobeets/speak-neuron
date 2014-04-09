<html>
<head>
	<meta name=viewport content="width=device-width, initial-scale=1">
</head>
<body>
	<span id="home-link"><a href="http://www.jehosafet.com">the way out</a></span>
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
                <h3>Appendix</h3>
            </div>
	    </div>
		<div id="appendix">
			<br>
			<h2>Quarantined mathematics</h2>
			% for name, number, words in content:
				<a name="${name}" class="anchor"></a>
				${words}
			% endfor
		</div>
	</div>
	<script src="//code.jquery.com/jquery-1.10.2.min.js"></script>
	<script src="//code.jquery.com/mobile/1.4.2/jquery.mobile-1.4.2.min.js"></script>
	<script type="text/javascript" src="static/speak-neuron.js"></script>
</body>
</html>
<link href='static/speak-neuron.css' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Inconsolata' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic' rel='stylesheet' type='text/css'>    