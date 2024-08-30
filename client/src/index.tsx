import React from 'react';
import {createRoot} from 'react-dom/client';

const App = () => {
  return (
    <div>
      <h1>Hello, React!</h1>
    </div>
  );
};

const root = document.getElementById('root');

if (root) {
  createRoot(root).render(<App />);
} else {
  console.error('Root element not found');
}
