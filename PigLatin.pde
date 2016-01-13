import java.util.*;

public void setup() {
	String lines[] = loadStrings("LowellHymn.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
}

public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	//.equalsIgnoreCase(sWord);
	if(sWord.substring(0, 1).equals("a") || sWord.substring(0, 1).equals("e") || sWord.substring(0, 1).equals("i") || sWord.substring(0, 1).equals("o") || sWord.substring(0, 1).equals("u"))
	{
		return 1; //vowel
	}
	else if(sWord.substring(0, 2).equals("qu"))
	{
		return 2; //qu
	}
	// else if(sWord.substring(1, 2).equals("a") || sWord.substring(1, 2).equals("e") || sWord.substring(1, 2).equals("i") || sWord.substring(1, 2).equals("o") || sWord.substring(1, 2).equals("u"))
	// {
	// 	return 3; //second letter vowel
	// }
	// else if(sWord.substring(2, 3).equals("a") || sWord.substring(2, 3).equals("e") || sWord.substring(2, 3).equals("i") || sWord.substring(2, 3).equals("o") || sWord.substring(2, 3).equals("u"))
	// {
	// 	return 4; //third letter vowel
	// }
	// else if(sWord.substring(4, 5).equals("a") || sWord.substring(4, 5).equals("e") || sWord.substring(4, 5).equals("i") || sWord.substring(4, 5).equals("o") || sWord.substring(4, 5).equals("u"))
	// {
	// 	return 5; //fourth letter vowel
	// }
	for(int n = 1; n < sWord.length(); n ++)
	{
		if(sWord.substring(n, n+1).equals("a") || sWord.substring(n, n+1).equals("e") || sWord.substring(n, n+1).equals("i") || sWord.substring(n, n+1).equals("o") || sWord.substring(n, n+1).equals("u"))
		{
			return n+2;
		}
	}
	return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	else if(findFirstVowel(sWord) == 1) //vowel
	{
		return sWord + "way";
	}
	else if(findFirstVowel(sWord) == 2) //qu
	{
		return sWord.substring(2) + "quay";
	}
	//else if(findFirstVowel(sWord) == 3) //second letter vowel
	//{
	// 	return sWord.substring(1) + sWord.substring(0,1) + "ay";
	// }
	// else if(findFirstVowel(sWord) == 4) //two constants
	// {
	// 	return sWord.substring(2) + sWord.substring(0,2) + "ay";
	// }
	// else if(findFirstVowel(sWord) == 5) //two constants
	// {
	// 	return sWord.substring(3) + sWord.substring(0,3) + "ay";
	// }
	for(int i = 1; i < sWord.length(); i ++)
	{
		if(findFirstVowel(sWord) == i+2)
		{
			return sWord.substring(i) + sWord.substring(0, i) + "ay";
		}
	}
	//else
	{
		return "ERROR!";
	}
}
