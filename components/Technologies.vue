<template>
  <div class="technologies">
    <div class="technologies-title d-flex justify-center align-center">
      Technologies I <img class="heart" src="@/assets/images/heart.png" />
    </div>
    <v-carousel cycle hide-delimiter-background hide-delimiter class="mt-10">
      <v-carousel-item
        v-for="(skill, i) in skills"
        :key="i"
      >
        <v-card class="tech-card text--primary" rounded="md" flat>
          <v-row>
            <v-col v-for="item in skill" :key="item.name" cols="6" md="2">
              <div class="tech">
                <img
                  class="technologies-logo"
                  :src="require(`@/assets/images/logos/${item.image}`)"
                />
                <p>{{ item.name }}</p>
              </div>
            </v-col>
          </v-row>
        </v-card>
      </v-carousel-item>
    </v-carousel>
  </div>
</template>

<script>

export default {
  data() {
    return {
      skills: [
[        {name:'Python',image:'python.png'},
        {name:'Django',image:'django.png'},
        {name:'FastApi',image:'fastapi.svg'},
        {name:'Scrapy',image:'scrapy.png'},
        {name:'RabbitMq',image:'rabbitmq.png'},
        {name:'Rust',image:'rust.png'},
        {name:'MongoDB',image:'mongodb.png'},
        {name:'Postgres',image:'postgres.png'},
        {name:'DevOps',image:'devops.png'},
        {name:'Docker',image:'docker.png'},
        {name:'Trello',image:'trello.png'},
        {name:'Jira',image:'jira.svg'},
        ],
[
        {name:'TypeScript',image:'typescript.png'},
        {name:'JavaScript',image:'javascript.png'},
        {name:'Css',image:'css.png'},
        {name:'Scss',image:'scss.png'},
        {name:'Html',image:'html.png'},
        {name:'Bootstrap',image:'bootstrap.png'},
        {name:'Qwik',image:'qwik.png'},
        {name:'Vue',image:'vue.png'},
        {name:'Vuetify',image:'vuetify.png'},
        {name:'Nuxt',image:'nuxt.svg'},
        {name:'React',image:'react.svg'},
        {name:'Cisco',image:'cisco.jpg'},
        ]
      ]
    }
  }
}
</script>

<style lang="scss" scoped>
.technologies {
  .technologies-title {
    font-size: 1.4375rem;
    font-weight: bold;
    margin-top: 3rem;
  }
  .technologies-logo {
    height: 3rem;
    width: 3rem;
    object-fit: contain;
    margin: 2rem;
  }
  .tech-card {
    background: #131313;
    .tech {
      flex-direction: column;
      display: flex;
      align-items: center;
      background: #323030;
      border-radius: 8px;
    }
  }
  .heart {
    height: 2.4375rem;
  }
}
</style>
