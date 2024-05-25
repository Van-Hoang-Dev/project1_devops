import {useEffect, useState} from 'react';
import {API} from '../../App.js';

function About() {

   const [configs, setconfigs] = useState([]);

    useEffect(() => {
        fetch(API + "configs").then((res)=>{
          return res.json();
        }).then((data) => {
          setconfigs(data);
        }).catch((err) => {
          console.log(err);
        });
      }, []);

   const about = configs[1];
    return (
        <div className="about_section layout_padding">
        <div className="container">
           <div className="about_section_main">
              <div className="row">
                 <div className="col-md-6">
                    <div className="about_taital_main">
                       <h1 className="about_taital">About Our beauty sotore</h1>
                       <p className="about_text">{about && about.value}</p>
                       <div className="readmore_bt"><a href="#">Read More</a></div>
                    </div>
                 </div>
                 <div className="col-md-6">
                    <div><img src="images/about-img.png" className="image_3"/></div>
                 </div>
              </div>
           </div>
        </div>
     </div>
    );
}

export default About;
