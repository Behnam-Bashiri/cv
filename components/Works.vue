<template>
  <v-container id="works" fluid class="works portfolio-container">
    <div class="px-4">
      <div class="section-title">Recent works</div>
      <div class="works-description">
        I have worked in 10+ projects in various Javascript technologies by
        collaborating with some incredible teams and also by independently
        handling project that involves agile methodology.
      </div>
      <v-row class="px-5">
        <v-col
          v-for="(project, index) in projects"
          :key="index"
          cols="12"
          sm="4"
        >
          <Project :project="project" />
        </v-col>
      </v-row>
      <v-row no-gutters class="work-traits">
        <v-col class="text-center px-4" cols="12" sm="4">
          <img alt="tailored" class="work-img" src="@/assets/images/paint-roller.png" />
          <div class="work-title">Tailored to your needs</div>
        </v-col>
        <v-col class="text-center px-4" cols="12" sm="4">
          <img alt="perfect code" class="work-img" src="@/assets/images/design-tool.png" />
          <div class="work-title">Perfect code</div>
        </v-col>
        <v-col class="text-center px-4" cols="12" sm="4">
          <img alt="built with love" class="work-img" src="@/assets/images/like.png" />
          <div class="work-title">Built with love</div>
        </v-col>
      </v-row>
    </div>
  </v-container>
</template>

<script>
import Project from '@/components/Project'

export default {
  components: {
    Project
  },
  data() {
    return {
      projects: '',
      moreProjects: ''
    }
  }
}
</script>

<style lang="scss" scoped>
.works {
  .work-img {
    height: 6rem;
  }
  .work-title {
    font-size: 1.4375rem;
    font-weight: bold;
    margin: 1rem 0;
  }
  .works-description {
    font-size: 1.3rem;
    line-height: 2rem;
    margin-bottom: 2rem;
  }
  .work-traits {
    margin-top: 5rem;
  }
}
</style>
