<!-- display the map of city with landmarks -->
<!-- test src="https://maps.googleapis.com/maps/api/staticmap?size=400x400&center=40.4396178,-79.94676969999999&zoom=13&path=weight:4%7Ccolor:red%7Cenc:sjyuFhr}fNnA[l@WZUZFLFEWCo@BoBQoBYgBWq@k@q@y@w@y@w@]a@Wg@O_AEq@Dg@No@L[h@cAV]hBqA`@YNSVs@Ni@?w@Ag@F}@b@oCXyAr@oCp@aCd@{BPoA?wAW}C?eCEmEAi@?LM^i@n@y@v@cAx@s@r@yA{GuByJuBeJq@}CYwAYcFw@sMcBmZ_OrCgRxD_@?YC{Bq@uEwAuGoBs@QWAGm@G?OAIEGcA&key=AIzaSyBqJyZCzD-m22Izo98cXLx_PcND6cHoKWI" -->

<template>
    <div id=mapDiv>
        <div id="destination">Destination: {{destination}}</div>
        <div id="distance">Distance: {{ distance.text }}</div>
        <img :src=mapURL alt="map route" id="map">
        <a :href="url" :target="'_blank'">Click to see Interactive Map for your Destination</a>
    </div>
</template>

<script>


export default {

    props: ['thisRoute', 'url', 'destination'],

    data() {
        return {

        }
    },

    computed: {

        distance() {
            return this.thisRoute.legs[0].distance;
        },

        zoomLevel() {
            let zoom = '9';

            if (this.distance.value < 750) {
                zoom = '15';
            } else if (this.distance.value < 2000) {
                zoom = '14';
            } else if (this.distance.value < 4000) {
                zoom = '13';
            } else if (this.distance.value < 8000) {
                zoom = '12';
            } else if (this.distance.value < 15000) {
                zoom = '11';
            } else if (this.distance.value < 20000) {
                zoom = '10';
            } else {
                zoom = '9';
            }
            return zoom.toString();
        },

        latitude() {
            return this.thisRoute.legs[0].start_location.lat.toString();
        },

        longitude() {
            return this.thisRoute.legs[0].start_location.lng.toString();
        },

        polyline() {
            return this.thisRoute.overview_polyline.points;
        },

        mapURL() {
            const baseURL = 'https://maps.googleapis.com/maps/api/staticmap?size=400x400&center=';
            const lat = this.latitude;
            const comma = ',';
            const lng = this.longitude;
            const zoomURL = '&zoom=';
            const zoomLevel = this.zoomLevel;
            const middleURL = '&path=weight:7%7Ccolor:red%7Cenc:';
            const line = this.polyline;
            const APIKey = '&key=AIzaSyBqJyZCzD-m22Izo98cXLx_PcND6cHoKWI';

            return (baseURL + lat + comma + lng + zoomURL + zoomLevel + ('&markers=size:mid|color:yellow|label:D|') + lat + comma + lng + middleURL + line + APIKey);
        }
    },

    created() {

    }
}

</script >

<style scoped>
#mapDiv {
    display: flex;
    flex-direction: column;
}

#distance {
    padding-left: 5px;
    display: flex;
    align-items: center;
    justify-content: flex-start;
    height: 25px;
    font-size: 15px;
    font-weight: 700;
}

#destination {
    padding-left: 5px;
    display: flex;
    align-items: center;
    justify-content: flex-start;
    height: 25px;
    font-size: 20px;
    font-weight: 700;
}

#map {
    margin: 0 5px 5px 5px;
    border-radius: 3px;
}

a {
    text-align: center;
    font-size: 17px;
    font-weight: 700;
    color: #2A2E34;
}

a:hover {
    color: #E9EAEC;
}
</style>