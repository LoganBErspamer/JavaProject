



var albums={
    "album":["album1.png",
    "album2.png",
    "album3.png",
    "album4.png",
    "album5.png",
    "album6.png",
    "album7.png",
    "album8.png",
    "album9.png",
    "album10.png",
    "album11.png",
    "album12.png",]
}
// randomizer
function randomalbum(){
    var randomindex= Math.floor(Math.random()* albums.album.length)
    var selectedimage=albums.album[randomindex]
    document.getElementById("album").src=`./images/${selectedimage}`
}

$(function() {
  $(".js-fillcolor").fillColor();
});








function getAverageColor(imageElement, ratio){
    const canvas = document.createElement("canvas")

    let height = canvas.height = imageElement.height
    let width = canvas.width = imageElement.width

    const context = canvas.getContext("2d")
    context.drawImage(imageElement, 0, 0)

    let data, length;
    let i = -4, count =0

    try{
        data = context.getImageData(0,0, width, height)
        length = data.data.length
    }catch(err){
        console.error(err)
        return{
            R:0,
            G:0,
            B:0
        }
    }
    let R,G,B
    R=G=B=0

    while((i += ratio * 4)< length){
        count++

        R+=data.data[i]
        G+=data.data[i+1]
        B+=data.data[i+2]
    }

    R= ~~(R/count)
    G= ~~(G/count)
    B= ~~(B/count)

    return{
        R, G, B
    }
}

const image = document.querySelector("img")
image.onload = function() {
    const {R,G,B}= getAverageColor(image, 4)

    document.body.style.background = `rgb(${R},${G},${B})`
    var color = document.body.style.background
    sessionStorage.setItem("color", document.body.style.background)
    document.getElementById("tester").textContent = color
}

document.querySelector("#myFileInput").addEventListener("change", function(){
	const reader = new FileReader();//convert to dataurl
	
	reader.addEventListener("load", ()=> {
		localStorage.setItem("recent-image", reader.result);
	});
	
	reader.readAsDataURL(this.files[0]);
});
document.addEventListener("DOMContentLoaded",() => {
	const recentImageDataUrl = localStorage.getItem("recent-image");
	
	if (recentImageDataUrl){
		document.querySelector("#imgPreview").setAttribute("src", recentImageDataUrl);
	}
});

function clearimg(){
	localStorage.removeItem("recent-image");
}

function hey(){
	alert("hey")
}




function savecolor(){
	localStorage.setItem("color", )
}



function find(){
	var word = "rgb(146, 126, 126)";
	
	if(document.getElementById("give") == word){
		return true
	}else{
		return false
	}
}



function finder(){
	if(document.getElementById("tester") == "rgb(146, 126, 126)"){
		return true
	}else{
		return false
	}
}
