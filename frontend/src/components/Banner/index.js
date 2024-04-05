import BannerList from "../BannerList";
function Banner(props) {
    console.log(props.banners);
    return (
        <div classNameName="Banner">
            <div className="banner_section layout_padding">
                <div id="carouselExampleIndicators" className="carousel slide" data-ride="carousel">
                    <div className="carousel-inner">
                        {
                        props.banners.map((banner, index)=>{
                            if (index == 0) {
                                return (
                                    <div className="carousel-item active">
                                    <BannerList title = {banner.title} description = {banner.description} image = {banner.image}/>
                                    </div>
                                    );
                            } else {
                                return (
                                    <div className="carousel-item">
                                    <BannerList title = {banner.title} description = {banner.description} image = {banner.image}/>
                                    </div>
                                    );  
                            }
                           
                        })
                        }
                        
                    </div>
                </div>
            </div>
        </div>
    );
}

export default Banner;
