import { useEffect, useState } from "react";

function Contact() {
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
        <div className="contact_section layout_padding">
        <div className="container">
           <div className="row">
              <div className="col-md-6">
                 <h1 className="contact_taital">Get In Touch</h1>
                 <p className="contact_text">{configs[1] && configs[1].value}</p>
              </div>
              <div className="col-md-6">
                 <div className="contact_main">
                    <div className="contact_bt"><a href="#">Contact Form</a></div>
                    <div className="newletter_bt"><a href="#">Newletter</a></div>
                 </div>
              </div>
           </div>
        </div>
       
     </div>
    );
}
export default Contact;
