import BannerList from "../BannerList";
function Banner(props) {

    return (
        <div className="Banner">
            <div className="banner_section layout_padding">
                <div id="carouselExampleIndicators" className="carousel slide" data-ride="carousel">
                        {
                            props.banners.map((banner, index) => {
                                if(index == 0){
                                    return (
                                        <div className="carousel-item active">
                                            <BannerList title={banner.title} description={banner.description} />
                                        </div>
                                    );
                                }
                                else{
                                    return (
                                        <div className="carousel-item">
                                            <BannerList title={banner.title} description={banner.description} />
                                        </div>
                                    );
                                }
                            })
                        }

                </div>
            </div>
        </div>
    );
}

export default Banner;
