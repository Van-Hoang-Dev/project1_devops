import './App.css';
import Header from './components/Header';
import Banner from './components/Banner';
import Map from './components/Map/index';
import Footer from './components/Footer';
import ProductList from './components/ProductList';
import UserRoot from './components/UserRoot';
import About from './components/About';
import Contact from './components/Contact';
import {useEffect, useState} from 'react';

function App(props) {
  const [banners, setBanners] = useState([]);

  useEffect(() => {
    fetch("http://localhost:3330/banners").then((res)=>{
      return res.json();
    }).then((data) => {
      // console.log(data);
      setBanners(data);
      // console.log(banners);
    }).catch((err) => {
      console.log(err);
    });
  }, []);

  useEffect(() => {
    fetch("http://localhost:3330/products").then((res)=>{
      return res.json();
    }).then((data) => {
      console.log(data);
    }).catch((err) => {
      console.log(err);
    });
  }, []);

  return (
    <>
      <Header/>

      <Banner banners = {banners}/>
    <ProductList />
    <About />
      <UserRoot />
      <Contact />
     <Map />
    <Footer />
    </>
    
  );
}

export default App;
