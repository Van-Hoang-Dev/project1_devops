
function BannerList({name, desc, img}) {
    return (
        <>
            <div className="container">
                <div className="row">
                    <div className="col-sm-6">
                        <h1 className="banner_taital">{name}</h1>
                        <p className="banner_text">{desc}</p>
                        <div className="read_bt"><a href="#">Buy Now</a></div>
                    </div>
                    <div className="col-sm-6">
                        <div className="banner_img"><img src={"img/" + img} /></div>
                    </div>
                </div>
            </div>
        </>
    )
}

export default BannerList;