export const state = () => ({
  user: {},
})

export const getters = {
  user: (state) => state.user,
}

export const mutations = {
  setUser(state, user) {
    state.user = user
  },
}

export const actions = {
  async getUser({ commit }, paramsId) {
    await this.$axios
      .$get(`/api/v1/users/${paramsId}`)
      .then((res) => {
        console.log(res.data)
        commit('setUser', res.data)
      })
      .catch((err) => {
        console.log(err)
        return err
      })
  },
}

/* ============== user {} リセット ==============  */
// const initialState = {
//   // 通常stateに記載する値を記載
//   user: {},
// }

// export const state = () => Object.assign({}, JSON.parse(JSON.stringify(initialState)))

// export const getters = {
//   user: (state) => state.user,
// }

// export const mutations = {
//   INIT_DATA(state) {
//     Object.assign(state, JSON.parse(JSON.stringify(initialState)))
//   }
// }

// export const actions = {
//   initData({ commit }) {
//     commit('INIT_DATA')
//   }
// }
/* ============== end: user {} リセット ==============  */
