import React from "react";
import ReactDOM from "react-dom/client";
import { VisibilityProvider } from "./providers/VisibilityProvider";
import { BrowserRouter, Route, Routes } from "react-router-dom";

import "./styles/global.css";
import { debugData } from "./utils/debugData";
import Rankings from "./pages/Rankings";
import Home from "./pages/Home";

debugData([
  { action: 'setVisible', data: true }
])

ReactDOM.createRoot(document.getElementById("root")!).render(
  <React.StrictMode>
    <BrowserRouter>
      <VisibilityProvider>
        <Routes>
          <Route path="*" element={<Home />} />
          <Route path="/rankings" element={<Rankings />} />
        </Routes>
      </VisibilityProvider>
    </BrowserRouter>
  </React.StrictMode>
);
