<!--==========================
   Intro Section Carousel
 ============================-->
 <section id="intro">
   <div class="intro-container">
     <div id="introCarousel" class="carousel  slide carousel-fade" data-ride="carousel">
       @foreach($carousels as $carousel)
       <ol class="carousel-indicators">
         <li data-target="#carousel-example-generic" data-slide-to="{{ $loop->index }}" class="{{ $loop->first ? 'active' : '' }}"></li>
       </ol>
       @endforeach
       <div class="carousel-inner" role="listbox">
         @foreach($carousels as $carousel)  
         <div class="carousel-item {{ $loop->first ? 'active' : '' }}">
           <div class="carousel-background"><img src="{{ $carousel->file }}" alt=""></div>
           <div class="carousel-container">
             <div class="carousel-content">
               <h2>{{ $carousel->title }}</h2>
               <p>{{ $carousel->description }}</p>
               <a href="#featured-services" class="btn-get-started scrollto">Get Started</a>
             </div>
           </div>
         </div>
           @endforeach
       <a class="carousel-control-prev" href="#introCarousel" role="button" data-slide="prev">
         <span class="carousel-control-prev-icon ion-chevron-left" aria-hidden="true"></span>
         <span class="sr-only">Previous</span>
       </a>

       <a class="carousel-control-next" href="#introCarousel" role="button" data-slide="next">
         <span class="carousel-control-next-icon ion-chevron-right" aria-hidden="true"></span>
         <span class="sr-only">Next</span>
       </a>

     </div>
   </div>
 </section><!-- #intro -->