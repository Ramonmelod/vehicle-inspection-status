import React from "react";
import { BrowserRouter, Routes, Route } from "react-router-dom";

import Dashboard from "./Dashboard";
import About from "./About";

const AppRoutes = () => {
  return (
    <BrowserRouter>
      <Routes>
        {" "}
        <Route path="/" element={<Dashboard />} />
        <Route path="/about" element={<About />} />
      </Routes>
    </BrowserRouter>
  );
};

export default AppRoutes;
