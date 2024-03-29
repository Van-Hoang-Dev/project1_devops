import User from "../User";


function UserRoot() {
    return (
        <div className="customer_section layout_padding">
            <div className="container">
                <div className="row">
                    <div className="col-sm-12">
                        <h1 className="customer_taital">What says customers</h1>
                    </div>
                </div>
                <div id="main_slider" className="carousel slide" data-ride="carousel">
                    <div className="carousel-inner">
                        <User name={"John"} des={"Very delicious, I happy when i eat this food in here"} isActive={true}/>
                        <User name={"Minh"} des={"Thức ăn rất ổn, ổn đầy ..."} isActive={false}/>
                        <User name={"Linh"} des={"Ăn nhiều bị lủng đường ruột!"} isActive={false}/>
                    </div>
                    <a className="carousel-control-prev" href="#main_slider" role="button" data-slide="prev">
                        <i className="fa fa-angle-left"></i>
                    </a>
                    <a className="carousel-control-next" href="#main_slider" role="button" data-slide="next">
                        <i className="fa fa-angle-right"></i>
                    </a>
                </div>
            </div>
        </div>
    );
}

export default UserRoot;
