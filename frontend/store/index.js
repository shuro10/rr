export const actions = {
  nuxtClientInit({ commit }) {
    if (localStorage.getItem("vuex")) {
      const data = JSON.parse(localStorage.getItem("vuex")) || []
      // ログインしている場合localstorageからユーザー情報を取得
      if (data.auth.currentUser != null) {
        commit("auth/setCurrentUser", data.auth.currentUser)
      }
    }
  },
}

/* 
export const state = () => ({
  isCalled: false
})

export const getters = {
  isCalled: (state) => state.isCalled
}

export const mutations = {
  setIsCalled(state) {
    state.isCalled = true
  }
}

export const actions = {
  nuxtClientInit({ commit }, context) {
    commit('setIsCalled')
  }
} */


