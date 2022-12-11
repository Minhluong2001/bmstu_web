const tablelist = document.querySelector('#table-list');
const form = document.querySelector('form');
const tablebuy = document.querySelector('#table-buy');
const total = document.querySelector('#total');
let sum = 0;
var list = new Array();
var count = 0;

form.addEventListener('submit', function(e){ 
    e.preventDefault();
    let nameip = form.elements.name.value;
    let priceip = form.elements.price.value;
    if (nameip && priceip && !list.includes(nameip, 0))
        add(nameip, priceip);
    this.reset();
})
function add(nameip, priceip){
    list.push(nameip);
    const row = document.createElement('tr');
    const namecol = document.createElement('td'); 
    const pricecol = document.createElement('td'); 
    namecol.innerText = nameip; 
    pricecol.innerText = priceip; 
    row.appendChild(namecol); 
    row.appendChild(pricecol); 
    row.classList.add("table"); 
    tablelist.appendChild(row); 
    row.addEventListener('mouseover', () =>{
        row.style.backgroundColor = "grey"; 
    })
    row.addEventListener('mouseout', () =>{ 
        row.style.backgroundColor = "white";
    })
    row.addEventListener('click', () => {
        buy(nameip, priceip);
        update(); })
    }

function buy(nameip, priceip){ 
    var quan = 1;
    var check = 0;
    const row = document.createElement('tr');
    const namecol = document.createElement('td'); 
    const pricecol = document.createElement('td'); 
    const quantitycol = document.createElement('td') 
    for (i = 1; i <= count; i++){
        var rowi = tablebuy.rows.item(i);
        if (rowi.cells[0].innerHTML == nameip){
            quan = parseInt(rowi.cells[2].innerHTML) + 1; 
            rowi.cells[2].innerHTML = quan.toString(); 
            check = 1;
        } 
    }
    if (check == 0){
        count++;
        namecol.innerText = nameip; 
        pricecol.innerText = priceip; 
        quantitycol.innerText = quan.toString(); 
        row.appendChild(namecol); 
        row.appendChild(pricecol);
        row.appendChild(quantitycol); 
        row.classList.add("table"); 
        tablebuy.appendChild(row);
    }
    sum = parseInt(sum) + parseInt(priceip); 
}

function update(){
    total.innerText = sum.toString();
}