<template>
  <div class="banner">
    <p class="crypto">All Cryptocurrencies</p>
  </div>
  <div class="body">
    <button class="Click" @click="sortbyName()">Sort</button>
    <table class="table">
      <thead>
        <tr class="heading">
          <th>Coin Name</th>
          <th>Coin Symbol</th>
          <th>Price</th>
          <th>1h Move</th>
          <th>Market Cap</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="coin in coins" :key="coin.id">
          <td>{{ coin.name }}</td>
          <td>{{ coin.symbol }}</td>
          <td>{{ coin.current_price }}</td>
          <td>{{ coin.price_change_percentage_1h_in_currency }}%</td>
          <td>{{ coin.market_cap }}</td>
        </tr>
      </tbody>
    </table>
 
  
  <div class="container mt-5">
  <h2 id="contact">Contact Us</h2>
  <div class="row">
    <div class="col-md-6">
      <form class="form">
        <div class="form-group">
          <label for="name">Name:</label>
          <input type="text" class="form-control" id="name" placeholder="Enter your name">
        </div>
        <div class="form-group">
          <label for="email">Email:</label>
          <input type="email" class="form-control" id="email" placeholder="Enter your email">
        </div>
        <div class="form-group">
          <label for="message">Message:</label>
          <textarea class="form-control" id="message" rows="5" placeholder="Enter your message"></textarea>
        </div>
        <button type="submit" class="btn">Submit</button>
      </form>
    </div>
    <div class="col-md-6">
      <h4 class="h4">Contact Information</h4>
       <br>
      <p>CALL US<br>
 +27 (0)21 700 4800<br>
Monday - Friday, 8am - 5pm</p>
      <p>SEND US A MESSAGE <br>
 During business hours, we will respond within 48 hours.<br>
Email us on: support@sharenet.co.za</p>

      <p>HEAD OFFICE<br>
301, 3rd Floor Imperial Terraces<br>
Tyger Waterfront<br>
Carl Cronje Drive<br>
Bellville, Cape Town
7530</p>
    </div>
  </div>
  <div class="frame">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3312.470528929209!2d18.627792725692466!3d-33.877533769511196!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x1dcc50bb404a93df%3A0x7024c4cbddf90b5c!2sImperial%20Terrace!5e0!3m2!1sen!2sza!4v1692875069030!5m2!1sen!2sza" width="1000" height="240" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
  </div>
</div>
</div>
<footer class="footer">
  <router-link to="/">Home</router-link> |
  <router-link @click="scrollToHeading()" to="/contact">Contact Us</router-link><br>
  Copyright &copy; 2023 Sharenet
</footer>
</template>

<script>
import { mapGetters, mapActions } from "vuex";
export default {
  name: "Banner",
  computed: {
    ...mapGetters(["coins"]),
  },
  methods: {
    ...mapActions(["fetchCoins"]),
    sortbyName() {
      // Your coins array
      // Sort the coins array by name
      this.coins.sort((a, b) => a.name.localeCompare(b.name));

    },
  },
  created() {
     this.fetchCoins()
  },
};
</script>
<style scoped>
.banner {
  background-image: url('https://i.postimg.cc/6qSRxGn0/Digital-Process-Automation.jpg');
  background-size: cover;
  background-repeat: no-repeat;
  height: 40vh;
  color: white;
  text-align: center;
  padding: 10px;
  font-size:70px;
  font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
}
.table {
  /*align-items: center; /* Center vertically */
  height: 50vh; /* Adjust the height to center vertically within the viewport */
  width:80vw;
  margin-top: 40px;
  color:#101314;
  transform: translateX(11%);
  
}
.h4{
  margin-top: 55px;
}
.heading{
  background-color: #36454F;
  color:whitesmoke;
  font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
  font-size:larger;
  padding-right: 500px;
  text-transform: uppercase;
}
.body{
  background: linear-gradient(to bottom, lightskyblue, #36454F);
}
.container {
  margin-top: 80px;
  padding-bottom: 10px;
}
p.crypto{
  margin-top: 100px;
}
.form{
  margin-top: 55px;
}
.col-md-6{
  color:whitesmoke;
}
h2{
  text-transform: uppercase;
  color:white;
  font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
}
.footer {
      text-align: center;
      padding: 10px;
      background-color: #f8f9fa; /* Light grey background color */
    }
    .frame{
     margin-top: 45px;
    }

    .Click{
      background-color: #36454F;
      color:white;
      width: 150px;
      margin-top: 50px;
      border: none;
    }

    .btn{
      background-color: #36454F;
      color:white;
      width: 150px;
      margin-top: 10px;
    }
    #contact{
      margin-top: 100px;
    }
    @media (max-width: 600px) {
        .crypto {
    font-size:40px;
  }
}
@media (max-width: 600px) {
        iframe{
  width:400px;
  height: 180px;
  }
}
</style>
