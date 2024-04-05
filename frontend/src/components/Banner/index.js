import BannerList from "../BannerList";
import {useEffect, useState} from 'react';

function Banner() {

    const [banners, setBanners] = useState([]);

    useEffect(() => {
        fetch("http://localhost:3300/banners").then((res)=>{
          return res.json();
        }).then((data) => {
          console.log(data);
          setBanners(data);
        }).catch((err) => {
          console.log(err);
        });
      }, []);

    //   console.log(banners);
    return (
        <div classNameName="Banner">
            <div className="banner_section layout_padding">
                <div id="carouselExampleIndicators" className="carousel slide" data-ride="carousel">
                    <div className="carousel-inner">
                        {
                        banners.map((banner, index)=>{
                            return (
                                <div className={"carousel-item "+ (index == 0 ? "active" : "")}>
                                <BannerList name = {banner.name} desc = {banner.desc} img = {banner.img}/>
                                </div>
                                );
                        })
                        }
                        
                    </div>
                </div>
            </div>
        </div>
    );
}

export default Banner;
