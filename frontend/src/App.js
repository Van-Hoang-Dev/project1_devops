import logo from './logo.svg';
import './App.css';
import UserRoot from './components/UserRoot';
import About from './components/About';
import 'bootstrap/dist/css/bootstrap.min.css';
import Contact from './components/Contact';

function App() {
  return (
    <>
      <About />
      <UserRoot />
      <Contact />
    </>
  );
}

export default App;
