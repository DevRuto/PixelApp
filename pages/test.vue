<template>
  <div class="lg:container lg:mx-auto px-5">
    <h1>Replay Viewer</h1>

    <div id="replayViewer" ref="viewerDiv" />
  </div>
</template>

<script lang="ts">
import Vue from 'vue';
export default Vue.extend({
  data: () => ({
    viewer: {} as any
  }),
  created () {
    this.$nextTick(() => {
      this.viewer = new Gokz.ReplayViewer(this.$refs.viewerDiv);
      const viewer = this.viewer;
      viewer.mapBaseUrl = '//static.ruto.sh/resources/maps';

      const replayUrl = '/replay/kz_11342_skz.replay';
      console.log(replayUrl);
      viewer.loadReplay(replayUrl);
      viewer.animate();
    });
  }
});
</script>
