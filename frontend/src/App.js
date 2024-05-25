import "./App.css";
import Header from "./components/Header";
import Banner from "./components/Banner";
import Map from "./components/Map/index";
import Footer from "./components/Footer";
import ProductList from "./components/ProductList";
import UserRoot from "./components/UserRoot";
import About from "./components/About";
import Contact from "./components/Contact";

export const API = process.env.REACT_APP_API;

function App() {
  return (
    <div>
      <Header />
      <Banner />
      <ProductList />
      <About />
      <UserRoot />
      <Contact />
      <Map />
      <Footer />
    </div>
  );
}

export default App;
