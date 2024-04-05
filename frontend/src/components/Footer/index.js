import { useEffect, useState } from 'react';

function Footer() {

   const [configs, setConfigs] = useState([]);

   useEffect(() => {
      fetch("http://localhost:3300/configs")
         .then(res => res.json())
         .then(data => {
            setConfigs(data);
         })
         .catch(err => {
            setConfigs([]);
         });
   }, []);

   console.log(configs);

    return (
   <>
    <div className="footer_section layout_padding">
         <div className="container">
            <div className="footer_logo"><a href="index.html"><img src="images/footer-logo.png" /></a></div>
            <div className="contact_section_2">
               <div className="row">
                  <div className="col-sm-4">
                     <h3 className="address_text">Contact Us</h3>
                     <div className="address_bt">
                        <ul>
                           <li>
                              <a href="#">
                              <i className="fa fa-map-marker" aria-hidden="true"></i><span className="padding_left10">Address : {configs[4] && configs[4].value}</span>
                              </a>
                           </li>
                           <li>
                              <a href="#">
                              <i className="fa fa-phone" aria-hidden="true"></i><span className="padding_left10">Call : {configs[6] && configs[6].value}</span>
                              </a>
                           </li>
                           <li>
                              <a href="#">
                              <i className="fa fa-envelope" aria-hidden="true"></i><span className="padding_left10">Email : {configs[5] && configs[5].value}</span>
                              </a>
                           </li>
                        </ul>
                     </div>
                  </div>
                  <div className="col-sm-4">
                     <div className="footer_logo_1"><a href="index.html"><img src="images/footer-logo.png" /></a></div>
                     <p className="dummy_text">{configs[2] && configs[2].value}</p>
                  </div>
                  <div className="col-sm-4">
                     <div className="main">
                        <h3 className="address_text">Best Products</h3>
                        <div className="ipsum_text">{configs[3] && configs[3].value}</div>
                     </div>
                  </div>
               </div>
            </div>
            <div className="social_icon">
               <ul>
                  <li>
                     <a href="#"><i className="fa fa-facebook" aria-hidden="true"></i></a>
                  </li>
                  <li>
                     <a href="#"><i className="fa fa-twitter" aria-hidden="true"></i></a>
                  </li>
                  <li>
                     <a href="#"><i className="fa fa-linkedin" aria-hidden="true"></i></a>
                  </li>
                  <li>
                     <a href="#"><i className="fa fa-instagram" aria-hidden="true"></i></a>
                  </li>
               </ul>
            </div>
         </div>
      </div>

      <div className="copyright_section">
         <div className="container">
            <p className="copyright_text">2020 All Rights Reserved. Design by <a href="https://html.design">Free html  Templates</a></p>
         </div>
      </div>
   </>
    );
  }
  
  export default Footer;
  