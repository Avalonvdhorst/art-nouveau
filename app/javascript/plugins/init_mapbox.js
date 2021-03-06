// import mapboxgl from 'mapbox-gl';

// const initMapbox = () => {
//   const mapElement = document.getElementById('map');

//   if (mapElement) { // only build a map if there's a div#map to inject into
//     mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
//     const map = new mapboxgl.Map({
//       container: 'map',
//       style: 'mapbox://styles/mapbox/streets-v10'
//     });
//     const marker = JSON.parse(mapElement.dataset.markers);
//     if (marker.lat === null) {
//       return
//     }
//     new mapboxgl.Marker()
//       .setLngLat([ marker.lng, marker.lat ])
//       .addTo(map);
//   fitMapToMarkers(map, marker);
//   }
// };

// const fitMapToMarkers = (map, marker) => {
//   const bounds = new mapboxgl.LngLatBounds();
//   bounds.extend([ marker.lng, marker.lat ]);
//   map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0  });
// };

// export { initMapbox };
// import mapboxgl from 'mapbox-gl';

// const mapElement = document.getElementById('map');

// const buildMap = () => {
//   mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
//   return new mapboxgl.Map({
//     container: 'map',
//     style: 'mapbox://styles/mapbox/streets-v10'
//   });
// };

// const addMarkersToMap = (map, markers) => {
//     new mapboxgl.Marker()
//       .setLngLat([ markers.lng, markers.lat ])
//       .addTo(map);
// };


// const fitMapToMarkers = (map, markers) => {
//   const bounds = new mapboxgl.LngLatBounds();
//   bounds.extend([ markers.lng, markers.lat ]);
//   map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
// };

// const initMapbox = () => {
//   if (mapElement) {
//     const map = buildMap();
//     const markers = JSON.parse(mapElement.dataset.markers);
//     addMarkersToMap(map, markers);
//     fitMapToMarkers(map, markers);
//   }
// };

// const initMapbox = () => {
//   const mapElement = document.getElementById('map');

//   if (mapElement) { // only build a map if there's a div#map to inject into
//     mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
//     const map = new mapboxgl.Map({
//       container: 'map',
//       style: 'mapbox://styles/mapbox/streets-v10'
//     });
//   }
// };
import mapboxgl from 'mapbox-gl';

const initMapbox = () => {
  const mapElement = document.getElementById('map');
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  const markers = JSON.parse(mapElement.dataset.markers);
  const map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v9',
    center: [ markers.lng, markers.lat ],
    zoom: 12
  });
  new mapboxgl.Marker()
    .setLngLat([ markers.lng, markers.lat ])
    .addTo(map);
};

export { initMapbox };
