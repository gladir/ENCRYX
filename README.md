# ENCRYX
Liste de commandes sur l'encryption et la décryption écrit en Pascal.

<h2>Liste des fichiers</h2>

Voici la liste des différents fichiers proposés dans ENCRYX :

<table>
	<tr>
		<th>Nom</th>
		<th>Description</th>	
	</tr>
	<tr>
		<td><b>CESAR.PAS</b></td>
		<td>Cette commande permet d'encrypter ou décrypter une chaîne de caractères selon la méthode du chiffre de César.</td>
	</tr>
	<tr>
		<td><b>MD5.PAS</b></td>
		<td>Cette commande permet d'appliquer un algorithme MD5 sur la chaine de caractères spécifiés.</td>
	</tr>
	<tr>
		<td><b>ROT13.PAS</b></td>
		<td>Cette commande permet d'effectuer une rotation de 13 lettres de l'alphabet latin.</td>
	</tr>
	<tr>
			<td><b>ROT13C5D.PAS</b></td>
			<td>Cette commande permet d'effectuer une rotation de 13 lettres de l'alphabet latin et une rotation de 5 chiffres sur les chiffres.</td>
		</tr>
    <tr>
			<td><b>ROT13PAS.PAS</b></td>
			<td>Cette commande permet d'obscurcir le code Pascal en le transformant avec l'algorithme rot13 sur les identificateurs du programme.</td>
		</tr>
	<tr>
		<td><b>UUDECODE.PAS</b></td>
		<td>Cette commande permet d'effectuer le décodage d'un fichier binaire de format UUE.</td>
	</tr>
	<tr>
		<td><b>UUENCODE.PAS</b></td>
		<td>Cette commande permet d'effectuer un encodage d'un fichier binaire.</td>
	</tr>
</table>

<h2>Compilation</h2>
	
Les fichiers Pascal n'ont aucune dépendances, il suffit de télécharger le fichier désiré et de le compiler avec Free Pascal avec la syntaxe de commande  :

<pre><b>fpc</b> <i>LEFICHIER.PAS</i></pre>
	
Sinon, vous pouvez également le compiler avec le Turbo Pascal à l'aide de la syntaxe de commande suivante :	

<pre><b>tpc</b> <i>LEFICHIER.PAS</i></pre>
	
Par exemple, si vous voulez compiler CESAR.PAS, vous devrez tapez la commande suivante :

<pre><b>fpc</b> CESAR.PAS</pre>

<h2>Licence</h2>
<ul>
 <li>Le code source est publié sous la licence <a href="https://github.com/gladir/ENCRYX/blob/main/LICENSE">MIT</a>.</li>
 <li>Le paquet original est publié sous la licence <a href="https://github.com/gladir/ENCRYX/blob/main/LICENSE">MIT</a>.</li>
</ul>

