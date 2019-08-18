import java.io.*; 
import java.lang.String;
import java.lang.Object;
import java.util.Arrays;
import java.util.*;

public class test 
{ 
  public static void main(String[] args)throws Exception 
  { 
  // We need to provide file path as the parameter: 
  // double backquote is to avoid compiler interpret words 
  // like \test as \t (ie. as a escape sequence) 
  File file = new File("AET_PIN_perlbench_SEP6.out"); 
  File file2 = new File("AET_PIN_DROP_10_perlbench_JAN21.out");
  File file3 = new File("AET_PIN_DROP_25_perlbench_SEP6.out");
  File file4 = new File("AET_PIN_DROP_40_perlbench_JAN21.out");
  File file5 = new File("AET_PIN_DROP_50_perlbench_SEP6.out");
  File file6 = new File("AET_PIN_DROP_60_perlbench_JAN21.out");
  File file7 = new File("AET_PIN_DROP_perlbench_SEP6.out");
  File file8 = new File("AET_PIN_DROP_90_perlbench_JAN21.out");


  BufferedReader br = new BufferedReader(new FileReader(file));
  BufferedReader br2 = new BufferedReader(new FileReader(file2));
  BufferedReader br3 = new BufferedReader(new FileReader(file3));
  BufferedReader br4 = new BufferedReader(new FileReader(file4));
  BufferedReader br5 = new BufferedReader(new FileReader(file5));
  BufferedReader br6 = new BufferedReader(new FileReader(file6));
  BufferedReader br7 = new BufferedReader(new FileReader(file7));
  BufferedReader br8 = new BufferedReader(new FileReader(file8)); 
  
  String st;
  int i = 0;
  int cut =200000/256; 


  ArrayList<Integer> data = new ArrayList<Integer>();
  ArrayList<Double> data1 = new ArrayList<Double>();
  ArrayList<Double> data2 = new ArrayList<Double>();
  ArrayList<Double> data3 = new ArrayList<Double>();
  ArrayList<Double> data4 = new ArrayList<Double>();
  ArrayList<Double> data5 = new ArrayList<Double>();
  ArrayList<Double> data6 = new ArrayList<Double>();
  ArrayList<Double> data7 = new ArrayList<Double>();
  ArrayList<Double> data8 = new ArrayList<Double>();
  //String [] words = new String[2];


  ArrayList<Double> out_data2 = new ArrayList<Double>();
  ArrayList<Double> out_data3 = new ArrayList<Double>();
  ArrayList<Double> out_data4 = new ArrayList<Double>();
  ArrayList<Double> out_data5 = new ArrayList<Double>();
  ArrayList<Double> out_data6 = new ArrayList<Double>();
  ArrayList<Double> out_data7 = new ArrayList<Double>();
  ArrayList<Double> out_data8 = new ArrayList<Double>();

  i = 0;
  while ((st = br.readLine()) != null) 
  {
  	if(i==0)
  	{
  		i++;
  		continue;
	}
  	//System.out.println("1\n");
  	String [] words = st.split(",");
  	//System.out.println(st);
    //System.out.println(words[0]+" "+words[1]);

    data.add(Integer.parseInt(words[0]));
    data1.add(Double.parseDouble(words[1])); 
    i++;
    if(i == cut) break;
   }


  i = 0;
  while ((st = br2.readLine()) != null) 
  {
  	if(i==0)
  	{
  		i++;
  		continue;
	}
  	//System.out.println("1\n");
  	String [] words = st.split(",");
  	//System.out.println(st);
    //System.out.println(words[0]+" "+words[1]);

    data2.add(Double.parseDouble(words[1])); 
    i++;
    if(i == cut) break;

   }

  i = 0;
  while ((st = br3.readLine()) != null) 
  {
  	if(i==0)
  	{
  		i++;
  		continue;
	}
  
  	String [] words = st.split(",");
  	data3.add(Double.parseDouble(words[1])); 
    i++;
    if(i == cut) break;
  }

  i = 0;
  while ((st = br4.readLine()) != null) 
  {
  	if(i==0)
  	{
  		i++;
  		continue;
	}
  
  	String [] words = st.split(",");
  	data4.add(Double.parseDouble(words[1])); 

    i++;
    if(i == cut) break; 	
   }

  i = 0;
  while ((st = br5.readLine()) != null) 
  {
  	if(i==0)
  	{
  		i++;
  		continue;
	}
  
  	String [] words = st.split(",");
  	data5.add(Double.parseDouble(words[1])); 

  	i++;
    if(i == cut) break;
   }

   i = 0;
   while ((st = br6.readLine()) != null) 
  {
  	if(i==0)
  	{
  		i++;
  		continue;
	}
  
  	String [] words = st.split(",");
  	data6.add(Double.parseDouble(words[1])); 
  	i++;
    if(i == cut) break;

   }

  i = 0;
  while ((st = br7.readLine()) != null) 
  {
  	if(i==0)
  	{
  		i++;
  		continue;
	}
  
  	String [] words = st.split(",");
  	data7.add(Double.parseDouble(words[1])); 
  	i++;
    if(i == cut) break;

   }


  i = 0;
  while ((st = br8.readLine()) != null) 
  {
  	if(i==0)
  	{
  		i++;
  		continue;
	}
  
  	String [] words = st.split(",");
  	data8.add(Double.parseDouble(words[1])); 
  	i++;
    if(i == cut) break;

   }

/*

   System.out.println(data3.get(1));
   System.out.println(data4.get(1));
   System.out.println(data5.get(1));
   System.out.println(data6.get(1));
   System.out.println(data7.get(1));
   System.out.println(data8.get(0));
*/

   /*
   System.out.println(data8.size());
   System.out.println(data7.size());
   System.out.println(data6.size());
   System.out.println(data5.size());
   System.out.println(data4.size());
   System.out.println(data3.size());
   System.out.println(data2.size());
   System.out.println(data1.size());
   System.out.println(data.size());
	*/


   int length = data.size();
   //System.out.println(length+"  "+(length/5)); 

   for(int j = 0; j < length/5; j++)
   {
   		//System.out.println(length*(1/5));
   		int mean = length/10;
   		//System.out.println(mean);
   		Double diff = data2.get(mean) - data1.get(mean); 
   		//System.out.println(data2.get(j));
   		out_data2.add(j,(data2.get(j) - diff)); 

   }

   for(int j = length/5; j < length/5*2; j++)
   {
   		//System.out.println(length*(1/5));
   		int mean = length/10*3;
   		//System.out.println(mean);
   		Double diff = data2.get(mean) - data1.get(mean); 
   		//System.out.println(data2.get(j));
   		out_data2.add(j,(data2.get(j) - diff)); 

   }
   
   for(int j = length/5*2; j < length/5*3; j++)
   {
   		//System.out.println(length*(1/5));
   		int mean = length/10*5;
   		//System.out.println(mean);
   		Double diff = data2.get(mean) - data1.get(mean); 
   		//System.out.println(data2.get(j));
   		out_data2.add(j,(data2.get(j) - diff)); 

   }

   for(int j = length/5*3; j < length/5*4; j++)
   {
   		//System.out.println(length*(1/5));
   		int mean = length/10*7;
   		//System.out.println(mean);
   		Double diff = data2.get(mean) - data1.get(mean); 
   		//System.out.println(data2.get(j));
   		out_data2.add(j,(data2.get(j) - diff)); 

   }

   for(int j = length/5*4; j < length; j++)
   {
   		//System.out.println(length*(1/5));
   		int mean = length/10*9;
   		//System.out.println(mean);
   		Double diff = data2.get(mean) - data1.get(mean); 
   		//System.out.println(data2.get(j));
   		out_data2.add(j,(data2.get(j) - diff)); 

   }


	System.out.println("cache_lines,MRC");
   for(int j = 0; j < length; j++)
   {
   		
   		System.out.println(data.get(j)+","+out_data2.get(j));

   }


  } 


} 