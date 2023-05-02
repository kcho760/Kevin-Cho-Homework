document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  // --- your code here!

//   Phase II: Adding list items
// This one's a little trickier. We want to make it so that users can input
//  a place, click the submit button, and have the input box clear out & the
//   new item appended to the list. This is, in fact, almost exactly what one of
//    the examples in the DOM reading does. Check it out for guidance.
// Remember to use the class names and IDs already set up in the HTML document!

const handleFavoriteSubmit = (e) => {//function (e) is parameter
  e.preventDefault();//prevents submitting the form
  const favoriteInput = document.querySelector(".favorite-input");//finds the input box
  const favorite = favoriteInput.value;//saves input typed in
  favoriteInput.value = "";//? not sure...maybe makes blank box?
  const newListLi = document.createElement("li");//creates new <li> and saves to variable
  newListLi.textContent = favorite;//sets previously set const favorite into new <li>
  const favoritesList = document.getElementById("sf-places");//finds list of sf-places adds to variable
  favoritesList.appendChild(newListLi);//appends favorite into sf-places
};

const listSubmitButton = document.querySelector(".favorite-submit");//finds submit button and saves
listSubmitButton.addEventListener("click", handleFavoriteSubmit);//determines what action "click" does


  // adding new photos

  // --- your code here!
  const showPhotoForm = (e) => {
    const photoFormDiv = document.querySelector(".photo-form-container");
    if (photoFormDiv.className === "photo-form-container") {
      photoFormDiv.className = "photo-form-container hidden";
    } else {
      photoFormDiv.className = "photo-form-container";
    }
  };
  const photoFormShowButton = document.querySelector(".photo-show-button");
  photoFormShowButton.addEventListener("click", showPhotoForm);

  const handlePhotoSubmit = (e) => {
    e.preventDefault();
    const photoUrlInput = document.querySelector(".photo-url-input");
    const photoUrl = photoUrlInput.value;
    photoUrlInput.value = "";
    const newImg = document.createElement("img");
    newImg.src = photoUrl;
    const newPhotoLi = document.createElement("li");
    newPhotoLi.appendChild(newImg);
    const dogPhotosList = document.querySelector(".dog-photos");
    dogPhotosList.appendChild(newPhotoLi);
  };

  const photoSubmitButton = document.querySelector(".photo-url-submit");
  photoSubmitButton.addEventListener("click", handlePhotoSubmit);

});
