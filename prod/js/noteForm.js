function surligne(champ, erreur)
{
   if(erreur)
      champ.style.backgroundColor = "#fba";
   else
      champ.style.backgroundColor = "#27FE72";
}

function verifNote(champ)
{
   var note = parseInt(champ.value);
   if(isNaN(note) || note < 0 || note > 20)
   {
      surligne(champ, true);
      return false;
   }
   else
   {
      surligne(champ, false);
      return true;
   }
}
