/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author DELL-PC
 */
import java.io.*;
public class PANGRAM_STRING_JAVAquesC 
{
    public static void main(String args[])throws IOException
    {
        DataInputStream d=new DataInputStream(System.in);
        String str=d.readLine();
        System.out.println("The string is"+str);
        
        int a[]=new int[100];
        int x=0,p,c=0;
        for(int i=0;i<str.length();i++)
        {
            char ch=str.charAt(i);
             p=(int)ch;
            a[x++]=p;
            
        }
        if(x==26)
        {
        for(int i=0;i<x;i++)
        {
            if((a[i]>=97)&&(a[i]<=122))
            {
                c=c+1;
            }
           
        }
        if(c==26)
            System.out.println("pangram string");
        else
            System.out.println("not pangram string");
        
        // TODO code application logic here
    }
        else
        {
            System.out.println("it cant be pangram because length of the string should be 26 for least possiblity of pangram string");
    }
    }
    
}
                
        
  
