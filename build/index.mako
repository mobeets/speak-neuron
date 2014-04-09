## -*- coding: utf-8 -*-
<html>
<head>
    <meta name=viewport content="width=715, initial-scale=1">
</head>
<body>
	<span id="home-link"><a href="http://www.jehosafet.com">the way out</a></span>
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
	    		<div id="link-icon" class="icon">
	    			<a href="" title="Link to current chapter"><img id="link-icon-img" src="static/link-icon.png"/></a>
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
	<script src="//code.jquery.com/mobile/1.4.2/jquery.mobile-1.4.2.min.js"></script>
	<script type="text/javascript" src="static/speak-neuron.js"></script>
</body>
</html>
<link href='static/speak-neuron.css' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Inconsolata' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic' rel='stylesheet' type='text/css'>
