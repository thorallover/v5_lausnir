<!DOCTYPE html>
<html>
<head>
		<title>Pizzastaðurinn</title>
		<meta charset="utf-8" />
		<link href="" rel="stylesheet" />
</head>
<body>
   <form action="/process" method="post">
         <fieldset>
         <legend>Upplýsingar um notandann</legend>
         <!-- create four text boxes for user input -->
         <div>
            <label>Nafnið:</label>
            <input type = "text" name = "nafn" required="required">
         </div>
         <div>
            <label>Heimilisfang:</label>
            <input type = "text" name = "heimilisfang" required="required">
         </div>
         <div>
            <label>Netfang:</label>
            <input type = "email" name = "netfang" required="required">
         </div>
         <div>
            <label>Símanúmer:</label>
            <input type = "text" name = "simi" pattern="^(\+354 )?\d{3}[ -]?\d{4}$">
            <!-- líka hægt að nota type="number"
            <input type = "number" name = "simi" required="required">
            -->
         </div>
      </fieldset>


      <fieldset>
         <legend>Álegg</legend>
         <p>Hvert álegg kostar 200 kr.</p>

         <!--Hérna er verið að búa til checkbox og name="alegg[]" sem þýðir að þetta er array
         notum array því við erum að velja um fleira en eitt álegg value-ið sem fer á milli er
         skinka - ananas - pepperoni - aukaostur-->
         <label for="skinka">Skinka:</label>
         <input type="checkbox" id="skinka" name="alegg" value="skinka" checked="checked" ><br>

         <label for="ananas">Ananas:</label>
         <input type="checkbox" id="ananas" name="alegg" value="ananas"><br>

         <label for="pepperoni">Pepperoni:</label>
         <input type="checkbox" id="pepperoni" name="alegg" value="pepperoni"><br>

         <label for="ostur">Auka ostur:</label>
         <input type="checkbox" id="ostur" name="alegg" value="aukaostur">
      </fieldset>

      <fieldset>
         <legend>Pizzastærð</legend>
         <p>Hvað stærð má bjóða þér?</p>

         <!-- Býr til 3 radiobuttons sem heldur utan um stærðina. name ="staerd"
         og value sem fer yfir á næstu síðu er 9-10-18-->
            <label for="9tomma">9 tomma - 1.000 kr:</label>
            <input type = "radio" id="9tomma" name = "staerd" value = '9' checked="checked" /><br>

            <label for="12tomma">12 tomma - 1500 kr:</label>
            <input type = "radio" name = "staerd" value = '12'/><br>

            <label for="18tomma">18 tomma - 2000 kr:</label>
            <input type = "radio" name = "staerd" value = '18'/>
      </fieldset>
      <fieldset>
         <!-- Búum hérna til hnappinn fyrir pöntunina-->
         <legend>Pöntun</legend>
         <input type = "submit" name = "submit" value = "Panta" />
      </fieldset>
	</form>
</body>
</html>