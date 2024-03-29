
function Product({ name, desc, price}) {
  return (
    <div className="product_box">
        <h4 className="bursh_text">{name || "UNkonwn"}</h4>
        <p className="lorem_text">{desc || "Day la desc"} </p>
        <img src="images/img-1.png" className="image_1" />
        <div className="btn_main">
            <div className="buy_bt">
                <ul>
                    <li className="active"><a href="#">Buy Now</a></li>
                    <li><a href="#">Buy Now</a></li>
                </ul>
            </div>
            <h3 className="price_text">Price ${price || 0}</h3>
        </div>
    </div>
  );
}

export default Product;
