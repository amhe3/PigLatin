import java.util.*;

public void setup() {
	String lines[] = loadStrings("words.txt");
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
	if(sWord.substring(0, 1).equals("a") || sWord.substring(0, 1).equals("e") || sWord.substring(0, 1).equals("i") || sWord.substring(0, 1).equals("o") || sWord.substring(0, 1).equals("u"))
	{
		return 1; //vowel
	}
	else if(sWord.substring(0, 2).equals("qu"))
	{
		return 2; //qu
	}
	else if(sWord.substring(1, 2).equals("a") || sWord.substring(1, 2).equals("e") || sWord.substring(1, 2).equals("i") || sWord.substring(1, 2).equals("o") || sWord.substring(1, 2).equals("u"))
	{
		return 3; //second letter vowel
	}
	else
		return 4; //two constants
	//return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	// if(findFirstVowel(sWord) == -1)
	// {
	// 	return sWord + "ay";
	// }
	else if(findFirstVowel(sWord) == 1) //vowel
	{
		return sWord + "way";
	}
	else if(findFirstVowel(sWord) == 2) //qu
	{
		return sWord.substring(2) + "quay";
	}
	else if(findFirstVowel(sWord) == 3) //second letter vowel
	{
		return sWord.substring(1) + sWord.substring(0,1) + "ay";
	}
	else if(findFirstVowel(sWord) == 4) //two constants
	{
		return sWord.substring(2) + sWord.substring(0,2) + "ay";
	}
	else
	{
		return "ERROR!";
	}
}
