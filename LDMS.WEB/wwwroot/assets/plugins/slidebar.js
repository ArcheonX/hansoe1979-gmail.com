function clickclosed(x) { 
    x.classList.toggle("right-nav"); 
    
    /*var  doc =  document.querySelectorAll("#pn-project-control")[0];  
    if(x.classList.length<=1){
        x.setAttribute("class","left-nav right-nav");
        doc.setAttribute("class","content content-full");
    }else{
        x.setAttribute("class","left-nav");
        doc.setAttribute("class","content");
    }
    setTimeout(function() {  
        console.log(x.getAttribute("class")); 
        console.log(doc.getAttribute("class"));
     }, 1000);  
     if(x.classList.length<=1){
        doc.setAttribute("class","content content-full");
    }else{
        doc.setAttribute("class","content");
    }*/
} 
 function toggleSidebar(ref){ 
  document.body.classList.toggle('sidebar-active');
  var  doc =  document.querySelectorAll("#pn-project-control")[0]; 
  doc.classList.toggle('content-full'); 
 }