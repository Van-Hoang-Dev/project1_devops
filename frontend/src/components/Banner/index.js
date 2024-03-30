import BannerList from "../BannerList";
function Banner() {
    return (
        <div classNameName="Banner">
            <div className="banner_section layout_padding">
                <div id="carouselExampleIndicators" className="carousel slide" data-ride="carousel">
                    <div className="carousel-inner">
                        <div className="carousel-item">
                        <BannerList />
                        </div>
                        <div className="carousel-item active">
                        <BannerList />
                        </div>
                        <div className="carousel-item">
                            <BannerList />
                        </div>
                        <div className="carousel-item">
                            <BannerList />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    );
}

export default Banner;
