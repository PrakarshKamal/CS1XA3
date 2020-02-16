# CS1XA3 Project01 - <*kamalp*>


## Usage

**Execute** the script from project root with:
```
chmod +x CS1XA3/Project01/project_analyze.sh
./CS1XA3/Project01/project_analyze arg1 arg2 ...

```
The user should input **one** of the 3 arguments when the following prompt shows up:

*"Which feature do you fancy today: 6.4, 6.5, 6.6 ?"*
  * 4
  * 5
  * 6

>If the user inputs any other argument, an error message will pop-up and the file will run once again until an acceptable input is entered.

>The ```IFS``` value is set to ```\n``` to account for **whitespace** in file names or other situations where **whitespace** is an issue.

> The ```$absolute_path``` variable is responsible for accounting the fact that the user may not necessarily have a ```private``` directory created. The script will work wherever and however the user clones the repository.

-----------------------------------------------------------------

### Feature 6.4
  ~~ **Description**: This feature lists all **files** in the repository along with their sizes in a comprehensible readable format such as Bytes, KiloBytes(K), MegaBytes(M), GigaBytes(G). The files get listed in descending order of size. 

The ```du -a -h``` flags look for hidden files and puts them in a readable format. The ```grep -v '^-'``` grabs only **files**. The ```sort -r``` command implements the sorting of the files (largest to smallest)

  ~~ **Execution**: Execution of this feature occurs when the user inputs **4** as the argument.
   * The script outputs the list of **ALL** files in the repository.
   * Files get sorted in descending order of size
   * Size is represented in human readable format
   * An example list output of feature 6.4:

    1.5G       /home/kamalp/private/CS1XA3/a.jpeg
    736M       /home/kamalp/private/CS1XA3/b.py
    8.0K       /home/kamalp/private/CS1XA3/c.sh
    227       /home/kamalp/private/CS1XA3/d.txt

  ~~ **Reference**: [```du``` command](https://www.geeksforgeeks.org/du-command-linux-examples/)

>**Pitfall of this feature**: Upon running feature 6.4, the output list includes some hidden directories and the files in them. The output should not display directories however there is some error in the code script when piping the ```du``` ```grep``` and ```sort``` commands. This shortcoming will likely be fixed in Part 2 of Project01
-----------------------------------------------------------------

### Feature 6.5
  ~~ **Description**: This feature prompts the user for any **file extension**. After inputting a file extension, the command ```wc -l``` counts the total number of files (with that specific extension) present in the repository. 

The ```find``` command is used to locate **ALL** the files (hidden aswell!) in the repo with the given extension. If zero files are found or the user inputs an incorrect file extension, the script simply outputs *"No such file found!"*

  ~~ **Execution**: Execution of this feature occurs when the user inputs **5** as the argument. 
   * User is prompted for file extension
   * If no file found or incorrect extension entered, output is 
     None
   * Else, the total number of files with the given extension is 
     outputted. 
   * For example **.py** extension is entered. 

     ```The total number of files in repository if 9```

-----------------------------------------------------------------

### Feature 6.6
  ~~ **Description**: This feature prompts the user for any single **word** they would like to search for. The script looks for lines in .py (python files) that begin with a comment ```#```, include the **"word"** on those lines and echoes them into a a file **"Tag.log"** where **"Tag"** is the **"word"** inputted by the user. In the case where the **Tag.log** file is non-existent, the script creates it but overwrites if the log file is present. 

The ```find``` command searches for only **.py** files in the repository. The ```grep -E``` command matches the given **"word"** with the contents of the file(s). The ```grep -w``` only searches for the **"word"** and ignores any following words.

 ~~ **Execution**: Execution of this feature occurs when the user inputs **6** as the argument.
   * User is prompted for a single **"word"**
   * Create a log file **Tag.log** (**Tag** is the **word** 
     inputted) if file is non-existent.
   * Overwrite with ```>``` if file exists.
   * Searches for lines in **.py** files beginning with a comment 
     ```#``` including the **"word"** on the commented lines
   * Echoes the lines in **"Tag.log"**
   * Use ```cat``` to print the contents of the file(s)
   * Example output for Feature 6.6 (**"word"** is **"ABC"**):

      ```
      cat ABC.log

      /home/kamalp/private/CS1XA3/Project01/test1.py:#ABC HELLO WORLD!
      /home/kamalp/private/CS1XA3/Project01/test2.py:#ABC I <3 BASH!!!

--------------------------------------------------------------------
### Custom Feature 1 (Owner of Files)

 ~~ **Description**: This feature counts the total number of occurences of a **"word"** (prompted by the user) for files present in the repository and checks if any of the files are owned by the user editing the script.

--------------------------------------------------------------------

### Custom Feature 2 (Search & Destroy)
 ~~ **Description**: This feature finds all text files (i.e ending in ```.txt```) in the repository. For all lines in files ending with **Upper-case letters**, it removes the file(s) and counts how many file(s) were destroyed.

