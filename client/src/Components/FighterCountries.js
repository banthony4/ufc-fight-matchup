import React, { useState } from "react";
import {
  ComposableMap,
  Geographies,
  Geography,
  Marker,
  ZoomableGroup,
} from "react-simple-maps";
import ReactTooltip from "react-tooltip";

const markers = [
  {
    markerOffset: -15,
    name: "Brazil",
    coordinates: [-45, -23],
  },
  {
    markerOffset: 25,
    name: "United States",
    coordinates: [-80, 35],
  },
  {
    markerOffset: 25,
    name: "Nigeria",
    coordinates: [7.5, 8],
  },
  {
    markerOffset: 25,
    name: "Jamaica",
    coordinates: [-77, 17],
  },
  {
    markerOffset: 25,
    name: "Czechia",
    coordinates: [15, 50],
  },
  {
    markerOffset: 25,
    name: "Russia",
    coordinates: [40, 55],
  },
  {
    markerOffset: 25,
    name: "Mexico",
    coordinates: [-100, 20.5],
  },
  {
    markerOffset: 25,
    name: "Ireland",
    coordinates: [-10.5, 51.5],
  },
  {
    markerOffset: 25,
    name: "Kazakhstan",
    coordinates: [71, 50],
  },
  {
    markerOffset: 25,
    name: "Iran",
    coordinates: [53, 34],
  },
  {
    markerOffset: 25,
    name: "China",
    coordinates: [117, 40],
  },
];

const geoUrl =
  "https://raw.githubusercontent.com/zcreativelabs/react-simple-maps/master/topojson-maps/world-110m.json";

function FighterCountries() {
  const [content, setcontent] = useState("");

  return (
    <div
      className="App"
      style={{
        width: "90%",
        height: "90%",
        display: "flex",
        flexDirection: "column",
        justifyContent: "center",
        alignItems: "center",
        background: "#494949",
        fill: 'grey'
      }}>
      
      <h1>Mixed Martial Arts Physiography</h1>
      <h2>MMAP</h2>

      <ReactTooltip>{content}</ReactTooltip>
      <div style={{ width: "1000px", borderStyle: "double" }}>
        <ComposableMap data-tip="">
          <ZoomableGroup zoom={0.9}>
            {" "}
            <Geographies geography={geoUrl}>
              {({ geographies }) =>
                geographies.map((geo) => (
                  <Geography
                    key={geo.rsmKey}
                    geography={geo}
                    onMouseEnter={() => {
                      const { NAME } = geo.properties;
                      switch(NAME) {
                        case "Brazil":
                          setcontent("F: Amanda Nunes  M: Gilbert Burns")
                          break;
                        case "United States of America":
                          setcontent("F: Juianna Pena, Holly Holm, Raquel Pennington  M: Colby Covington, Dustin Poirer, Belal Muhammad")
                          break;
                        case "Russia":
                          setcontent("F: Yana Kunitskaya  M: Islam Makhachev")
                          break;
                        case "Mexico":
                          setcontent("F: Irene Aldana")
                          break;
                        case "Jamaica":
                          setcontent("M: Leon Edwards")
                          break;
                        case "Ireland":
                          setcontent("M: Conor McGregor")
                          break;
                        case "Iran":
                          setcontent("M: Beneil Dariush  F: Pannie Kianzad")
                          break;
                        case "Czechia":
                          setcontent("Khamzat Chimaev")
                          break;
                        case "China":
                          setcontent("F: Zhang Weili, Yan Xiaonan")
                          break;
                        case "Kazakhstan":
                          setcontent("M: Rafael Fiziev")
                          break;
                        case "Nigeria":
                          setcontent("M: Kamaru Usman")
                          break;
                        default:
                          setcontent(null)
                      }
                    }}
                    onMouseLeave={() => {
                      setcontent("");
                    }}
                    style={{
                      hover: {
                        fill: "#F00",
                        outline: "none",
                      },
                    }}
                  />
                ))
              }
            </Geographies>
              {markers.map(({ name, coordinates, markerOffset }) => (
                <Marker key={name} coordinates={coordinates}>
                  <circle r={2} fill="#F00" stroke="#fff" strokeWidth={2} />
                  <text
                    textAnchor="middle"
                    y={markerOffset}
                    style={{ fontFamily: "system-ui", fill: "red" }}
                  >
                    {name}
                  </text>
                </Marker>
              ))}
          </ZoomableGroup>
        </ComposableMap>

      </div>
    </div>
  );
}


export default FighterCountries