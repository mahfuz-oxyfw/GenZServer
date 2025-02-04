var lang = 'en'

let TRANSLATIONS = {};
let ENGLISH_TRANSLATIONS = {};

function translateEverything() {
	$("body").find("[data-translation-id], [data-bs-toggle='tooltip']").each(function() {
		let translationId = $(this).data("translationId")

		if( $(this).data("bsToggle") == "tooltip" ) {
			$(this).prop("title", getLocalizedText(translationId));
			$(this).tooltip();
		} else {
			$(this).prop("innerHTML", getLocalizedText(translationId));
		}

	})
} 

function refreshTranslations(locale) {
	$.ajax({
		url: `menu_translations/en.json`,
		success: function (translationsJSON) {
			ENGLISH_TRANSLATIONS = JSON.parse(translationsJSON);

			$.ajax({
				url: `menu_translations/${locale}.json`,
				success: function (translationsJSON) {
					TRANSLATIONS = JSON.parse(translationsJSON);
		
					translateEverything();
				}
			});
		}
	});
}

window.addEventListener('message', function (event) {
    if (event.data.type === 'setLang') {
        var locale = event.data.localeLang;
		lang = locale
        refreshTranslations(locale);
    }
});

function getLocalizedText(text) {
	return TRANSLATIONS[text] || ENGLISH_TRANSLATIONS[text] || text;
}

