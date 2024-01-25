<template>
  <v-container id="contact" fluid class="contact portfolio-container">
    <div class="section-title">Contact</div>
    <v-row no-gutters class="social-media">
      <v-col
        v-for="item in socialLinks"
        :key="item.name"
        class="contact-item"
        cols="12"
        sm="2"
        md="2"
      >
        <a
          v-if="item.name == 'Phone'"
          class="card-background"
          target="_blank"
          data-aos="fade-up"
        >
          <v-tooltip bottom v-if="item.name == 'Phone'">
            <template v-slot:activator="{ on, attrs }">
              <div class="card d-flex justify-center">{{ item.name }}</div>
            </template>
            <span>{{item.link}}</span>
          </v-tooltip>
        </a>
        <a
          v-else
          class="card-background"
          :href="item.link"
          target="_blank"
          data-aos="fade-up"
        >
          <div class="card d-flex justify-center">{{ item.name }}</div>
        </a>
      </v-col>
    </v-row>
    <div class="footer">
      <div class="copyright">© 2024 Behnwx</div>
    </div>
  </v-container>
</template>

<script>

export default {
  data() {
    return {
      socialLinks: [
        {name:'Linkedin',link:'https://www.linkedin.com/in/behnam-bashiri-880b211a5/'},
        {name:'GitHub',link:'https://github.com/Behnam-Bashiri'},
        {name:'Telegram',link:'https://t.me/behnwx7'},
        {name:'Instagram',link:'https://www.instagram.com/behnwx.7/'},
        {name:'Gmail',link:'mailto:behnambashiri@gmail.com'},
        {name:'Phone',link:'+989137246224'},
      ]
    }
  },
}
</script>

<style lang="scss" scoped>
.contact {
  margin-top: 3rem;
  display: flex;
  flex-direction: column;

  .copyright {
    color: grey;
  }

  .social-media {
    margin: 0 2rem;

    .card-background {
      height: 100%;
      width: 100%;
      display: flex;
      justify-items: center;
      padding: 1rem;
      text-decoration: none;
      color: white;
    }

    .card {
      margin: auto;
      display: flex;
      justify-items: center;
      height: 100%;
      width: 100%;
      padding: 2rem;
      font-size: 18px;
      font-weight: 500;
      border-radius: 10px;
      border: 2px solid #ffffff;
    }
  }

  .footer {
    margin: 2rem;
    text-align: center;
  }

  @media screen and (max-width: 767px) {
    .card {
      padding: 1rem !important;
    }
  }
}
</style>
