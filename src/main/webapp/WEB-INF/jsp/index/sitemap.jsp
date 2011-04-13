<div id="sitemap">
<h2>Mapa do site</h2>
<ul>
	<li class="outside_list"><a href="<c:url value="/"/>">P�gina Inicial</a></li>
	<li class="outside_list"><a href="<c:url value="/grammar"/>">An�lise Gramatical</a></li>
	<li class="outside_list"><a href="<c:url value="/reports"/>">Problemas Reportados</a>
	<ul>
		<c:forEach items="${errorEntryList}" var="errorEntry">
			<li><a href="<c:url value="/reports/${errorEntry.id}"/>">Problema #${errorEntry.id}: ${errorEntry.text}</a></li>
		</c:forEach>
	</ul>
	</li>
	<li class="outside_list"><a href="<c:url value="/rules"/>">Regras</a>
	<ul>
		<c:forEach items="${ruleList}" var="rule">
			<li><a href="<c:url value="/rules/${rule.id}"/>">Regra #${rule.id}: ${rule.shortMessage}</a></li>
		</c:forEach>
	</ul>
	</li>
	<li class="outside_list"><a href="<c:url value="/dictionary/search"/>">L�xico</a></li>
	<li class="outside_list"><a href="<c:url value="/register"/>">Cadastro</a></li>
	<li class="outside_list"><a href="<c:url value="/stats"/>">Estat�sticas</a></li>
	<li class="outside_list"><a href="<c:url value="/about"/>">Sobre</a></li>
</ul>
<br />
</div>