
import Product from './../Product/index';
import { useEffect, useState } from 'react';
import {API} from '../../App.js';

function ProductList() {

    const [products, setProducts] = useState([]);

    useEffect(() => {
        fetch(API + "products")
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
                <div className="product_section_2 layout_padding">
                    <div className="row">
                        {products.map(product => (
                            <div key={product.id} className="col-lg-3 col-sm-6">
                                <Product product={product} />
                            </div>
                        ))}
                    </div>
                    <div className="seemore_bt"><a href="#">See More</a></div>
                </div>
            </div>
        </div>
    );
}

export default ProductList;
