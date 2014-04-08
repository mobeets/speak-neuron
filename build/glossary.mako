<html>
<head>
    <link href='static/speak-neuron.css' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Inconsolata' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic' rel='stylesheet' type='text/css'>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
</head>
<body>
	<span id="home-link"><a href="http://www.jehosafet.com">take me home</a></span>
	<div class="wrapper">
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
	<script type="text/javascript" src="static/speak-neuron.js"></script>
</body>
</html>
