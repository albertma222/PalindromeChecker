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
	String nW = new String(fin(word));
    String rW = new String(rev(nW));

    if(rW.equals(nW))
        return true;

    return false;
}

public String rev(String str) {

    String sn = new String();

    for(int i = str.length(); i > 0; i--)
        sn = sn + str.substring(i - 1, i);

    return sn;

}

public String fin(String str)
{
    String snew = new String(str.toLowerCase());
    String ans = new String("");

 for(int i = 0; i < snew.length(); i++) {

        char a = snew.charAt(i);
        String t = snew.substring(i, i+1);

        if(Character.isLetter(a) == true)
            ans = ans + t;
    }
    return ans;
}


