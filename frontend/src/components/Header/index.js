
function Header() {
  return (
    <div className="Header">
        <div class="header_section">
         <div class="container-fluid">
            <nav class="navbar navbar-light bg-light justify-content-between">
               <div id="mySidenav" class="sidenav">
                  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
                  <a href="index.html">Home</a>
                  <a href="products.html">Products</a>
                  <a href="about.html">About</a>
                  <a href="client.html">Client</a>
                  <a href="contact.html">Contact</a>
               </div>
               <span class="toggle_icon" onclick="openNav()"><img src="images/toggle-icon.png" /></span>
               <a class="logo" href="index.html"><img src="images/logo.png" /></a>
               <form class="form-inline ">
                  <div class="login_text">
                     <ul>
                        <li><a href="#"><img src="images/user-icon.png" /></a></li>
                        <li><a href="#"><img src="images/bag-icon.png" /></a></li>
                        <li><a href="#"><img src="images/search-icon.png" /></a></li>
                     </ul>
                  </div>
               </form>
            </nav>
         </div>
      </div>
    </div>
  );
}

export default Header;
