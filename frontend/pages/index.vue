<template>
	<div class="container">
		<div>
			<h1 class="title">
				Zenn-app
			</h1>
			<h2>
				{{ subTitle }}
			</h2>
			<button @click="getSomething">
				タスク取得
			</button>
       <ul v-for=" task in tasks" :key="task.id">
        <li style="text-align: left;">{{ task.title }}</li>
      </ul>
		</div>
	</div>
</template>

<script>
import Logo from '~/components/Logo.vue'
import VuetifyLogo from '~/components/VuetifyLogo.vue'

export default {
	data() {
		return {
			subTitle: 'Zenn is good service!!'
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
