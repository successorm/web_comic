<?php

/*
 * Admin Page
 * 
 * Function calls for uploading/editing comics
 * Function calls for uploading/editing news
 * Function calls for uploading/editing about pages
 * Function calls for uploading/editing extras?
 * 
 * TODO: Test News Add & Comic Add
 */

/****************************************************************
 * Inclusions & Database Connecting
 ****************************************************************/
<<<<<<< HEAD
    include_once('modules/modules.php');
    include_once('database/db_object.php');  
    include_once('queries/get_comics.php');   // Sometimes Causes 500 error

    $con = mysql_connect("localhost","user","pass");
    if(!$con) die('Could not connect: ' . mysql_error());
    mysql_select_db("webcomic",$con);
/****************************************************************
 * Start Web Page! Load Modules
 ****************************************************************/ 
    display_start();    // No Span
    display_header();   // Span should be 24, the entire page
    display_menu();     // if horizontal then this should also span 24
=======
include_once('modules/modules.php');
include_once('database/db_object.php');  
include_once('queries/get_comics.php');   // causing 500 error, had error in code

$con = mysql_connect("localhost","user","pass");
    if(!$con) die('Could not connect: ' . mysql_error());
    mysql_select_db("webcomic",$con);
    
/****************************************************************
 * Start Web Page! Load Modules
 ****************************************************************/ 

display_start();    // No Span
display_header();   // Span should be 24, the entire page
display_menu();     // if horizontal then this should also span 24


>>>>>>> 5d6a912f6699a2f2828bb760701ee6f4590b3c59
/****************************************************************
 * Unique Page Info
 ****************************************************************/
?>
    <div id="add_news" class="span-10"> 
        <form action="add/add_news.php" method="POST">
            <h3>Add News: </h3>
            
            <h4>Title:</h4>
            <input type="text" id="news_title"/>
            
            <h4>Article:</h4>
            <textarea id="news_article"></textarea>
            <input type="submit" value="Submit"/>
        </form> <br/> <br/>
    </div>

    <div id="add_comic" class="span-10" style="float:right">
        <form action="add/add_comic.php" method="POST">
            <h3>Add Comic: </h3>
            
            <h4>Add to Existing Book, or Create New?</h4>
            <input type="radio" name="book_name" value="yes"> New Book </input>
            <input type="text" name="new_name" ></input><br/>
            <?php
                display_book_choices($con); 
            ?><br/>
            
            <h4>Select Comic File:</h4>
            <input name="uploaded" type="file"/><br/>
            <input type="submit" value="Upload"/>
        </form>
    </div>

<?php
/****************************************************************
 * Finish With the Footer
 ****************************************************************/
display_footer();



/****************************************************************
 * End of Page -- Additional Functions
 ****************************************************************/

<<<<<<< HEAD

=======
function display_book_choices($db)
{
    $query = "SELECT b_name FROM book_names";
    $result = mysql_query($query,$db);
        
    while ($temp = mysql_fetch_assoc($result))
    {
        echo "<input name='book_name' type='radio' value=".$temp['b_name'].">".$temp['b_name']." </input><br/>";
    }
}
>>>>>>> 5d6a912f6699a2f2828bb760701ee6f4590b3c59
?>