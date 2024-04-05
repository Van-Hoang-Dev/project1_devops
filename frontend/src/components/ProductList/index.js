
import Product from './../Product/index';

function ProductList() {
    return (
        <div className="product_section layout_padding">
            <div className="container">
                <div className="row">
                    <div className="col-sm-12">
                        <h1 className="product_taital">Our Products</h1>
                        <p className="product_text">incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p>
                    </div>
                </div>
                <div className="product_section_2 layout_padding">
                    <div className="row">
                        <div className="col-lg-3 col-sm-6">
                           <Product name={"Product 1"} desc={"Day la Nhi"} price={30} />
                        </div>
                        <div className="col-lg-3 col-sm-6">
                            <Product />
                        </div>
                        <div className="col-lg-3 col-sm-6">
                            <Product />
                        </div>
                        <div className="col-lg-3 col-sm-6">
                            <Product />
                        </div>
                    </div>
                    <div className="row">
                        <div className="col-lg-3 col-sm-6">
                            <Product />
                        </div>
                        <div className="col-lg-3 col-sm-6">
                            <Product />
                        </div>
                        <div className="col-lg-3 col-sm-6">
                            <Product />
                        </div>
                        <div className="col-lg-3 col-sm-6">
                            <Product />
                        </div>
                    </div>
                    <div className="row">
                        <div className="col-lg-3 col-sm-6">
                            <Product />
                        </div>
                        <div className="col-lg-3 col-sm-6">
                            <Product />
                        </div>
                        <div className="col-lg-3 col-sm-6">
                            <Product />
                        </div>
                        <div className="col-lg-3 col-sm-6">
                            <Product />
                        </div>
                    </div>
                    <div className="seemore_bt"><a href="#">See More</a></div>
                </div>
            </div>
        </div>
    );
}

export default ProductList;
