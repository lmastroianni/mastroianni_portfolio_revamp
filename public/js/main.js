

console.log("Java Script Linked Up");



//HAMBURGER TOGGLE

// (function(){
// 	"use strict";

// 	console.log("fired");

// 	var button = document.querySelector("#button");
// 	var burgerCon = document.querySelector("#burgerCon");

// 	function hamburgerMenu() {
// 		burgerCon.classList.toggle("slideToggle");
// 		button.classList.toggle("expanded");
// 	}

// 	button.addEventListener("click", hamburgerMenu, false);


//DEFINE LIGHTBOX (POPOVER)
const seeMoreButtons = document.querySelectorAll('.see-more'),
        popOver = document.querySelector('.popover');

		function buildPopover(data) {
            popOver.querySelector(".Headings").textContent = ` ${data.Headings}`;
			popOver.querySelector(".Copy").textContent = ` ${data.Copy}`;
			popOver.querySelector(".Tools").textContent = `Tools: ${data.Tools}`;

			let popOverVideos = popOver.querySelector("video");
		if (data.Videos) {
			popOverVideos.src = `video/${data.Videos}`;
			popOverVideos.style.visibility = "visible";
		}else {
			popOverVideos.style.visibility = "hidden";
		}
            
            // SHOW POPOVER
            popOver.classList.add('show-popover');
			// el.appendChild(popOver);
			
		}

		function closePopover(){
			popOver.classList.remove('show-popover');
		  }
	  


			function fetchData() {
				let targetEl = this,
				  url = `/svgdata/${this.dataset.target}`;
			  
				  fetch(url)
				  .then(res => res.json())
				  .then(data => {
					  console.log(data);
	  
					  // populate the popover
					  buildPopover(data, targetEl);
				  })
				  .catch((err) => console.log(err));
			}

			//  const portfolio = document.querySelector(".svg-wrapper");

			// portfolio.addEventListener("click", function() {
			//   	console.log(this);
			//  })

			
			seeMoreButtons.forEach(button => button.addEventListener("click", fetchData));

			

			document.querySelector('.popover #close').addEventListener("click",closePopover);

/// SCROLL ////

// var myNav = document.getElementById('mynav');
// window.onscroll = function () { 
//     "use strict";
//     if (document.body.scrollTop >= 200 ) {
//         myNav.classList.add("nav-colored");
//         myNav.classList.remove("nav-transparent");
//     } 
//     else {
//         myNav.classList.add("nav-transparent");
//         myNav.classList.remove("nav-colored");
// 	}
	
// 	// if (document.body.scrollTop >= 200 || document.documentElement.scrollTop >= 200 )
// };
			  
			  

			
			

   


    

		