const root = document.getElementById('root');
const ul = document.createElement('ul');
const button = document.getElementById('button');

let i = 1;

button.addEventListener('click', () => {
	const li = document.createElement('li');
	li.innerHTML = `Hello ${i++}`;
	ul.appendChild(li);
	root.appendChild(ul);
});
