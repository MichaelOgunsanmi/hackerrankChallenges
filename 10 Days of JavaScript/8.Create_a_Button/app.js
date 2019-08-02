const button = document.querySelector('#btn')
button.addEventListener('click', incrementValue)


function incrementValue(e) {
    let currentValue = parseFloat(e.target.innerHTML)
    currentValue++
    e.target.innerHTML = currentValue

}


