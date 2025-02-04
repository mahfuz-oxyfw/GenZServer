let timer = null;
let moneytimer = null;
let width = 0;

$(document).ready(function() {
    window.addEventListener('message', function(event){
        let eData = event.data;
        switch (eData.action) {
            case 'hudtick':
				showPlayerHud(eData);
                break;
            case 'car':
                showVehicleHud(eData);
                break;
			case 'progress':
				showProgressbar(eData);
                break;
			case 'cancel':
				cancelProgressbar();
				break;
			case 'showMoney':
				showMoney(eData);
				break;	
			case 'changeMoney':
				changeMoney(eData);
				break;	
        }
    })
});

let showMoney = function(data) {
	if (data.type == 'bank'){
		$('#money-container').html(`<div class="money-show"><i class="fa-solid fa-piggy-bank"></i>  ${moneyIcon} ${data.amount}</div>`)
	} else {
		$('#money-container').html(`<div class="money-show"><i class="fa-solid fa-wallet"></i>${moneyIcon} ${data.amount}</div>`)
	}
	clearInterval(moneytimer);
	$("#money-container").css({'display':'flex'}).animate({
        'margin-right': "5%",
    }, {
		duration: 1000,
        complete: function () {
			moneytimer = setTimeout(function () {
				$("#money-container").animate({
					'margin-right': "-10%",
				}, {
					duration: 1000,
					complete: function () {
						clearInterval(moneytimer);
						$("#money-container").css({'display':'none'})
					}
				});
			}, 3000);
		}
	});
}


let changeMoney = function(data) {
	if (data.type == 'bank'){
		$('#money-container').html(`<div class="money-show"><i class="fa-solid fa-piggy-bank"></i>  ${moneyIcon} ${data.bank}</div><div class="money-change"><div style="position: relative; bottom:1px; font-size: 20px; font-family: mm;">${data.state? '-':'+'}</div> ${moneyIcon} ${data.amount}</div>`)
	} else {
		$('#money-container').html(`<div class="money-show"><i class="fa-solid fa-wallet"></i>  ${moneyIcon} ${data.cash}</div><div class="money-change"><div style="position: relative; bottom:1px; font-size: 20px; font-family: mm;">${data.state? '-':'+'}</div> ${moneyIcon} ${data.amount}</div>`)
	}
	clearInterval(moneytimer);
	$("#money-container").css({'display':'flex'}).animate({
        'margin-right': "5%",
    }, {
		duration: 1000,
        complete: function () {
			moneytimer = setTimeout(function () {
				$("#money-container").animate({
					'margin-right': "-10%",
				}, {
					duration: 1000,
					complete: function () {
						clearInterval(moneytimer);
						$("#money-container").css({'display':'none'})
					}
				});
			}, 3000);
		}
	});
}

let cancelProgressbar = function() {
	$(".progress-text").html('CANCELLED');
	$(".progress-bar").stop();
	clearInterval(timer);
	timer = setTimeout(function () {
		$(".progress-bar").stop().css( {"width": "100%", "background-color": "rgba(11, 226, 198, 0.8)"});
		clearInterval(timer);
		timer = setTimeout(function () {
			$(".progress-container").animate({ width: "0px" }, 500, function() {
				clearInterval(timer);
				$(".hud-stuff").removeClass('noview')
				$(".progress-container").addClass('noview')
				$(".hud-stuff").animate({ width: width+"px" }, 500)
				$('.progress-bar').css({'width': "0%"})
				$.post('https://grp_hud/CancelAction', JSON.stringify({}));
			});
		}, 100);
	});
}

let showProgressbar = function(data) {
	width = $('.hud-stuff').width();
	timer = setTimeout(function () {
		$(".hud-stuff").animate({ width: "0px" }, 500, function() {
			$(".hud-stuff").addClass('noview');
			$(".progress-container").removeClass('noview');
			$(".progress-text").html(data.text);
			clearInterval(timer);
			let wid = ((data.text).length)*16 + 138
			
			$(".progress-container").animate({ width: wid+"px" }, 500, function() {
				$('.progress-bar').css({'width': "0%", 'background-color': '#0BE2C6'})
				$(".progress-bar").animate({ width: "100%" }, data.duration, function() {
					timer = setTimeout(function () {
						$(".progress-container").animate({ width: "0px" }, 500, function() {
							clearInterval(timer);
							$(".hud-stuff").removeClass('noview');
							$(".progress-container").addClass('noview');
							$(".hud-stuff").animate({ width: width+"px" }, 500);
							$('.progress-bar').css({'width': "0%"});
							$.post('https://grp_hud/FinishAction', JSON.stringify({}));
						});
					}, 100);
				})
			});
		})
	}, 100)
}

