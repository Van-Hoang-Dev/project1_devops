
function BannerList(props) {

    console.log(props);
    return (
        <>
            <div className="container">
                <div className="row">
                    <div className="col-sm-6">
                        <h1 className="banner_taital">{props.title}</h1>
                        <p className="banner_text">{props.description}</p>
                        <div className="read_bt"><a href="#">Buy Now</a></div>
                    </div>
                    <div className="col-sm-6">
                        <div className="banner_img"><img src="images/banner-img.png" /></div>
                    </div>
                </div>
            </div>
        </>
    )
}

export default BannerList;