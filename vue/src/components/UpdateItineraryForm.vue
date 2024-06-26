<template>
    <div class="itinerary-container">
        <div id="itinerary-form">
            <div>
                <label for="itineraryNameText">Itinerary Name:</label>
                <input type="text" name="itineraryNameText" id="itineraryNameText" v-model="editItinerary.itineraryName">
            </div>
            <div>
                <label for="startingPointText">Starting Location:</label>
                <input type="text" name="startingPointText" id="startingPointText"
                    @change="updateStartingLandmark($event.currentTarget.value)"
                    :value="editItinerary.listOfStops[0].landmarkName">
            </div>
            <div>
                <label for="dateSelector">Tour Date:</label>
                <input type="date" id="dateSelector" v-model="editItinerary.tourDate" :min="minDate">
            </div>
        </div>
        <div>
            <p>Drag and drop to reorder stops:</p>
        </div>
        <draggable v-model="editItinerary.listOfStops" tag="ul" itemKey="landmarkId">
            <template #item="{ element: stop }">
                <div class="button-container"><button>
                        <li>{{ stop.landmarkName }}</li><i class="fas fa-trash-alt"
                            @click="removeLandmark(stop.landmarkId)"></i>
                    </button></div>
            </template>

        </draggable>
        <div class="tooling-button-div">
            <div class="tooling-button">
                <button @click="updateItinerary" :disabled="!canSave">Save Itinerary</button>
            </div>
            <div class="tooling-button">
                <button @click="cancelItineraryForm">Cancel Changes</button>
            </div>
            <div class="tooling-button">
                <button v-if="isLoggedIn && isLoggedInUsersItinerary" @click="deleteItinerary">
                    Delete Itinerary
                </button>
            </div>
        </div>

    </div>
</template>
  
<script>
import itineraryService from '../services/ItineraryService';
import draggable from 'vuedraggable';
import landmarkService from '../services/LandmarkService';

export default {

    components: {
        draggable,
    },

    props: {
        itinerary: {
            type: Object,
            required: true,
        }
    },

    data() {
        return {
            editItinerary: {
                itineraryId: this.itinerary.itineraryId,
                userId: this.itinerary.userId,
                itineraryName: this.itinerary.itineraryName,
                startingLocationId: this.itinerary.startingLocationId,
                startingLocationName: this.itinerary.startingLocationName,
                tourDate: this.itinerary.tourDate,
                listOfStops: this.itinerary.listOfStops
            },

            canSave: true,

        }
    },

    computed: {

        // Compute today's date in the format 'YYYY-MM-DD'
        minDate() {
            const today = new Date();
            const year = today.getFullYear();
            const month = String(today.getMonth() + 1).padStart(2, '0');
            const day = String(today.getDate()).padStart(2, '0');
            return `${year}-${month}-${day}`;
        },

        isLoggedInUsersItinerary() {
            return this.itinerary.userId === this.$store.state.user.id;
        },

        isLoggedIn() {
            return this.$store.getters.isLoggedIn;
        },

    },

    methods: {
        updateItinerary() {
            if (!this.validateForm()) {
                return;
            }

            itineraryService
                .updateItinerary(this.editItinerary)
                .then(response => {
                    if (response.status >= 200 && response.status < 300) {
                        this.$store.commit(
                            'SET_NOTIFICATION',
                            {
                                message: 'You itinerary was updated.',
                                type: 'success'
                            }
                        );
                        this.$router.push({ name: 'itineraryDetail', params: { itineraryId: this.editItinerary.itineraryId } });
                    }
                })
                .catch(error => {
                    this.handleErrorResponse(error, 'adding');
                });


        },

        cancelItineraryForm() {
            this.$router.push({ name: 'itineraryDetail', params: { itineraryId: this.editItinerary.itineraryId } });
        },

        handleErrorResponse(error, verb) {
            if (error.response) {
                this.$store.commit('SET_NOTIFICATION',
                    "Error " + verb + " itinerary. Response received was '" + error.response.statusText + "'.");
            } else if (error.request) {
                this.$store.commit('SET_NOTIFICATION', "Error " + verb + " itinerary. Server could not be reached.");
            } else {
                this.$store.commit('SET_NOTIFICATION', "Error " + verb + " itinerary. Request could not be created.");
            }
        },

        deleteItinerary() {
            if (confirm("Are you sure you want to delete the itinerary?")) {

                itineraryService.deleteItinerary(this.itinerary.itineraryId)
                    .then(response => {
                        this.$store.commit('SET_NOTIFICATION',
                            {
                                message: 'Itinerary has been deleted',
                                type: 'success'
                            });
                        this.$router.push({ name: 'itineraryList' })
                    }).catch(error => {
                        if (error.response) {
                            this.$store.commit('SET_NOTIFICATION',
                                "Error deleting itinerary. Response received was '" + error.response.statusText + "'.");
                        } else if (error.request) {
                            this.$store.commit('SET_NOTIFICATION', "Error deleting itinerary. Server could not be reached.");
                        } else {
                            this.$store.commit('SET_NOTIFICATION', "Error deleting itinerary. Request could not be created.");
                        }
                    })
            }
        },

        validateForm() {
            let msg = '';
            if (this.editItinerary.itineraryName.length === 0) {
                msg += 'The itinerary must have a name.';
            }
            if (this.editItinerary.startingLocationName.length === 0) {
                msg += 'The itinerary must have a starting location.';
            }
            if (this.editItinerary.tourDate.length === 0) {
                msg += 'The itinerary must have a date of today or later.';
            }
            if (msg.length > 0) {
                this.$store.commit('SET_NOTIFICATION', msg);
                return false;
            }
            return true;
        },

        removeLandmark(landmarkId) {
            if (confirm("Are you sure you want to delete this stop?")) {
                this.editItinerary.listOfStops = this.editItinerary.listOfStops.filter(stop => stop.landmarkId != landmarkId);

            }
        },

        updateStartingLandmark(landmarkName) {
            this.canSave = false;
            this.editItinerary.startingLocationName = landmarkName;
            landmarkService.getLandmarksByName(landmarkName).then(response => {
                const landmark = response.data[0];

                
                this.editItinerary.startingLocationId = landmark.landmarkId;
                if (this.editItinerary.listOfStops[0].landmarkId != this.editItinerary.startingLocationId) {
                    this.editItinerary.listOfStops[0] = landmark;
                }
                this.canSave = true;
            }).catch



        }

    },
}

</script>

<style scoped>
.itinerary-container {
    display: flex;
    flex-direction: column;
    justify-content: space-around;
    width: 70vw;
    height: auto;
}

#itinerary-form {
    display: flex;
    flex-direction: column;
    align-items: flex-start;
}

.tooling-button-div {
    width: 80%;
    display: flex;
    align-items: center;
    justify-content: space-around;
}

draggable {
    display: flex;
    width: 90%;
    flex-grow: 1;
}

.button-container button {
    width: 22rem;
    display: flex;
    justify-content: space-between;
}

li {
    flex-grow: 1;
    justify-content: space-between;
}</style>