let showPlayerHud = function(data) {
	if (data.show) {
		let max = 2160;
		let percent = data.isDead? 100: data.health;
		let value = ((100 - percent) / 100) * max;
		let res = window.innerWidth;
		$('#health-fill').css({'stroke-dashoffset': value + 'px'})
		if (percent < 30 || data.isDead) {
			$('#health-fill').css({'stroke': 'rgb(204, 0, 0)'})
			$('#health-icon').css({'color': 'rgb(204, 0, 0)', 'filter': 'drop-shadow(0px 0px 5px rgba(241, 51, 51, 0.55))'})
		} else {
			$('#health-fill').css({'stroke': '#0BE2C6'})
			$('#health-icon').css({'color': '#0BE2C6', 'filter': 'drop-shadow(0px 0px 5px #0BE2C6)'})
		}
		$('.hud-icons').removeClass('noview');
		$('#health-container').removeClass('noview');
		$('#armor-container').find('.icon-color').html(data.armor+'%');
		$('#food-container').find('.icon-color').html(data.hunger+'%');
		$('#water-container').find('.icon-color').html(data.thirst+'%');
		$('#stress-container').find('.icon-color').html(data.stress+'%');
		$('#oxygen-container').find('.icon-color').html(data.oxygen+'%');
		$('.microphone-text').html(data.voice);
		$('#weather-time').html(data.time);
		$('#weather').html(data.weather);
		$('.weather-icon').html(data.weathericon);
		if (data.isTalking) {
			$('.microphone-icon').css({'color': 'purple'});
		} else {
			$('.microphone-icon').css({'color': 'white'});
		}
		if(data.isMapOut) {
			slideInLeft('#hud-component', 50, response.hasOwnProperty(res) ? response[res].marginopen : ((res-800)*0.1)+parseInt(response[800].marginopen));
		} else if (!data.isInCar) {
			slideInLeft('#hud-component', 50, 25)
		}
	} else {
		$('.hud-icons').addClass('noview');
		$('#health-container').addClass('noview');
	}
}

let showVehicleHud = function(data) {
	if (data.show) {
		let res = window.innerWidth;
		if(!data.isMapOut) {
			slideInLeft('#hud-component', 50, response.hasOwnProperty(res) ? response[res].marginopen : ((res-800)*0.1)+parseInt(response[800].marginopen));
		}
		if (!data.isSpeedometerBlocked) {
			$('#vehicle-hud').removeClass('noview');
			$('#vehicle-hud-component').removeClass('noview');
			$('.street-text').removeClass('noview');
			$('#street-name').html(data.street);
			$('#vehicle-hud-rpm').css({'stroke-dashoffset': ((100 - (data.rpm*1.1)) / 100) * 155 + 'px'})
			if (!data.isElectric) {
				$('.fuel-icon').removeClass('fa-car-battery');
				$('.fuel-icon').addClass('fa-gas-pump');
				$('#vehicle-hud-fuel').css({'stroke-dashoffset': ((100 - (data.fuel*1.1)) / 100) * 155 + 'px'})
			} else {
				$('.fuel-icon').removeClass('fa-gas-pump');
				$('.fuel-icon').addClass('fa-car-battery');
				$('#vehicle-hud-fuel').css({'stroke-dashoffset': '0px'})
			}

			let currentSpeed = String(data.speed)
			let speedtrack = ((100 - (Math.floor(data.speed/4)*0.96)) / 100) * 580;
			
			if (data.speed < 10) {
				currentSpeed = '00' + data.speed;
			} else if (data.speed >= 10 && data.speed < 100) {
				currentSpeed = '0' + data.speed;
			}
			$('.speed-text').html(`<span class="speed-white">`+currentSpeed.charAt(0)+`</span><span class="speed-white">`+currentSpeed.charAt(1)+`</span><span class="speed-green">`+currentSpeed.charAt(2)+`</span>`);
			$('#vehicle-hud-speed').css({'stroke-dashoffset': speedtrack + 'px'})

			if (data.engine < 90) {
				$('#engine-container').removeClass('noview');
				$('#engine-container').find('.icon-color').html(data.engine+'%');
			} else {
				$('#engine-container').addClass('noview');
			}

			if (data.harness) {
				$('#harness-container').removeClass('noview');
				$('#harness-container').find('.icon-color').html(data.harnessHp+'%');
			} else {
				$('#harness-container').addClass('noview');
			}
			if (data.cruiseOn) {
				$('#cruise-container').removeClass('noview');
			} else {
				$('#cruise-container').addClass('noview');
			}
			if (data.nitroActive) {
				$('#nos-container').removeClass('noview');
				$('#nos-container').find('.icon-color').html(data.nitro+'%');
			} else {
				$('#nos-container').addClass('noview');
			}
			if (data.seatbeltOn) {
				$('.belt-icon').fadeOut(500);
			} else {
				$('.belt-icon').fadeIn(500);
			}
		}
	} else {
		if(!data.isMapOut) {
			slideInLeft('#hud-component', 50, 25);
		}
		$('#vehicle-hud').addClass('noview');
		$('#vehicle-hud-component').addClass('noview');
		$('.street-text').addClass('noview');
	}
}

let slideInLeft = function(Object, Timeout, Percentage) {
    $(Object).css({'display':'flex'}).animate({
        'margin-left': Percentage+"px",
    }, Timeout);
}

let slideInRight = function(Object, Timeout, Percentage) {
    $(Object).css({'display':'block'}).animate({
        'right': Percentage+"%",
    }, Timeout);
}