
function BannerList({title, description, image}) {
    return (
        <>
            <div className="container">
                <div className="row">
                    <div className="col-sm-6">
                        <h1 className="banner_taital">{title}</h1>
                        <p className="banner_text">{description}</p>
                        <div className="read_bt"><a href="#">Buy Now</a></div>
                    </div>
                    <div className="col-sm-6">
                        <div className="banner_img"><img src={image} /></div>
                    </div>
                </div>
            </div>
        </>
    )
}

export default BannerList;