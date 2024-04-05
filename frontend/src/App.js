import './App.css';
import Header from './components/Header';
import Banner from './components/Banner';
import Map from './components/Map/index';
import Footer from './components/Footer';
import ProductList from './components/ProductList';
function App() {
  return (
    <>
      <Header/>
      <Banner/>
    <ProductList />
     <Map />
    <Footer />
    </>
    
  );
}

export default App;
