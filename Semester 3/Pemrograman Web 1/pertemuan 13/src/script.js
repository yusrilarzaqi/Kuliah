const button = document.getElementById('jumlah');

button.addEventListener('click', () => {
	const bil1 = parseInt(document.getElementById('bil1').value);
	const bil2 = parseInt(document.getElementById('bil2').value);
	if (isNaN(bil1) && isNaN(bil2)) {
		alert(`${bil1} + ${bil2} =  ${bil1 + bil2}`);
	}
});
