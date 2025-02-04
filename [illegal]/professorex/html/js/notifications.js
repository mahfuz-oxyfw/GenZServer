function Notify(text, type, duration) {
    $.post('https://professorex/notification', JSON.stringify({ text: text, type: type, duration: duration }));
}