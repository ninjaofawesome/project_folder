<!--     <div class="jumbotron">
      <div class="container">
        <h1>Here's the information about the Artist</h1>
      </div>
    </div>

    <div class="container">
      <!-- Example row of columns -->
      <div class="row">
        <div class="col-md-4">
          <h2>All the Artists and bands</h2>
			<p> <%= @artist_output %></p>
        </div>
        <div class="col-md-4">
		  <h2>How many Artists and bands?</h2>
			<p> <%= @band_count %></p>
       </div>
        <div class="col-md-4">
           <h2>The Artists and their songs.</h2>
			<p> <%= @big_list %></p>
        </div>
      </div>

       <div class="row">
        <div class="col-md-6">  
		  <h2>How many songs by each artist?</h2>
			<p> <%= @artist_count %></p>
       </div>
        <div class="col-md-6">
			<h2>If you really want to destroy your music collection, click here.</h2>
			<button> <%= @salt_the_earth %></button>
          <p><a class="btn btn-default" href="<%= @salt_the_earth %>" role="button">Salt The Earth</a></p>
        </div>
      </div>

      <hr>

      <footer>
        <p>Hooray!</p>
      </footer>
          </div> 