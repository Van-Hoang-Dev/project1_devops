
function User({ name, des, isActive}) {
    const cN = "carousel-item " + (isActive? " active" : "");
    return (
        <div className={cN}>
            <div className="client_section_2">
                <div className="client_main">
                    <div className="client_left">
                        <div className="client_img"><img src="images/client-img.png" /></div>
                    </div>
                    <div className="client_right">
                        <h3 className="name_text">{name}</h3>
                        <p className="dolor_text">{des}</p>
                    </div>
                </div>
            </div>
        </div>
    );
}

export default User;
