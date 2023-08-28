<template>
  <nav>
    <router-link to="/">Home</router-link> |
    <router-link @click="scrollToHeading()" to="/contact">Contact Us</router-link>
      <img src="https://i.postimg.cc/j22q3Zv5/Sharenet-Logo_transparent.png" alt="Logo" />
    
  </nav>
  <router-view/>
</template>
<script>
export default {
  methods: {
    scrollToHeading() {
      const headingElement = document.getElementById('contact');
      if (headingElement) {
        headingElement.scrollIntoView({ behavior: 'smooth' });
      }
    }
  }
};
</script>





<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

nav {
  padding: 30px;
  text-align: right;
  font-size: larger;

}

nav a {
  font-weight: bold;
  color: #2c3e50;

 
}

nav a.router-link-exact-active {
  color: lightskyblue;
}
.logo{
  width:  10px;
}
img{
  height: 40px;
  width: 150px;
  display:flex;
  transform: translateY(-70%);

}
</style>
  





