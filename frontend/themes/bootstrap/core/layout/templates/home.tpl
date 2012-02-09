{include:core/layout/templates/head.tpl}

<body class="{$LANGUAGE}" itemscope itemtype="http://schema.org/WebPage">

	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
				<a class="brand" href="/">{$siteTitle}</a>
				<div class="nav-collapse">
					{$var|getnavigation:'page':0:1}
					{include:core/layout/templates/languages.tpl}
				</div><!--/.nav-collapse -->
			</div>
		</div>
	</div>
	
	
	<div class="container padding-top-60">
		
		{* Breadcrumb *}
		{*
			<div id="breadcrumb">
				{include:core/layout/templates/breadcrumb.tpl}
			</div>
		*}
		
		<noscript>
			<div class="alert alert-block">
			  <h4 class="alert-heading">{$lblEnableJavascript|ucfirst}</h4>
			  {$msgEnableJavascript}
			</div>
		</noscript>

		<!-- Main hero unit for a primary marketing message or call to action -->
		{* Main position *}
		{iteration:positionMain}
			{option:positionMain.blockIsHTML}
				<section class="hero-unit">
					{$positionMain.blockContent}
				</section>
			{/option:positionMain.blockIsHTML}
			{option:!positionMain.blockIsHTML}
				{$positionMain.blockContent}
			{/option:!positionMain.blockIsHTML}
		{/iteration:positionMain}
			
		<div class="row">
			<div class="span4">
				{* Left *}
				{iteration:positionLeft}
					{option:positionLeft.blockIsHTML}
						<section>
							{$positionLeft.blockContent}
						</section>
					{/option:positionLeft.blockIsHTML}
					{option:!positionLeft.blockIsHTML}
						{$positionLeft.blockContent}
					{/option:!positionLeft.blockIsHTML}
				{/iteration:positionLeft}
			</div>
			<div class="span4">
				{* Middle *}
				{iteration:positionMiddle}
					{option:positionMiddle.blockIsHTML}
						<section>
							{$positionMiddle.blockContent}
						</section>
					{/option:positionMiddle.blockIsHTML}
					{option:!positionMiddle.blockIsHTML}
						{$positionMiddle.blockContent}
					{/option:!positionMiddle.blockIsHTML}
				{/iteration:positionMiddle}
			</div>
			<div class="span4">
				{* Right *}
				{iteration:positionRight}
					{option:positionRight.blockIsHTML}
						<section>
							{$positionRight.blockContent}
						</section>
					{/option:positionRight.blockIsHTML}
					{option:!positionRight.blockIsHTML}
						{$positionRight.blockContent}
					{/option:!positionRight.blockIsHTML}
				{/iteration:positionRight}
			</div>
		</div>

		{include:core/layout/templates/footer.tpl}

	</div> <!-- /container -->

	{* General Javascript *}
	{iteration:jsFiles}
		<script src="{$jsFiles.file}"></script>
	{/iteration:jsFiles}

	{* Theme specific Javascript *}
	<script src="{$THEME_URL}/core/js/bootstrap.min.js"></script>
	<script src="{$THEME_URL}/core/js/twitter.js"></script>

	{* Site wide HTML *}
	{$siteHTMLFooter}
</body>
</html>