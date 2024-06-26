import { useEffect, useState } from "react";
import User from "../User";


function UserRoot() {
    const [users, setUsers] = useState([]);

    useEffect(()=>{
        fetch("http://localhost:3300/users")
        .then(res => res.json())
        .then(data => {
            setUsers(data);
        })
        .catch(err=>{
            setUsers([]);
        })
    })

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
                        {
                            users.map((user, index) => (
                                <User name={user.name} des={user.desc} isActive={index == 0 ? true : false}/>
                            ))
                        }
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
