<!-- Written directions generated when user creates a route from itinerary -->

<template>
    <div id="directionsBox">
        <div id="collapseBTN">
            <span @click="collapse">- COLLAPSE</span>
        </div>
        <div v-for="(step, index) in steps" :key="index" id="directionStep">
            <div id="step">
                Step {{ index + 1 }}:
            </div>
            <span v-html="step.html_instructions"></span>
        </div> 
    </div>
</template>

<script>

export default {
    props: ['thisRoute', 'index'],

    data() {
        return {
    
        }
    },

    computed: {

        steps() {
            return this.thisRoute.legs[0].steps;
        }
    },
    methods: {
        collapse() {
            this.$emit('collapse', this.index);
        }
    }
}


</script>

<style scoped>

#collapseBTN {
    padding-right: 5px;
    display: flex;
    align-items: center;
    justify-content: flex-end;
    height: 25px;
    font-size: 1.25rem;
    font-weight: 700;
    cursor: pointer;
    margin-bottom: 25px;
}

#directionsBox {
    display: flex;
    flex-direction: column;
    justify-content: flex-start;
    margin: 0 10px 0 5px;
}

#directionStep {
    display: flex;
    margin-bottom: 7px;
}

#step {
    display: inline;
    font-weight: 800;
    margin-right: 10px;
}
</style>