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
	int pos;
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	//.equalsIgnoreCase(sWord);
	// if(sWord.substring(0, 1).equals("a") || sWord.substring(0, 1).equals("e") || sWord.substring(0, 1).equals("i") || sWord.substring(0, 1).equals("o") || sWord.substring(0, 1).equals("u"))
	// {
	// 	return 1; //vowel
	// }
	// else if(sWord.substring(0, 2).equals("qu"))
	// {
	// 	return 2; //qu
	// }
	// for(int n = 1; n < sWord.length(); n ++) //find constant
	// {
	// 	if(sWord.substring(n, n+1).equals("a") || sWord.substring(n, n+1).equals("e") || sWord.substring(n, n+1).equals("i") || sWord.substring(n, n+1).equals("o") || sWord.substring(n, n+1).equals("u"))
	// 	{
	// 		return n+2;
	// 	}
	// }
	for(int i = 0; i < sWord.length(); i++)
	{
		if(sWord.substring(i, i+1).equals(" "))
		{
			int num = i + 1;
			if(sWord.substring(num, num+1).equals("a") || sWord.substring(num, num+1).equals("e") || sWord.substring(num, num+1).equals("i") || sWord.substring(num, num+1).equals("o") || sWord.substring(num, num+1).equals("u"))
			{
				return 1; //vowel
				pos = num;
			}
			else if(sWord.substring(num, num+2).equals("qu"))
			{
				return 2; //qu
				pos = num;
			}
			for(int n = 1; n < sWord.length(); n ++)
			{
				if(sWord.substring(n, n+1).equals("a") || sWord.substring(n, n+1).equals("e") || sWord.substring(n, n+1).equals("i") || sWord.substring(n, n+1).equals("o") || sWord.substring(n, n+1).equals("u"))
				{
					return n+2;
					pos = n;
				}
			}
		}
	}
	return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	// if(findFirstVowel(sWord) == -1)
	// {
	// 	return sWord + "ay";
	// }
	// else if(findFirstVowel(sWord) == 1) //vowel
	// {
	// 	return sWord + "way";
	// }
	// else if(findFirstVowel(sWord) == 2) //qu
	// {
	// 	return sWord.substring(2) + "quay";
	// }
	// for(int i = 1; i < sWord.length(); i ++)
	// {
	// 	if(findFirstVowel(sWord) == i+2)
	// 	{
	// 		return sWord.substring(i) + sWord.substring(0, i) + "ay";
	// 	}
	// }
	// return "ERROR!";

	if(findFirstVowel(sWord) == -1)
	{
		return sWord.substring(pos, pos + 1) + "ay";
	}
	else if(findFirstVowel(sWord) == 1) //vowel
	{
		return sWord + "way";
	}
	else if(findFirstVowel(sWord) == 2) //qu
	{
		return sWord.substring(2) + "quay";
	}
	for(int i = 1; i < sWord.length(); i ++)
	{
		if(findFirstVowel(sWord) == i+2)
		{
			return sWord.substring(i) + sWord.substring(0, i) + "ay";
		}
	}
	return "ERROR!";
}