document.addEventListener('DOMContentLoaded', function () {
    var timestamps = [];

    function toggledutylog() {
        const panelui = document.getElementById('panel-container');
		const loadingSpinner = document.getElementById('loading-spinner');
		
        //console.log('OPEN');
        panelui.style.display = 'block';
        loadingSpinner.style.display = 'block';
        updateChart(currentStartDate, 'day');

        setTimeout(function() {
	        const mypanelui = document.getElementById('my-panel-container');
			
			loadingSpinner.style.display = 'none';
	        mypanelui.style.display = 'block';
        }, 2000);
    }
	
    window.addEventListener('message', function(event) {
        if (event.data.type === 'toggledutylog') {
            var receivedTimestamps = event.data.timestamps;

            if (receivedTimestamps && receivedTimestamps.length > 0) {
                timestamps = receivedTimestamps.sort((a, b) => a.start_time - b.start_time);
            }
			toggledutylog();
        }
    });

    document.addEventListener("keydown", function(event) {
        if (event.key === "Escape") {
            closeDutyMenu();
        }
    });

    var ctx = document.getElementById('myChart').getContext('2d');
    var myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: [],
            datasets: [{
                label: 'Hours of duty',
                data: [],
                backgroundColor: 'rgba(75, 192, 192, 0.5)',
                borderColor: 'rgba(75, 192, 192, 1)',
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                y: {
                    type: 'linear',
                    position: 'left',
                    beginAtZero: true,
                    ticks: {
                        callback: function (value, index, values) {
                            // Convertir la valeur en format HH:mm:ss
                            var hours = Math.floor(value / 3600);
                            var minutes = Math.floor((value % 3600) / 60);
                            var seconds = value % 60;
                            return hours.toString().padStart(2, '0') + ':' +
                                minutes.toString().padStart(2, '0') + ':' +
                                seconds.toString().padStart(2, '0');
                        }
                    }
                }
            },
            plugins: {
                legend: {
                    display: true,
                },
                tooltip: {
                    callbacks: {
                        label: function (context) {
                            var value = context.dataset.data[context.dataIndex];
                            var hours = Math.floor(value / 3600);
                            var minutes = Math.floor((value % 3600) / 60);
                            var seconds = value % 60;
                            return getLocalizedText("HoursOfDutyLabel") + ' : ' +
                                hours.toString().padStart(2, '0') + ':' +
                                minutes.toString().padStart(2, '0') + ':' +
                                seconds.toString().padStart(2, '0');
                        }
                    }
                }
            }
        }
    });

    document.querySelectorAll('input[name="view"]').forEach(function (radio) {
        radio.addEventListener('change', function () {
            updateChart(currentStartDate, this.id);
        });
    });

    document.getElementById('prevPeriod').addEventListener('click', function () {
        changeDateRange(-getIncrement());
    });

    document.getElementById('nextPeriod').addEventListener('click', function () {
        changeDateRange(getIncrement());
    });

    function getIncrement() {
        var view = document.querySelector('input[name="view"]:checked').id;

        switch (view) {
            case 'day':
                return 1;
            case 'week':
                return 7;
            case 'month':
                return 30;
            case 'year':
                return 365;
            default:
                return 1; // Valeur par défaut
        }
    }

    var currentStartDate = luxon.DateTime.local().startOf('day'); // Date actuelle

    function generateDaysArray(startDate, daysCount) {
        var daysArray = [];
        var currentDate = startDate;

        // Ajoutez les jours précédents à partir de la date actuelle
        for (var i = 0; i < daysCount - 1; i++) {
            currentDate = currentDate.minus({ days: 1 });
            daysArray.unshift(currentDate);  // Ajoutez au début du tableau
        }

        // Ajoutez la date actuelle à la fin du tableau
        daysArray.push(startDate);

        return daysArray;
    }

    function generateWeeksArray(startDate, weeksCount) {
        var weeksArray = [];
        var currentWeek = startDate.startOf('week');

        // Ajoutez les semaines précédentes à partir de la semaine actuelle
        for (var i = 0; i < weeksCount - 1; i++) {
            currentWeek = currentWeek.minus({ weeks: 1 });
            weeksArray.unshift(currentWeek);  // Ajoutez au début du tableau
        }

        // Ajoutez la semaine actuelle à la fin du tableau
        weeksArray.push(startDate.startOf('week'));

        return weeksArray;
    }

    function generateMonthsArray(startDate, monthsCount) {
        var monthsArray = [];
        var currentMonth = startDate.startOf('month');

        // Ajoutez les mois précédents à partir du mois actuel
        for (var i = 0; i < monthsCount - 1; i++) {
            currentMonth = currentMonth.minus({ months: 1 });
            monthsArray.unshift(currentMonth);  // Ajoutez au début du tableau
        }

        // Ajoutez le mois actuel à la fin du tableau
        monthsArray.push(startDate.startOf('month'));

        return monthsArray;
    }

    function generateYearsArray(startDate, yearsCount) {
        var yearsArray = [];
        var currentYear = startDate.startOf('year');

        // Ajoutez les années précédentes à partir de l'année actuelle
        for (var i = 0; i < yearsCount - 1; i++) {
            currentYear = currentYear.minus({ years: 1 });
            yearsArray.unshift(currentYear);  // Ajoutez au début du tableau
        }

        // Ajoutez l'année actuelle à la fin du tableau
        yearsArray.push(startDate.startOf('year'));

        return yearsArray;
    }

    function formatFrenchDate(date, grouping) {
        if (grouping === 'month') {
            return luxon.DateTime.fromJSDate(date, { locale: lang }).toFormat('LLLL-yyyy');
        } else if (grouping === 'week') {
            const startOfWeek = luxon.DateTime.fromJSDate(date, { locale: lang }).startOf('week');
            const endOfWeek = luxon.DateTime.fromJSDate(date, { locale: lang }).endOf('week');
            return startOfWeek.toFormat('dd/MM/yyyy') + ' - ' + endOfWeek.toFormat('dd/MM/yyyy');
        } else if (grouping === 'year') {
            return luxon.DateTime.fromJSDate(date, { locale: lang }).year.toString();
        } else {
            return luxon.DateTime.fromJSDate(date, { locale: lang }).toFormat('cccc dd LLLL yyyy');
        }
    }

    function processTimestamps(timestamps, grouping) {
        var groupedData = {};

        timestamps.forEach(function (timestamp) {
            var startDate = luxon.DateTime.fromSeconds(timestamp.start_time);
            var endDate = luxon.DateTime.fromSeconds(timestamp.end_time);

            var currentDate = startDate;

            while (currentDate <= endDate) {
                var groupKey = grouping === 'day' ? formatFrenchDate(currentDate.toJSDate(), grouping) : '';

                if (grouping === 'week') {
                    groupKey = formatFrenchDate(currentDate.toJSDate(), grouping);
                } else if (grouping === 'month') {
                    groupKey = formatFrenchDate(currentDate.toJSDate(), grouping);
                } else if (grouping === 'year') {
                    groupKey = currentDate.year.toString();
                }

                if (!groupedData[groupKey]) {
                    groupedData[groupKey] = 0;
                }

                var formattedDuration = timestamp.end_time - timestamp.start_time;

                // Ajouter la durée exacte du service pour chaque jour
                groupedData[groupKey] += formattedDuration;

                // Passer à la journée suivante
                currentDate = currentDate.plus({ days: 1 });
            }
        });

        return groupedData;
    }

    function updateChart(startDate, view) {
        var daysArray, groupedData;

        if (view === 'day') {
            daysArray = generateDaysArray(startDate, 7);
            groupedData = processTimestamps(timestamps, 'day');
        } else if (view === 'week') {
            daysArray = generateWeeksArray(startDate, 4);
            groupedData = processTimestamps(timestamps, 'week');
        } else if (view === 'month') {
            daysArray = generateMonthsArray(startDate, 12);
            groupedData = processTimestamps(timestamps, 'month');
        } else if (view === 'year') {
            daysArray = generateYearsArray(startDate, 5);
            groupedData = processTimestamps(timestamps, 'year');
        }

        myChart.data.labels = daysArray.map(function (day) {
            return formatFrenchDate(day.toJSDate(), view);
        });
		
		myChart.data.datasets[0].label = getLocalizedText("HoursOfDutyLabel");
		
        myChart.data.datasets[0].data = daysArray.map(function (day) {
            var key = formatFrenchDate(day.toJSDate(), view);
            return groupedData[key] || 0;
        });

        myChart.update();
    }

    function changeDateRange(daysDifference) {
        currentStartDate = currentStartDate.plus({ days: daysDifference });
        updateChart(currentStartDate, document.querySelector('input[name="view"]:checked').id);
    }
	
	updateChart(currentStartDate, 'day');
});

