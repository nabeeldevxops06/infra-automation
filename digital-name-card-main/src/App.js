import './App.css';
import About from './About.js';
import Interest from "./Interest.js";
import Profile from './Profile';
import Footer from './Footer';

function App() {
  return (
    <>
    <div className="main">
      <header className="main_section">
        <Profile />
        <About />
        <Interest />
        <Footer />
      </header>
    </div>
    </>
  );
}

export default App;
