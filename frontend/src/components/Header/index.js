
function Header() {
   function openNav() {
      document.getElementById("mySidenav").style.width = "100%";
    }
    
    function closeNav() {
      document.getElementById("mySidenav").style.width = "0";
    }
  return (
    <div className="Header">
        <div className="header_section">
         <div className="container-fluid">
            <nav className="navbar navbar-light bg-light justify-content-between">
               <div id="mySidenav" className="sidenav">
                  <a href="" className="closebtn" onClick={()=>closeNav()}>×</a>
                  <a href="index.html">Home</a>
                  <a href="products.html">Products</a>
                  <a href="about.html">About</a>
                  <a href="client.html">Client</a>
                  <a href="contact.html">Contact</a>
               </div>
               <span className="toggle_icon" onClick={() => openNav()}><img src="images/toggle-icon.png" /></span>
               <a className="logo" href="index.html"><img src="images/logo.png" /></a>
               <form className="form-inline ">
                  <div className="login_text">
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
