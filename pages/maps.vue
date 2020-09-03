<template>
  <div class="flex flex-wrap mx-auto px-64 py-10">
    <div
      v-for="map of maps"
      :key="map.name"
      class="max-w-sm rounded overflow-hidden shadow-lg bg-gray-700 hover:bg-gray-800 cursor-pointer w-48 mx-2"
    >
      <img class="w-full" :src="`https://bitbucket.org/kztimerglobalteam/map-images/raw/master/webp/thumb/${map.name}.webp`">
      <div class="px-6 py-4">
        <div class="font-bold text-xl text-white mb-2">
          {{ map.name }}
        </div>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import Vue from 'vue';
export default Vue.extend({
  data: () => ({
    maps: [] as any[]
  }),
  created () {
    this.maps = [
      {
        name: 'kz_11342',
        created: '2020-08-30T16:15:51.984063'
      },
      {
        name: 'kz_baxter',
        created: '2020-08-30T19:42:27.924232'
      }
    ];
  }
});
</script>
