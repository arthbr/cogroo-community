
<div id="about">
	<div class="yellow_box">
		<h1>Desenvolvimento</h1>
		<p>
			Que tal colaborar no desenvolvimento do CoGrOO Comunidade? Conhe�a
			aqui como obter o <a href="#src">c�digo fonte</a>, como <a
				href="#comp">compilar</a> e <a href="#begin">por onde come�ar</a>.
		</p>
	</div>

	<div class="white_box">
		<h2>
			<a name="src">C�digo Fonte</a>
		</h2>
		<div class="dashed_white">
			<h2>Acesso Web</h2>
			<p>
				Navegue pelo c�digo fonte usando o <a
					href="http://cogroo.svn.sourceforge.net/viewvc/cogroo/cogroo-community">ViewVC</a>
				pelo navegador.
			</p>
		</div>
		<div class="dashed_white">
			<h2>Reposit�rio</h2>
			<p>
				O reposit�rio SVN do CoGrOO Comunidade est� localizado em<br>
				<code>https://cogroo.svn.sourceforge.net/svnroot/cogroo/cogroo-community/trunk</code>
				.
			</p>
		</div>
		<div class="dashed_white">
			<h2>Checkout SVN</h2>
			<p>Para obter o c�digo fonte mais recente:</p>
			<div class="white_box">
				<code>svn co
					https://cogroo.svn.sourceforge.net/svnroot/cogroo/cogroo-community/trunk
					cogroo-community</code>
			</div>
			<p>Para obter uma tag ou branch:</p>
			<div class="white_box">
				<code>svn co
					https://cogroo.svn.sourceforge.net/svnroot/cogroo/cogroo-community/tags/(nome
					da tag)</code>
				<code>svn co
					https://cogroo.svn.sourceforge.net/svnroot/cogroo/cogroo-community/branches/(nome
					do branch)</code>
			</div>
		</div>
	</div>


	<div class="white_box">
		<h2>
			<a name="comp">Compilando os fontes</a>
		</h2>
		<div class="dashed_white">
			<h2>Pr�-requisitos</h2>
			<p>
				Pelo menos <a
					href="http://www.oracle.com/technetwork/java/javase/overview/index.html">JDK
					5</a> para compilar e executar o projeto.
			</p>
			<p>
				Pelo menos <a href="http://maven.apache.org/">Maven 2</a> para
				compilar os fontes e empacotar o projeto.
			</p>
		</div>
		<div class="dashed_white">
			<h2>Procedimento para compila��o</h2>
			<p>O build do CoGrOO Comunidade pode ser feito por um checkout do
				SVN. Aqui mostraremos como fazer da vers�o mais atual do trunk.</p>
			<p>Depois do primeiro checkout � necess�rio fazer um build
				completo:</p>
			<div class="white_box">
				<code>cd cogroo-community</code>
				<br>
				<code>mvn install -Dmaven.test.skip</code>
				<br>
			</div>
			<p>
				* o argumento -Dmaven.test.skip � necess�rio porque os testes est�o
				falhando (<a href="http://ccsl.ime.usp.br/redmine/issues/272">refs
					#272</a>).
			</p>
			<p>O build pode falhar. Neste caso relate no f�rum do projeto.</p>
		</div>
		<div class="dashed_white">
			<h2>Criando uma inst�ncia local do Comunidade</h2>
			<p>O CoGrOO Comunidade requer um servidor web e um banco de
				dados. No ambiente de produ��o usamos Tomcat + MySQL, mas no de
				desenvolvimento podemos usar Jetty + HSQLDB.</p>
			<p>O SVN deve ficar preparado para rodar no ambiente de produ��o.
				No ambiente local precisamos fazer algumas modifica��es.</p>
			<h3>Banco de Dados</h3>
			<p>
				Alternar do MySQL para o HSQLDB copiando o conte�do do arquivo
				<code>cogroo-community/src/main/resources/META-INF/persistence.xml_test</code>
				para
				<code>cogroo-community/src/main/resources/META-INF/persistence.xml</code>
				.
			<p>
			<h3>Configurando o cogroo.properties</h3>
			<p>
				Copie o arquivo
				<code>cogroo-community/cogroo.properties</code>
				para a pasta um n�vel acima, junto da pasta
				<code>cogroo-community</code>
				. Este arquivo armazena informa��es confidenciais do projeto, como
				as chaves OAuth. Como n�o � seguro divulgar estes dados o arquivo
				n�o est� completo e durante o funcionamento do portal podem haver
				exceptions decorrentes da falta dessas chaves.
			</p>
			<h3>Iniciando os servidores</h3>
			<p>Inicie o banco de dados HSQLDB com o comando:</p>
			<div class="white_box">
				<code>scripts/dbStart.sh</code>
			</div>
			<p>
				Crie um novo terminal, siga at� a pasta
				<code>cogroo-community</code>
				e inicie o Jetty:
			</p>
			<div class="white_box">
				<code>scripts/jettyStart.sh</code>
			</div>
			Finalmente voc� pode acessar a inst�ncia local do comunidade
			digitando a seguinte URL no seu navegador:

			<div class="white_box">
				<code>http://localhost:8080</code>
			</div>
		</div>
	</div>

	<div class="white_box">
		<h2>
			<a name="begin">Por onde come�ar</a>
		</h2>
		<div class="dashed_white">
			<h2>Redmine</h2>
			<p>
				Existem muitas tarefas em aberto no nosso <a
					href="http://ccsl.ime.usp.br/redmine/projects/cogroo-community/issues">reposit�rio
					de tarefas</a>. Voc� pode escolher uma que te agrade e submeter um
				patch. Caso tenha d�vidas, queira sugest�es ou acompanhamento em uma
				tarefa entre em contato pelo f�rum.
			</p>
		</div>
	</div>
</div>