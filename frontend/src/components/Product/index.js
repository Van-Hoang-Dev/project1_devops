
function Product({ product}) {
  return (
    <div className="product_box">
        <h4 className="bursh_text">{product.name || "UNkonwn"}</h4>
        <p style={{ minHeight: "100px" }} className="lorem_text">{product.description.split(" ").slice(0, 15).join(" ") +"..."
        || "Day la desc"} </p>
        <img src={"img/" + product.img} className="image_1" />
        <div className="btn_main">
            <div className="buy_bt">
                <ul>
                    <li className="active"><a href="#">Buy Now</a></li>
                    <li><a href="#">Buy Now</a></li>
                </ul>
            </div>
            <h3 className="price_text">Price ${product.price || 0}</h3>
        </div>
    </div>
  );
}

export default Product;
