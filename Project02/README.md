# CS1XA3 Project02 - <*kamalp*>


## Overview
This webpage is is Prakarsh Kamal's customized CV/resume. It uses **HTML/CSS**, **BootStrap** and **JavaScript** to portray the webpage. The CV contains information about *Education*, *Experience*, *Skills* and a little *About Me* section.

--------------------------------------------------------------------

### HTML/CSS Code
* The script makes use of `<div>`, `<col-md>` and `<nav>` to make the webpage look professional.

    ```
    <div class="col-md-9">

    <ul class="navbar-nav nav ml-auto">
    ```

* Makes use of `<a href="">` to link back to the desired section
    ```
    <a href="#" class="mouse-icon">
    ```

* The HTML script imports the JS files that adds all the animation and scrolling elements to the webpage

    ```
    <script src="js/main.js"></script>
    ```
--------------------------------------------------------------------

### Custom JS Code
 There are 3 **main** custom features:

  * `onePageClick` function that navigates any links to its specified `href` id.
  * It uses the `.animate` syntax to scroll to the desired section
  * For example: `href="#page-2"` directs the user to the 
    **Experience** section in the webpage

--------------------------------------------------------------------

* `TxtRotate` function that displays the text in a simple rotating manner
* Uses the `this.` syntax and `window.onload` commands along with conditionals to execute the display

--------------------------------------------------------------------
* `carousel` function creates a fading-in, fading-out animation to the links in the webpage.
* Uses the ```animateOut``` and ```animateIn``` commands to create the blue fading line beneath the links

## Refrences:

#### Template obtained from:
[BootStrap Template](https://uicookies.com/free-bootstrap-resume-templates/)

#### TextRotate: 
[TxtRotateFunc](https://codepen.io/gschier/pen/jkivt)

#### CSS Animate:
[Animate](https://owlcarousel2.github.io/OwlCarousel2/demos/animate.html)

#### Social links icons:
[Icons](https://www.w3schools.com/icons/icons_reference.asp)

