/*
*                  *
**                **
***              ***
****            ****
*****          *****
******        ******
*******      *******
********    ********
*********  *********
********************
*/
    string aa = string.Empty;
            for (int i = 0; i < 10; i++)
            {
                int ii = i;
                var space = 0;
                string stars = "";
                for (int j = i; j >= 0; j--)
                {


                    for (; ii >= 0; ii--)
                    {
                        stars += "*";
                    }
                    space = 10 - i;

                }
                aa += string.Format("{0,-10:X2}", stars) + string.Format("{0,10:X2}", stars);
                aa += "\r\n";
            } 
            Console.WriteLine(aa);
