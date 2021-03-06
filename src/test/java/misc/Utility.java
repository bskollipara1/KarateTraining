package misc;


import java.io.File;
import java.nio.file.Files;


/**
 * Karate Utility methods
 */
public class Utility {


    public static void writeToFile(String filename, String content)
    {
        try {
            File f = new File(filename);
            Files.write(f.toPath(), content.getBytes());
            System.out.println("File ==> " + f.getAbsolutePath());
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }






}