//////////////////////
/////////////////////

document.addEventListener('DOMContentLoaded', function () {
    var allPlayers = {};

    var currentSelectedDay = luxon.DateTime.local().startOf('day');
    var ctxEmployees = document.getElementById('employeesChart').getContext('2d');
    var employeesChart = new Chart(ctxEmployees, {
        type: 'bar',
        data: {
            labels: [],
            datasets: []
        },
        options: {
            scales: {
                y: {
                    type: 'linear',
                    position: 'left',
                    beginAtZero: true,
                    ticks: {
                        callback: function (value, index, values) {
                            // Convertir la valeur en format HH:mm:ss
                            var hours = Math.floor(value / 3600);
                            var minutes = Math.floor((value % 3600) / 60);
                            var seconds = value % 60;
                            return hours.toString().padStart(2, '0') + ':' +
                                minutes.toString().padStart(2, '0') + ':' +
                                seconds.toString().padStart(2, '0');
                        }
                    }
                }
            },
            plugins: {
                legend: {
                    display: true,
                },
                tooltip: {
                    callbacks: {
                        label: function (context) {
                            var value = context.dataset.data[context.dataIndex];
                            var hours = Math.floor(value / 3600);
                            var minutes = Math.floor((value % 3600) / 60);
                            var seconds = value % 60;
                            return getLocalizedText("HoursOfDutyLabel") + ' : ' +
                                hours.toString().padStart(2, '0') + ':' +
                                minutes.toString().padStart(2, '0') + ':' +
                                seconds.toString().padStart(2, '0');
                        }
                    }
                }
            }
        }
    });

    // Fonction pour mettre à jour le graphique des employés en fonction du jour sélectionné et de la vue
    function updateEmployeesChart(selectedDay, view) {
        var employeeLabels = Object.keys(allPlayers);
        var employeeData = [];

        employeeLabels.forEach(function (employeeId) {
            var employee = allPlayers[employeeId];
            var totalHours = 0;
            var backgroundColor;

            employee.timestamps.forEach(function (timestamp) {
                var startTime = luxon.DateTime.fromSeconds(timestamp.start_time);
                var endTime = luxon.DateTime.fromSeconds(timestamp.end_time);

                switch (view) {
                    case 'day':
                        // Vérifier si le timestamp est dans la journée sélectionnée
                        if (startTime >= selectedDay.startOf('day') && endTime <= selectedDay.endOf('day')) {
                            totalHours += timestamp.end_time - timestamp.start_time;
                        }
                        break;
                    case 'week':
                        // Vérifier si le timestamp est dans la semaine sélectionnée
                        if (startTime >= selectedDay.startOf('week') && endTime <= selectedDay.endOf('week')) {
                            totalHours += timestamp.end_time - timestamp.start_time;
                        }
                        break;
                    case 'month':
                        // Vérifier si le timestamp est dans le mois sélectionné
                        if (startTime >= selectedDay.startOf('month') && endTime <= selectedDay.endOf('month')) {
                            totalHours += timestamp.end_time - timestamp.start_time;
                        }
                        break;
                    case 'year':
                        // Vérifier si le timestamp est dans l'année sélectionnée
                        if (startTime >= selectedDay.startOf('year') && endTime <= selectedDay.endOf('year')) {
                            totalHours += timestamp.end_time - timestamp.start_time;
                        }
                        break;
                    // Ajoutez d'autres cas selon vos besoins
                }
            });

            // Définir la couleur de fond en fonction de onduty
            backgroundColor = employee.onduty ? 'rgba(0, 255, 0, 0.5)' : 'rgba(255, 0, 0, 0.5)';

            // Définir la couleur du nom en fonction de onduty
            var nameColor = employee.onduty ? 'green' : 'red';

            employeeData.push({
                totalHours: totalHours,
                backgroundColor: backgroundColor,
                nameColor: nameColor
            });
        });

        employeesChart.data.labels = employeeLabels.map(function (employeeId) {
            return allPlayers[employeeId].name;
        });

        employeesChart.data.datasets = [{
            label: getLocalizedText("HoursOfEmployeesDutyLabel"),
            data: employeeData.map(function (data) {
                return data.totalHours;
            }),
            backgroundColor: employeeData.map(function (data) {
                return data.backgroundColor;
            }),
        }];

        // Mettre à jour les couleurs du nom des employés dans le graphique
        employeeLabels.forEach(function (employeeId, index) {
            employeesChart.data.datasets[0].data[index].nameColor = employeeData[index].nameColor;
        });
		
        employeesChart.update();
    }

    function updateSelectedDayLabel(selectedDate, view) {
        var selectedDayLabel = document.getElementById('selectedDayLabel');

        var options = { weekday: 'long', month: 'long', day: 'numeric', year: 'numeric' };

        switch (view) {
            case 'day':
                selectedDayLabel.innerText = luxon.DateTime.fromJSDate(selectedDate.toJSDate(), { locale: lang }).toLocaleString(options);
                break;
            case 'week':
                var startOfWeek = selectedDate.startOf('week');
                var endOfWeek = selectedDate.endOf('week');
                selectedDayLabel.innerText = luxon.DateTime.fromJSDate(startOfWeek.toJSDate(), { locale: lang }).toLocaleString({ month: 'long', day: 'numeric' }) + ' \u2794 ' + luxon.DateTime.fromJSDate(endOfWeek.toJSDate(), { locale: lang }).toLocaleString({ month: 'long', day: 'numeric' }) + ', ' + endOfWeek.year;
                break;
            case 'month':
                selectedDayLabel.innerText = luxon.DateTime.fromJSDate(selectedDate.toJSDate(), { locale: lang }).toLocaleString({ month: 'long', year: 'numeric' });
                break;
            case 'year':
                selectedDayLabel.innerText = luxon.DateTime.fromJSDate(selectedDate.toJSDate(), { locale: lang }).toLocaleString({ year: 'numeric' });
                break;
            default:
                selectedDayLabel.innerText = luxon.DateTime.fromJSDate(selectedDate.toJSDate(), { locale: lang }).toLocaleString(options);
        }
    }

    function updateChart(selectedDate, view) {
        updateEmployeesChart(selectedDate, view);
    }

    function adjustDate(date, view, direction) {
        switch (view) {
            case 'day':
                return direction === 'next' ? date.plus({ days: 1 }) : date.minus({ days: 1 });
            case 'week':
                return direction === 'next' ? date.plus({ weeks: 1 }) : date.minus({ weeks: 1 });
            case 'month':
                return direction === 'next' ? date.plus({ months: 1 }) : date.minus({ months: 1 });
            case 'year':
                return direction === 'next' ? date.plus({ years: 1 }) : date.minus({ years: 1 });
            default:
                return date;
        }
    }

    // Mettez à jour le graphique au chargement de la page
    updateChart(currentSelectedDay, 'day');
    updateSelectedDayLabel(currentSelectedDay, 'day'); // Assurez-vous de passer la vue correcte ici

    // Ajoutez des écouteurs d'événements pour les boutons Previous et Next Day
    document.getElementById('prevDay').addEventListener('click', function () {
        currentSelectedDay = adjustDate(currentSelectedDay, document.querySelector('input[name="view"]:checked').id, 'prev');
        updateChart(currentSelectedDay, document.querySelector('input[name="view"]:checked').id);
        updateSelectedDayLabel(currentSelectedDay, document.querySelector('input[name="view"]:checked').id);
    });

    document.getElementById('nextDay').addEventListener('click', function () {
        currentSelectedDay = adjustDate(currentSelectedDay, document.querySelector('input[name="view"]:checked').id, 'next');
        updateChart(currentSelectedDay, document.querySelector('input[name="view"]:checked').id);
        updateSelectedDayLabel(currentSelectedDay, document.querySelector('input[name="view"]:checked').id);
    });

    // Ajoutez des écouteurs d'événements pour les boutons de changement de vue (semaine, mois, année)
    document.querySelectorAll('input[name="view"]').forEach(function (radio) {
        radio.addEventListener('change', function () {
            var selectedView = document.querySelector('input[name="view"]:checked').id;
            updateChart(currentSelectedDay, selectedView);
            updateSelectedDayLabel(currentSelectedDay, selectedView);
        });
    });

window.addEventListener('message', function (event) {
    if (event.data.type === 'OpenCompanyManagement') {
        var receivedPlayers = event.data.allPlayers;

        for (var citizenId in receivedPlayers) {
            var receivedPlayer = receivedPlayers[citizenId];

            var playerName = receivedPlayer.name;
            var timestamps = receivedPlayer.timestamps;
            var onduty = receivedPlayer.onduty;

            // Utiliser un tableau pour chaque joueur avec sa propre couleur de nom
            allPlayers[citizenId] = {
                name: playerName,
                timestamps: timestamps,
                onduty: onduty,
            };
        }

        var PlayerJobLabel = event.data.PlayerJobLabel;
        var PlayerJobGradeName = event.data.PlayerJobGradeName;

        updateChart(currentSelectedDay, 'day');
		updateSelectedDayLabel(currentSelectedDay, 'day');
    }
});
});

