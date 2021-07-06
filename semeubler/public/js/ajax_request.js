/** I'm only usgin Emascript libray here and not jquery
 * I'm Emascript.js was created by Emanuel Abizimi
 * some function look like jquery function 
 * -here I use emascript for ajax request also
 */
const famille         = $("input[name='famille'"),
      sousFamille     = $("input[name='sous_famille'"),
      sousSousFamille = $("input[name='sous_sous_famille'"),
      buttonSearch    = $("#search"),
      homePageUrl     = $("input[type='hidden']"), 
      p               = document.querySelector("#p");
/**
 *  this function fill the empty input
 *  by famille , sous famille and sous sous famille
 */
const ajaxRequestWithEmaScript =()=>{
    var setupAjax = {
        url:homePageUrl[0].value,
        data:{
            famille:sousSousFamille[0].value
        },
        processing:()=>{
            p.innerHTML = "searching ...";
            p.className = "text-success";
        },
        find:(data)=>{
            if(data != "bad"){
                let jsonToObj = JSON.parse(data);
                famille[0].value = jsonToObj[0]["famille"];
                sousFamille[0].value = jsonToObj[0]["sous_famille"];
                p.innerHTML = "The result was found";
                p.className="text-primary";
          }else{
                p.innerHTML = "* The result was not found for: " + sousSousFamille[0].value + " * ";
                p.className="text-danger";
          }
        }
    }
    setupAjax.sendRequest();
}
/**
 * this function only 
 * execute the ajax request 
 * to the server , when uer client
 * on search button
 */
 buttonSearch.onclick = ()=>{
    ajaxRequestWithEmaScript();
}
/**
 * remove the input value while the
 * is typing for search by famille, 
 * and sous famille
 */
sousSousFamille[0].onkeyup =()=>{
    famille[0].value      ="";
    sousFamille[0].value  ="";
}
