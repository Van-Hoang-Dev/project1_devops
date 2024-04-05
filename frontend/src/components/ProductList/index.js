
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
                        {products.map(product => (
                            <div key={product.id} class="col-lg-3 col-sm-6">
                            <Product product={product} />
                            </div>
                        ))}
                    </div>
                    <div class="seemore_bt"><a href="#">See More</a></div>
                </div>
            </div>
        </div>
    );
}

export default ProductList;
