$(document).ready(function () {
    window.addEventListener("message", function (event) {
        switch (event.data.type) {
            case "txt": {
                $("#data").html(event.data.html);
                $("#data").show();
            };
                break;
        }
    });
});