let products = {
  data: [
    //Hyundia
    {
      productName: "Hyundai Alcazar",
      category: "Hyundia",
      price: "17.74 lakhs",
      image: "car/Hyundia/car-1.webp",
    },
    {
      productName: "Hyundai Grand i10 Nios",
      category: "Hyundia",
      price: "6.30 lakhs",
      image: "car/Hyundia/car-2.webp",
    },
    {
      productName: "Hyundai Creta",
      category: "Hyundia",
      price: "12.02 lakhs",
      image: "car/Hyundia/car-3.webp",
    },
    {
      productName: "Hyundai Verna",
      category: "Hyundia",
      price: "10.70 lakhs",
      image: "car/Hyundia/car-4.webp",
    },
    {
      productName: "Hyundai i20",
      category: "Hyundia",
      price: "8.12 lakhs",
      image: "car/Hyundia/car-5.webp",
    },
    //Mahindra
    {
      productName: "Mahindra Bolero",
      category: "Mahindra",
      price: "10.55 lakhs",
      image: "car/mahindra/car-1.webp",
    },
    {
      productName: "Mahindra Scorpio Classic",
      category: "Mahindra",
      price: "13.81 lakhs",
      image: "car/mahindra/car-2.webp",
    },
    {
      productName: "Mahindra Scorpio-N",
      category: "Mahindra",
      price: "13.45 lakhs",
      image: "car/mahindra/car-3.webp",
    },
    {
      productName: "Mahindra Thar",
      category: "Mahindra",
      price: "15.62 lakhs",
      image: "car/mahindra/car-4.webp",
    },
    {
      productName: "Mahindra XUV700",
      category: "Mahindra",
      price: "15.53 lakhs",
      image: "car/mahindra/car-5.webp",
    },
    //Maruti Sizuki
    {
      productName: "Maruti XL6",
      category: "MarutiSizuki",
      price: "12.50 lakhs",
      image: "car/Maruti Sizuki/car-1.webp",
    },
    {
      productName: "Maruti Baleno",
      category: "MarutiSizuki",
      price: "7.24 lakhs",
      image: "car/Maruti Sizuki/car-2.webp",
    },
    {
      productName: "Maruti Ciaz",
      category: "MarutiSizuki",
      price: "9.92 lakhs",
      image: "car/Maruti Sizuki/car-3.webp",
    },
    {
      productName: "Maruti Swift",
      category: "MarutiSizuki",
      price: "6.69 lakhs",
      image: "car/Maruti Sizuki/car-4.webp",
    },
    {
      productName: "Maruti Dzire",
      category: "MarutiSizuki",
      price: "7.04 lakhs",
      image: "car/Maruti Sizuki/car-5.webp",
    },
    {
      productName: "Maruti S-Cross",
      category: "MarutiSizuki",
      price: "9.87 lakhs",
      image: "car/Maruti Sizuki/car-6.webp",
    },
    {
      productName: "Maruti Brezza",
      category: "MarutiSizuki",
      price: "8.93 lakhs",
      image: "car/Maruti Sizuki/car-7.webp",
    },
    {
      productName: "Maruti Wagon R",
      category: "MarutiSizuki",
      price: "6.17 lakhs",
      image: "car/Maruti Sizuki/car-8.webp",
    },
    //tata
    {
      productName: "Tata Altroz",
      category: "tata",
      price: "7.08 lakhs",
      image: "car/tata/car-1.webp",
    },
    {
      productName: "Tata Punch",
      category: "tata",
      price: "6.70 lakhs",
      image: "car/tata/car-2.webp",
    },
    {
      productName: "Tata Safari",
      category: "tata",
      price: "17.56 lakhs",
      image: "car/tata/car-3.webp",
    },
    {
      productName: "Tata Harrier",
      category: "tata",
      price: "416.80 lakhs9",
      image: "car/tata/car-4.webp",
    },
    {
      productName: "Tata Nexon",
      category: "tata",
      price: "48.54 lakhs9",
      image: "car/tata/car-5.webp",
    },
    //toyota
    {
      productName: "Toyota Fortuner",
      category: "Toyota",
      price: "36.03 lakhs",
      image: "car/Toyota/car-1.webp",
    },
    {
      productName: "Toyota Glanza",
      category: "Toyota",
      price: "7.34 lakhs",
      image: "car/Toyota/car-2.webp",
    },
    {
      productName: "Toyota Innova Crysta",
      category: "Toyota",
      price: "20.13 lakhs",
      image: "car/Toyota/car-3.webp",
    },
    {
      productName: "Toyota Urban Cruiser Hyryder",
      category: "Toyota",
      price: "11.62 lakhs",
      image: "car/Toyota/car-4.webp",
    },
  ],
};

for (let i of products.data) {
  //Create Card
  let card = document.createElement("div");
  //Card should have category and should stay hidden initially
  card.classList.add("card", i.category, "hide");
  //image div
  let imgContainer = document.createElement("div");
  imgContainer.classList.add("image-container");
  //img tag
  let image = document.createElement("img");
  image.setAttribute("src", i.image);
  imgContainer.appendChild(image);
  card.appendChild(imgContainer);
  //container
  let container = document.createElement("div");
  container.classList.add("container");
  //product name
  let name = document.createElement("h5");
  name.classList.add("product-name");
  name.innerText = i.productName.toUpperCase();
  container.appendChild(name);
  //price
  let price = document.createElement("h6");
  price.innerText = "Rs " + i.price;
  container.appendChild(price);

  card.appendChild(container);
  document.getElementById("products").appendChild(card);
}

//parameter passed from button (Parameter same as category)
function filterProduct(value) {
  //Button class code
  let buttons = document.querySelectorAll(".button-value");
  buttons.forEach((button) => {
    //check if value equals innerText
    if (value.toUpperCase() == button.innerText.toUpperCase()) {
      button.classList.add("active");
    } else {
      button.classList.remove("active");
    }
  });

  //select all cards
  let elements = document.querySelectorAll(".card");
  //loop through all cards
  elements.forEach((element) => {
    //display all cards on 'all' button click
    if (value == "all") {
      element.classList.remove("hide");
    } else {
      //Check if element contains category class
      if (element.classList.contains(value)) {
        //display element based on category
        element.classList.remove("hide");
      } else {
        //hide other elements
        element.classList.add("hide");
      }
    }
  });
}

//Search button click
document.getElementById("search").addEventListener("click", () => {
  //initializations
  let searchInput = document.getElementById("search-input").value;
  let elements = document.querySelectorAll(".product-name");
  let cards = document.querySelectorAll(".card");

  //loop through all elements
  elements.forEach((element, index) => {
    //check if text includes the search value
    if (element.innerText.includes(searchInput.toUpperCase())) {
      //display matching card
      cards[index].classList.remove("hide");
    } else {
      //hide others
      cards[index].classList.add("hide");
    }
  });
});

//Initially display all products
window.onload = () => {
  filterProduct("all");
};
