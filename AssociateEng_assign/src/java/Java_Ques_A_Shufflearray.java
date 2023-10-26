/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author DELL-PC
 */
public class Java_Ques_A_Shufflearray 
{

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args)
    {
        
        int a[]={1,2,3,4,5,6,7};
        
        //1: arranging array in descending order using sorting 
        for(int i=0;i<7-1;i++)
        {
            for(int j=i+1;j<7;j++)
            {
                if(a[i]<a[j])
                {
                    int t=a[i];
                    a[i]=a[j];
                    a[j]=t;
                }
            }
        }
//        for(int i=0;i<7;i++)
//        {
//            System.out.print(a[i]+" ");
//        }
        //output:7654321
        //2:elements in ascending order after keeping 1st 2 and last 2 elements constant and changing the rest in ascending order
        for(int i=2;i<5-1;i++)
        {
            for(int j=i+1;j<5;j++)
                    {
                        if(a[i]>a[j])
                        {
                            int t=a[i];
                            a[i]=a[j];
                            a[j]=t;
                            
                        }
                    }
        }
//            for(int i=0;i<7;i++)
//        {
//            System.out.print(a[i]+" ");
//        }
//        }//output:7634521
        //3: dividing array into 2 parts...1st part containing 3 elements and 2nd containing 4 elements respectively and then sorting them in ascending order
        //part 1 sorting in ascending order
        for(int i=0;i<3-1;i++)
        {
            for(int j=i+1;j<3;j++)
                    {
                        if(a[i]>a[j])
                        {
                            int t=a[i];
                            a[i]=a[j];
                            a[j]=t;
                        }
                    }
        }
//       
        
        //output:3674521
        //4: arranging 2nd part of array in ascending order
        for(int i=3;i<7-1;i++)
        {
            for(int j=i+1;j<7;j++)
                    {
                        if(a[i]>a[j])
                        {
                            if(a[i]>a[j])
                            {
                                int t=a[i];
                                a[i]=a[j];
                                a[j]=t;
                            }
                        }
                }
            }
        
        //output:3671245
        //5:printing the resultant array 
        for(int i=0;i<2-1;i++)
        {
            for(int j=i+1;j<2;j++)
            {
                if(a[i]>a[j])
                {
                    int t=a[i];
                    a[i]=a[j];
                    a[j]=t;
                    
                }
            }
        }//:3671245
        for(int i=1;i<3-1;i++)
                {
                   for(int j=i+1;j<3;j++)
                           {
                               if(a[i]>a[j])
                               {
                                   int t=a[i];
                                   a[i]=a[j];
                                   a[j]=t;
                    
                }
                           }
                }//:3671245
        for(int i=2;i<4-1;i++)
                {
                    for(int j=i+1;j<4;j++)
                    {
                        if(a[i]>a[j])
                               {
                                   int t=a[i];
                                   a[i]=a[j];
                                   a[j]=t;
                    
                }
                        
                    }
                    
                }
        //:3617245
        for(int i=3;i<5-1;i++)
                {
                    for(int j=i+1;j<5;j++)
                    {
                        if(a[i]>a[j])
                               {
                                   int t=a[i];
                                   a[i]=a[j];
                                   a[j]=t;
                    
                }
                    }
                }
        //:3612745
        for(int i=4;i<6-1;i++)
                {
                    for(int j=i+1;j<6;j++)
                    {
                        if(a[i]>a[j])
                               {
                                   int t=a[i];
                                   a[i]=a[j];
                                   a[j]=t;
                    
                }
                    }
                }
        //:3612475
        for(int i=5;i<7-1;i++)
        {
            for(int j=i+1;j<7;j++)
            {
                if(a[i]>a[j])
                               {
                                   int t=a[i];
                                   a[i]=a[j];
                                   a[j]=t;
                    
                }
            }
        }
        
     for(int i=0;i<7;i++)
     {
         System.out.print(a[i]+" ");
     }
      //:3612457-final output
    }
    
}
