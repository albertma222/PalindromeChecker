public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}

public boolean palindrome(String word)
{
  String r = new String();
  
  for(int i = 0; i < word.length(); i++) {
  
  	r = word.substring(i, i + 1) + r;
  }
    if(r.equals(word)) {
    
    return true;
  }
  return false;
}

public String reverse(String str)
{
    String snew = new String();
    String nSpace = new String();

    snew = snew.toLowerCase();

  	for(int i = 0; i < str.length(); i++) {

    if(Character.isSpace(str.charAt(i)) == false)
      nSpace = nSpace + str.substring(i, i + 1);
    	return nSpace;
  }
    return snew;
}


