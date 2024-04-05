
import Product from './../Product/index';
import { useEffect, useState } from 'react';

function ProductList() {

    const [products, setProducts] = useState([]);

    useEffect(() => {
        fetch("http://localhost:3300/products")
            .then(res => res.json())
            .then(data => {
                setProducts(data);
            })
            .catch(err => {
                setProducts([]);
            });
    }, []);
  
    return (
        <div className="product_section layout_padding">
            <div className="container">
                <div className="row">
                    <div className="col-sm-12">
                        <h1 className="product_taital">Our Products</h1>
                        <p className="product_text">incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p>
                    </div>
                </div>
<<<<<<< HEAD
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
=======
                <div class="product_section_2 layout_padding">
                    <div class="row">
                        {products.map(product => (
                            <div key={product.id} class="col-lg-3 col-sm-6">
                            <Product product={product} />
                            </div>
                        ))}
>>>>>>> daea3fb1f0303dcbcc8095230af56fb5e8eccb67
                    </div>
                    <div className="seemore_bt"><a href="#">See More</a></div>
                </div>
            </div>
        </div>
    );
}

export default ProductList;
