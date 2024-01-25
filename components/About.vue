<template>
  <!-- TODO: add v-waypoint="{ active: true, callback: onWaypoint }" -->
  <v-container fluid class="about portfolio-container">
    <div id="about" class="px-4">
      <div class="section-title">About me</div>
      <div class="mb-6 text-center" data-aos="fade-up">
        <img class="me-img" src="@/assets/images/me.jpg" />
      </div>
      <div class="quotes text-center mb-10" data-aos="fade-up">
        <q>
          Fostering code is not just an art, but a language through which we script an endless tale of our capabilities and thoughts on digital pages.
        </q>
        <br />
      </div>
      <div class="content" data-aos="fade-up">
        <p>
          Hi, I'm a Full stack developer specialised in both frontend and
          backend development for building complex and scalable web apps. I’ve
          always sought out opportunities and challenges that are meaningful to
          me. Over the past years, I have collaborated with incredible teams
          and involved in all stages of software development life cycle.
        </p>
        <p>
          I also love to sketch and do crafts. These skills made me believe in
          "A problem visualised is a problem halved."
        </p>
      </div>
      <div data-aos="fade-up">
        <Technologies />
      </div>
    </div>
  </v-container>
</template>

<script>
import Technologies from '@/components/Technologies'

export default {
  components: {
    Technologies
  }
}
</script>

<style lang="scss" scoped>
.about {
  color: white;

  .content {
    padding: 0 3rem;
    p {
      font-size: 1.2rem;
      line-height: 150%;
    }
  }

  .quotes {
    margin: 2rem auto 0;
    font-size: 2rem;
    max-width: 50rem;
  }

  .me-img {
    height: 12rem;
    width: 12rem;
    border-radius: 50%;
    border: 2px solid rgb(54, 51, 51);
    object-fit: cover;
  }
}
@media screen and (max-width: 767px) {
  .content {
    padding: 0 !important;
  }
}
</style>
