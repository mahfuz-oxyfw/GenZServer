const TimeAndDate = document.getElementById('TimeAndDate');
const ServerLogo = document.getElementById('ServerLogo');

window.addEventListener('message', (event) => {
	let data = event.data;
	if(data.action == 'setTimeAndDate') {
		TimeAndDate.innerHTML = data.time.split(' ').map(word => `<span>${word}</span>`).join(' ');
	}
});
