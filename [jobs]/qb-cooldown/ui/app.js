window.addEventListener('message', function(event) {
    if (event.data.action === "openlist") {
        const list = event.data.list;
        const active = event.data.active;
        $(".intro").fadeIn(300); // Smooth transition for displaying the intro

        $(".card-text").html(`
            <span class="badge">${event.data.name}</span>
        `);

        $(".tb-pop").html(""); // Clear previous list
        let activeClass, color;
        for (let l in list) {
            // Add active/inactive class based on condition
            activeClass = l === active ? "active" : "inactive";

            // Determine the background color for each task type
            color = getColorForType(l);

            // Append each list item with smooth transition
            $(".tb-pop").append(`
                <div class="img-btns ${activeClass}" data-ptype="${l}">
                    <p class="task-label" style="background-color:${color}">${list[l].label}</p>
                    <img class="task-img" src="images/dummy.jpg" alt="Task Image">
                </div>
            `);
        }

    } else if (event.data.action === "showstatus") {
        const active = event.data.active;
        const type = event.data.type;
        const cooldown = event.data.cooldown;

        $(".prio-text").fadeIn(300); // Smooth transition for status text
        $(".prio-text").html("");

        const { color, text } = getStatusText(type, active, cooldown);

        $(".prio-text").css({
            "background-color": color
        }).html(text);
    }
});

$(document).ready(function() {
    $('.tb-pop').on('click', '.img-btns', function() {
        const ptype = $(this).data("ptype");
        CloseUi();
        $.post(`https://${GetParentResourceName()}/setprio`, JSON.stringify({ ptype }));
    });

    $(document).keydown(function(e) {
        if (e.keyCode === 27) {
            CloseUi();
            $.post(`https://${GetParentResourceName()}/close`);
        }
    });
});

function getColorForType(type) {
    switch (type) {
        case "cooldown":
            return "#e60000";
        case "honhold":
            return "#4d88ff";
        case "inprogress":
            return "#0073e6";
        case "meeting":
            return "#004d99";
        case "safe":
            return "#00b300";
        default:
            return "#000";
    }
}

function getStatusText(type, active, cooldown) {
    let color, text;
    switch (type) {
        case "cooldown":
            color = "#e60000";
            text = `${active.label}: ${cooldown} Mins`;
            break;
        case "honhold":
            color = "#4d88ff";
            text = active.label;
            break;
        case "inprogress":
            color = "#0073e6";
            text = active.label;
            break;
        case "meeting":
            color = "#004d99";
            text = active.label;
            break;
        case "safe":
            color = "#00b300";
            text = active.label;
            break;
        default:
            color = "#000";
            text = "Inactive";
    }
    return { color, text };
}

function CloseUi() {
    $(".intro").fadeOut(300); // Smooth transition for hiding the intro
}
