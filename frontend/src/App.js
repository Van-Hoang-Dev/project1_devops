import './App.css';
import Header from './components/Header';
import Banner from './components/Banner';
import Map from './components/Map/index';
import Footer from './components/Footer';
import ProductList from './components/ProductList';
import UserRoot from './components/UserRoot';
import About from './components/About';
import Contact from './components/Contact';
import {useEffect, useState } from 'react';
import BannerList from './components/BannerList';


function App() {

  const [banners, setBanners] = useState([]);

  //Hook
  useEffect(() => {
    fetch("http://localhost:2004/banners").then((res) => {
      return res.json();
    }).then((data) => {
      // console.log(data);
      setBanners(data);
    }).catch((err) => {
      console.log(err);
    });
  }, []);

  return (
    <>
      <Header/>
      <Banner banners ={banners}/>
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