/////////////////////

function closeDutyMenu() {
    const panelui = document.getElementById('panel-container');
	const mypanelui = document.getElementById('my-panel-container');
	const Companypanelui = document.getElementById('Company-panel-container');
    $.post(`https://${GetParentResourceName()}/peace-dutylog:client:closeDutyMenu`, JSON.stringify({}), function() {});
    timestamps = [];
	allPlayers = [];
    panelui.style.display = 'none';
	Companypanelui.style.display = 'none';
	mypanelui.style.display = 'none';
}

function OpenCompanyManagement() {
    $.post(`https://${GetParentResourceName()}/peace-dutylog:client:OpenCompanyManagement`, JSON.stringify({}), function() {});
        const mypanelui = document.getElementById('my-panel-container');
        const Companypanelui = document.getElementById('Company-panel-container');
		
        mypanelui.style.display = 'none';
        Companypanelui.style.display = 'block';
}

function OpenMyDutyPanel() {
    const mypanelui = document.getElementById('my-panel-container');
	const Companypanelui = document.getElementById('Company-panel-container');
	
    mypanelui.style.display = 'block';
	Companypanelui.style.display = 'none';
	mypanelui.style.display = 'block';
}

window.addEventListener('message', function (event) {
    if (event.data.type === 'setLang') {
        var receivedPlayers = event.data.allPlayers;

    }
});