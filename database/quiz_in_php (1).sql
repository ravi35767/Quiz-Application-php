-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2019 at 08:36 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz_in_php`
--

-- --------------------------------------------------------

--
-- Table structure for table `catagory`
--

CREATE TABLE `catagory` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catagory`
--

INSERT INTO `catagory` (`id`, `cat_name`) VALUES
(1, 'HTML'),
(2, 'CSS'),
(3, 'PHP'),
(4, 'JavaScript'),
(5, 'Bootstrap'),
(6, 'Jquery');

-- --------------------------------------------------------

--
-- Table structure for table `quetion`
--

CREATE TABLE `quetion` (
  `id` int(11) NOT NULL,
  `Question` varchar(100) NOT NULL,
  `ans1` varchar(100) NOT NULL,
  `ans2` varchar(100) NOT NULL,
  `ans3` varchar(100) NOT NULL,
  `ans4` varchar(100) NOT NULL,
  `ans` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quetion`
--

INSERT INTO `quetion` (`id`, `Question`, `ans1`, `ans2`, `ans3`, `ans4`, `ans`, `cat_id`) VALUES
(1, 'What does PHP stand for?', ' Private Home Page', ' Personal Hypertext Processor', ' PHP: Hypertext Preprocessor', 'None of them', 2, 3),
(2, 'How do you write \"Hello World\" in PHP?', ' Document.Write(\"Hello World\");', ' echo \"Hello World\";', ' \"Hello World\";', 'None of them', 1, 3),
(3, 'What is the correct way to end a PHP statement?', ':', ';', 'new line', '.', 1, 3),
(4, 'The PHP syntax is most similar to:?', 'VBScript', 'Javascript', 'Perl and C', 'None of them', 2, 3),
(5, 'How do you get information from a form that is submitted using the \"get\" method?', ' $_GET[];', ' Request.Form;', ' Request.QueryString;', 'None of thm', 0, 3),
(6, 'When using the POST method, variables are displayed in the URL:?', 'True', 'False', 'None of them', 'return 1', 1, 3),
(7, 'What is the correct way to add 1 to the $count variable?\r\n\r\n', ' $count =+1', ' ++count', ' count++;', '  $count++;', 3, 3),
(8, 'What is the correct way to create a function in PHP?', ' function myFunction()', ' create myFunction()', ' new_function myFunction()', 'None of them', 0, 3),
(9, 'What is the correct way to open the file \"time.txt\" as readable?', ' fopen(\"time.txt\",\"r\");', ' open(\"time.txt\");', ' open(\"time.txt\",\"read\");', ' fopen(\"time.txt\",\"r+\");', 0, 3),
(10, 'Which superglobal variable holds information about headers, paths, and script locations?', ' $_SESSION', ' $_GET', ' $_GLOBALS', ' $_SERVER', 3, 3),
(12, 'What does HTML stand for?', ' Hyper Text Markup Language', ' Home Tool Markup Language', ' Hyperlinks and Text Markup Language', 'None of them', 0, 1),
(13, 'Which HTML attribute specifies an alternate text for an image, if the image cannot be displayed?', 'src', 'title', 'alt  ', 'longdesc', 2, 1),
(14, 'The HTML global attribute, \"contenteditable\" is used to:?', 'Specifies a context menu for an element. The menu appears when a user right-clicks on the element', 'Specify whether the content of an element should be editable or not  ', 'Return the position of the first found occurrence of content inside a string', 'Update content from the server', 1, 1),
(15, 'In HTML, onblur and onfocus are:?', 'Event attributes ', 'Style attributes', 'HTML elements', 'None of them', 0, 1),
(16, 'What is the correct HTML for creating a hyperlink?', ' <a>http://www.w3schools.com</a>', ' <a url=\"http://www.w3schools.com\">W3Schools.com</a>', ' <a href=\"http://www.w3schools.com\">W3Schools</a>', ' <a name=\"http://www.w3schools.com\">W3Schools.com</a>', 2, 1),
(17, 'Which character is used to indicate an end tag?', '*', '/', '<', '^', 1, 1),
(18, 'The HTML canvas element is used to:?', 'draw graphics  ', 'display database records', 'create draggable elements', 'manipulate data in MySQL', 0, 1),
(19, 'In HTML, which attribute is used to specify that an input field must be filled out?', 'validate', 'placeholder', 'formvalidate', 'required    ', 3, 1),
(20, 'Which input type defines a slider control?', 'slider', 'controls', 'range  ', ' search', 2, 1),
(21, 'In HTML, what does the <aside> element define?', 'Content aside from the page content  ', 'A navigation list to be shown at the left side of the page\r\n', 'The ASCII character-set; to send information between computers on the Internet\r\n', 'None of them', 0, 1),
(22, 'What does CSS stand for?', 'Computer Style Sheets', 'Creative Style Sheets', 'Colorful Style Sheets', 'Cascading Style Sheets  ', 3, 2),
(23, 'Where in an HTML document is the correct place to refer to an external style sheet?', 'In the head section  ', 'In the body section', 'At the end of the document\r\n', 'None of them', 0, 2),
(24, 'Which HTML attribute is used to define inline styles?', 'class', 'styles', 'style  ', 'font', 2, 2),
(25, 'How do you insert a comment in a CSS file?', '/* this is a comment */', '// this is a comment //', '\' this is a comment', '// this is a comment', 0, 2),
(26, 'Which property is used to change the background color?', 'bgcolor', 'background-color ', 'color', 'None of them', 1, 2),
(27, 'How do you add a background color for all h1 elements?', 'all.h1 {background-color:#FFFFFF;}', 'h1 {background-color:#FFFFFF;}  ', 'h1.all {background-color:#FFFFFF;}', 'None of them', 1, 2),
(28, 'Which CSS property is used to change the text color of an element?', 'text-color', 'color', 'fgcolor', 'None of them', 1, 2),
(29, 'Which CSS property controls the text size?', 'font-size  ', 'font-style', 'text-style', 'text-size', 0, 2),
(30, 'How do you display hyperlinks without an underline?', 'a {text-decoration:no-underline;}', 'a {underline:none;}', 'a {text-decoration:none;}  ', 'a {decoration:no-underline;}', 2, 2),
(31, 'How do you make each word in a text start with a capital letter?', 'text-transform:capitalize  ', 'You can\'t do that with CSS', 'transform:capitalize', 'text-style:capitalize', 0, 2),
(32, 'Where is the correct place to insert a JavaScript?', 'The body section', 'Both the head section and the body section are correct  ', 'The head section', 'None of them', 1, 4),
(33, 'The external JavaScript file must contain the script tag.', 'True', 'False  ', 'None of them', 'return 1', 1, 4),
(34, 'How do you write \"Hello World\" in an alert box?', 'msg(\"Hello World\");', 'alert(\"Hello World\");  ', 'msgBox(\"Hello World\");', 'alertBox(\"Hello World\");', 1, 4),
(35, 'How do you create a function in JavaScript?', 'function = myFunction()', 'function myFunction() ', 'function:myFunction()', 'None of them', 1, 4),
(36, 'How do you call a function named \"myFunction\"?', 'call myFunction()', 'call function myFunction()', 'myFunction()  ', 'None of them', 2, 4),
(37, 'How to write an IF statement in JavaScript?', 'if i = 5 then', 'if i = 5', 'if i == 5 then', 'if (i == 5)  ', 3, 4),
(38, 'How does a WHILE loop start?', 'while (i <= 10)  ', 'while (i <= 10; i++)', 'while i = 1 to 10', 'None of them', 0, 4),
(39, 'How does a FOR loop start?', 'for (i = 0; i <= 5)', 'for i = 1 to 5', 'for (i = 0; i <= 5; i++)  ', 'for (i <= 5; i++)', 2, 4),
(40, 'How to insert a comment that has more than one line?', '//This comment has\r\nmore than one line//', '/*This comment has\r\nmore than one line*/  ', '//This is a comment  ', 'None of them', 1, 4),
(41, 'What is the correct way to write a JavaScript array?', 'var colors = 1 = (\"red\"), 2 = (\"green\"), 3 = (\"blue\")', 'var colors = [\"red\", \"green\", \"blue\"]  ', 'var colors = (1:\"red\", 2:\"green\", 3:\"blue\")', 'var colors = \"red\", \"green\", \"blue\"', 1, 4),
(42, 'Which class provides a responsive fixed width container?', '.container-fixed', '.container-fluid', '.container  ', 'None of them', 2, 5),
(43, 'Which class provides a full width container, spanning the entire width of the viewport?', '.container\r\n', '.container-fixed', '.container-fluid  ', 'None of them', 2, 5),
(44, 'The Bootstrap grid system is based on how many columns?', '12  ', '3', '6', '9', 0, 5),
(45, 'Which class adds zebra-stripes to a table?', '.even and .odd', '.table-bordered', '.table-striped  ', '.table-zebra', 2, 5),
(46, 'Which class shapes an image to a circle?', '.img-round', '.img-circle  ', '.img-thumbnail', '.img-rounded', 1, 5),
(47, 'Which button class is used to create a large button?', '.btn-l', '.btn-xl', '.btn-lg  ', '.btn-large', 2, 5),
(48, 'Which class is used to create a button group?', '.group-btn', '.button-group', '.group-button', '.btn-group  ', 3, 5),
(49, 'Which class is used to create a badge?', '.flag', '.tag', '.badge  ', '.label', 2, 5),
(50, 'Which class is used to create a basic pagination?', '.page', '.pagination  ', '.navigation', '.pages', 1, 5),
(51, 'Which class adds a heading to a panel?', '.panel-head', '.panel-footer', '.panel-header', '.panel-heading  ', 3, 5),
(52, 'Which sign does jQuery use as a shortcut for jQuery?', 'the ? Sign', 'the $ sign  ', 'the % sign', 'None of them', 1, 6),
(53, 'What is the correct jQuery code to set the background color of all p elements to red?', '$(\"p\").style(\"background-color\",\"red\");', '$(\"p\").css(\"background-color\",\"red\"); ', '$(\"p\").manipulate(\"background-color\",\"red\");', '$(\"p\").layout(\"background-color\",\"red\");', 1, 6),
(54, 'With jQuery, look at the following selector: $(\"div.intro\"). What does it select?', 'All div elements with id=\"intro\"', 'The first div element with class=\"intro\"', '\r\nAll div elements with class=\"intro\"  ', 'The first div element with id=\"intro\"', 2, 6),
(55, 'Which jQuery method is used to hide selected elements?', 'hide()  ', 'display(none)', 'visible(false)', 'hidden()', 0, 6),
(56, 'Which jQuery method is used to set one or more style properties for selected elements', 'css()  ', 'style()', 'html()', 'None of them', 0, 6),
(57, 'Which jQuery method is used to perform an asynchronous HTTP request?', 'jQuery.ajax()  ', 'jQuery.ajaxSetup()', 'jQuery.ajaxAsync()', 'None of them', 0, 6),
(58, 'What is the correct jQuery code for making all div elements 100 pixels high?', '$(\"div\").height=\"100\"', '$(\"div\").yPos(100)', '$(\"div\").height(100)  ', 'None of them', 2, 6),
(59, 'What scripting language is jQuery written in?', 'VBScript', 'C++', 'C#', 'JavaScript  ', 3, 6),
(60, 'Which jQuery method should be used to deal with name conflicts?', 'noConflict()  ', 'nameConflict()', 'noNameConflict()', 'conflict()', 0, 6),
(61, 'Which jQuery method is used to switch between adding/removing one or more classes (for CSS) from sel', 'toggleClass()  ', 'switchClass()', 'altClass()', 'switch()', 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_system1`
--

CREATE TABLE `quiz_system1` (
  `id` int(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `pass` varchar(200) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_system1`
--

INSERT INTO `quiz_system1` (`id`, `name`, `email`, `pass`, `img`) VALUES
(1, 'Ravi', 'Ravi.malhi1@gmail.com', '54545454', 'C:xampp	mpphpB4AB.tmp'),
(2, 'Karan', 'Karan.malhi1@GMAIL.COM', '5321132123', 'm.jpg'),
(3, 'Munesh', 'munesh@gmail.com', '123456', 'm.jpg'),
(4, 'Nareendar', 'nareendar@gmail.com', 'dadamalhi12', 'karan.jpg'),
(5, 'bansi', 'bansi@gmaiol.com', 'dadamalhi', 'bansi.jpg'),
(6, 'vinod', 'vinod@gmail.com', 'vinod', 'UCASE.PNG'),
(7, 'Ravi', 'Ravi.malhi1@gmail.com', 'ravi', 'LCASE.PNG'),
(8, 'shaheer', 'shaheerkhan@gmail.com', 'shaheer', 'SUBSTR.PNG'),
(9, 'maaz', 'maaz@gmail.com', 'maaz', 'Screenshot (1).png'),
(10, '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catagory`
--
ALTER TABLE `catagory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quetion`
--
ALTER TABLE `quetion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_system1`
--
ALTER TABLE `quiz_system1`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catagory`
--
ALTER TABLE `catagory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `quetion`
--
ALTER TABLE `quetion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `quiz_system1`
--
ALTER TABLE `quiz_system1`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
