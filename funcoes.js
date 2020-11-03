function exibir_categorias(categoria){
    
    let elementos = document.getElementsByClassName('box-produtos');
  
   for (let i = 0; i < elementos.length; i++) {
    if(categoria == elementos[i].id) 
       elementos[i].style="display:inline-block"
       else{
       elementos[i].style = "display:none"}
 }
} 
let exibir_todos = ()=>{
    let elementos = document.getElementsByClassName('box-produtos');
   for (let i = 0; i < elementos.length; i++) 
       elementos[i].style="display:inline-block"
    }

    let destaque = (imagem)=>{
    imagem.width = 200;
    }

    let tirazoom = (imagem)=>{
        imagem.width = 120;
        }