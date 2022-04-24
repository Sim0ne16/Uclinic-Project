const el = document.getElementById('container');

const hiddenDiv = document.getElementById('hidden-div');


el.addEventListener('mouseover', function handleMouseOver() {
  hiddenDiv.style.display = 'block';


});


el.addEventListener('mouseout', function handleMouseOut() {
  hiddenDiv.style.display = 'none';


});



const hiddenDiv1 = document.getElementById('hidden-div1');

el.addEventListener('mouseover', function handleMouseOver(){
hiddenDiv1.style.display= 'none';

});


el.addEventListener('mouseout', function handleMouseOut(){
  hiddenDiv1.style.display= 'block';
  });


