# JSPuppg1
Webbutveckling med java uppgift 1

*Diskussion*
Efter lite läsning så försökte jag lösa uppgiften med servlets, men efter många timmar och några grå hår så fick jag det aldrig att riktigt fungera. Den skickade vidare till andra sidor beroende på vad man valde i dropdown-menyn men aldrig till en .jsp-sida som faktiskt fanns. Oberoende av vad jag använde för logik fick jag det att faktiskt skicka till de faktiska sidorna. Ändrade på adresserna i sendRedirect() men det ändrade aldrig sig som jag ville. Antar att servleten inte lästes in korrekt. Bifogar FormData.java för att visa hur jag tänkte

*Grunduppgift*

I grunduppgiften tar recieveinfo.jsp värdet på attribut i input på first name, last name och age som finns i index.jsp och printar den sedan på recieveinfo.jsp. Här använde jag taglib för det var inte nödvändigt att ha servlet. Använde jsp:include för att ha med footer som använde lite styling för att hamna längst ner på sidan på varje hemsida. Använde include file för att ha med headern.

*Bonusuppgift*

Bonusuppgiften försökte som jag beskrev i Diskussion med servlet eftersom jag läste att det var bättre och även rekommenderat av Oracle att använda. Jag fick dock den aldrig att fungera. Jag använde taglib för att göra uppgiften till slut. 
Använde getParameter() för att ta fram värdet på name i min dropdown-meny. Problem uppstod i och med värdet på name blev null. Detta löstes genom att göra som det står i index.jsp linje 40. Detta sätt att skriva på fick jag hjälp med av en klasskamrat. Försökte använda en try/catch, en if-loop som kollar om värdet på name == null och sedan kör switch men inget fungerade.
Linje 40 sätter startsidan till index.jsp (det var den som kraschade om man inte skrev som beskrevs i förra stycket, det som kollades i switch-statement var alltid null och det gillades inte) och sedan kan man navigera på sidorna genom att välja i dropdown-menyn. Använde mig av sendRedirect för att svara på requesten från användaren.
