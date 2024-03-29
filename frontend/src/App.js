import './App.css';
import Header from './components/Header';
import Banner from './components/Banner';
import Map from './components/Map/index';
import Footer from './components/Footer';
import ProductList from './components/ProductList';
import UserRoot from './components/UserRoot';
import About from './components/About';
import Contact from './components/Contact';
function App() {
  return (
    <>
      <Header/>
      <Banner/>
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
