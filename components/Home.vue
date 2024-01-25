<template>
  <v-parallax
    height="100vh"
    :src="require('@/assets/images/dark-background.jpg')"
    alt="Banner"
  >
    <!-- TODO: add v-waypoint="{ active: true, callback: onWaypoint }" -->
    <v-container id="home" fluid class="text-center home">
      <div class="banner-wrapper">
        <div
          class="banner d-flex justify-center align-center rellax flex-column"
        >
          <div>
            <v-avatar class="my-5"
              color="accent"
              size="250"
            >
              <img
                src="@/assets/images/behnam.JPEG"
                alt="John"
              >
            </v-avatar>
          </div>
          <div class="banner-text">Hi, I am</div>
          <div class="full-name">Behnam Bashiri</div>
          <vue-typed-js
            class="justify-center"
            :loop="true"
            :type-speed="50"
            :back-speed="50"
            :strings="[
              'Full stack developer',
              'project manager',
              'Network manager',
              'DevOps'
            ]"
          >
            <div class="sub-text">
              I'm a <span class="typing font-weight-bold">FullStack Developer</span>
            </div>
          </vue-typed-js>
        </div>
        <div class="scroll-gif">
          <img alt="scroll" src="@/assets/images/scroll.gif" />
        </div>
      </div>
    </v-container>
  </v-parallax>
</template>
<script>

export default {
  data() {
    return {
    }
  }
}
</script>

<style lang="scss" scoped>
.home {
  height: 100vh;
  .full-name {
    color: #aca7c5;
    text-transform: uppercase;
    font-weight: 400;
    font-size: 4rem;
    line-height: 4rem;
    margin-bottom: 1rem;
  }
  .scroll-gif {
    position: absolute;
    bottom: 2rem;
    width: 100%;
    img {
      height: 5.625rem;
    }
  }
  .banner-text {
    font-size: 1.5rem;
    margin-bottom: 1rem;
  }
  .banner {
    height: 100%;
    position: absolute;
    width: 100%;
    z-index: 2;
  }
  .sub-text {
    font-size: 1.5rem;
    margin-bottom: 1rem;
  }
  .banner-wrapper {
    position: relative;
    height: 100%;
  }
  @media screen and (max-width: 767px) {
    .full-name {
      font-size: 2rem;
      line-height: 2.5rem;
    }
  }
}
</style>
