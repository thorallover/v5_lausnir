<meta charset="utf-8" />
<?php
//hérna eru breyturnar skilgreindar sem verða notaðar
	$nafn = $_POST['nafn'];
	$heimilisfang = $_POST['heimilisfang'];
	$email = $_POST['email'];
	$simi = $_POST['simi'];
	$verd = 0;

	print "<h3>Takk fyrir að panta hjá okkur - PIZZUNNI </h3>";
	print "<h4>Upplýsingar um viðskiptavin </h4>";
	print "Nafnið: $nafn<br>";
	print "heimilisfang: $heimilisfang<br> ";
	print "Netfang: $email<br>";
	print "Símanúmer: $simi<br>";

//hérna er verið að athuga hvort notandi valdi einhverja stærð 
//ef enginn stærð ef valin viljum við ekki bara leyfa notandanum að kaupa álegg
	if(!isset($_POST['staerd'])){
		echo "Hefur ekki valið neina stærð á pizzunni";
	}
	else{ //ef notandi valdi stærð þá förum við hingað inn
		$pizzastaerd = $_POST['staerd'];
		if($pizzastaerd == "9"){
			$verd = 1000;
			echo "Hefur valið 9 tommu: verð $verd kr.<br>";
		}
		if($pizzastaerd == "12"){
			echo "Hefur valið 12 tommu: verð 1500 kr.<br>";
			$verd = 1500;	
		}
		if($pizzastaerd =="18"){
			echo "Hefur valið 18 tommu: verð 2000 kr.<br>";
			$verd = 2000;
		}

		//Athuga hvort notandi valdi álegg eða ekki
		if(isset($_POST['alegg'])){
			$alegg = $_POST['alegg'];
		}
		else{
			$alegg ="";
		}
		//ef notandi valdi ekkert álegg þá er farið hérna inn
		if(empty($alegg)){
			print "Valdir ekkert álegg<br>"; 
		}
		else //Annars er farið hingað inn
		{ 
			$fjoldialeggs = count($alegg);
			print "Fjöldi áleggs: $fjoldialeggs<br>";
			$verdAlegg = $fjoldialeggs*200;
			print "Þau kosta: $verdAlegg kr. <br>";
			print "Valdir þessi álegg:<br>";
			foreach ($alegg as $legg) {
				print "$legg<br> ";
			}
		}

		$heildarverd = $verdAlegg + $verd;
		print "<h4>Verð á pizzunni: $heildarverd</h4>";
		$medVSK =  $heildarverd*1.25;
		print "<h4> Heildarverð á pizzunni með vsk: $medVSK</h4>";
		
		print "Takk fyrir viðskiptin";
	}


?>