<script src="<c:url value='/js/jquery.twitter.search.js' />" type="text/javascript" ></script>
<script src="<c:url value='/js/jquery.zrssfeed.js' />" type="text/javascript" ></script>

<script type="text/javascript"><!--//--><![CDATA[//><!--

	$(document).ready(function(){

		$('#twitter').twitterSearch({
			term: 'cogroo',
			title: '@cogroo',
			avatar:  false, 
			titleLink: 'http://twitter.com/cogroo',
			birdLink: 'http://twitter.com/cogroo',
			css: {
				img: { width: '30px', height: '30px' }
				}
			}); 
		
		$('#news').rssfeed('http://ccsl.ime.usp.br/cogroo/pt-br/rss.xml', {
		    limit: 10,
		    content: true,
		    snippet: false,
		    errormsg: 'N�o foi poss�vel abrir not�cias.'
		  });
	});
	
//--><!]]>

</script>
		
		<div id="twitter" class="twitter"></div>
	
		<h1>Not�cias</h1>
		
		<div id="newswrapper">
			<div id="news"></div>
		</div> 