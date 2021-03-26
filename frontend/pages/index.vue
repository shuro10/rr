<template>
	<div class="container">
		<div>
			<v-card
				height="300"
				flat
			>
			<h1 class="title">
				Hi!
			</h1>
			<h2>
				{{ subTitle }}
			</h2>
			<br>
			<button @click="getSomething">
				GetTask
			</button>
      <ul v-for=" task in tasks" :key="task.id">
        <li style="text-align: left;">{{ task.title }}</li>
      </ul>
		<br>
			<v-btn
        dark
        color="red darken-2"
			 	@click="snackbar = true"
      >
        Open Snackbar
      </v-btn>
 
      <v-snackbar
        v-model="snackbar"
        :multi-line="multiLine"
      >
        {{ text }}
  
        <template v-slot:action="{ attrs }">
          <v-btn
            color="red"
            text
            v-bind="attrs"
            @click="snackbar = false"
          >
            Close
          </v-btn>
        </template>
      </v-snackbar>


 			</v-card>
 	  </div>
	</div>

</template>

<script>
import Logo from '~/components/Logo.vue'
import VuetifyLogo from '~/components/VuetifyLogo.vue'

export default {
	data() {
		return {
			subTitle: 'Hello Vue!! 😆',
  	  multiLine: true,
	    snackbar: false,
	    text: `I'm a multi-line snackbar.`,
		}
	},
	methods: {
    async getSomething() {
      const response = await this.$axios.$get('http://localhost:5000/api/v1/tasks')
      this.tasks = JSON.parse(response.tasks)
    }
	},
}
</script>
