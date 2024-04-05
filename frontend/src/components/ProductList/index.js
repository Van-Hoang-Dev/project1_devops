
import Product from './../Product/index';

function ProductList(props) {
    return (
        <div class="product_section layout_padding">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <h1 class="product_taital">Our Products</h1>
                        <p class="product_text">incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p>
                    </div>
                </div>
                <div class="product_section_2 layout_padding">
                    <div class="row">
                        <div class="col-lg-3 col-sm-6">
                           <Product name={"Product 1"} desc={"Day la Nhi"} price={30} />
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <Product />
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <Product />
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <Product />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-3 col-sm-6">
                            <Product />
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <Product />
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <Product />
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <Product />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-3 col-sm-6">
                            <Product />
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <Product />
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <Product />
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <Product />
                        </div>
                    </div>
                    <div class="seemore_bt"><a href="#">See More</a></div>
                </div>
            </div>
        </div>
    );
}

export default ProductList;
