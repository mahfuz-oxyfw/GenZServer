window.CONFIG = {
    defaultTemplateId: 'default', //This is the default template for 2 args1
    defaultAltTemplateId: 'defaultAlt', //This one for 1 arg
    templates: { //You can add static templates here
        'default': '<div class="chat-message"><i class="fas fa-user-circle"></i> <b><span style="color: #0BE2CA">{0}</span>&nbsp;<span style="font-size: 14px; color: #e1e1e1;"></span></b>: {1}<div style="margin-top: 1px; font-weight: 300;"></div></div>',
        'defaultAlt': '{0}',
        'print': '<pre>{0}</pre>',
        'example:important': '<h1>^2{0}</h1>'
    },
    fadeTimeout: 3000,
    suggestionLimit: 5,
    style: {
        background: 'transparent',
        width: '35vh',
        height: '22vh',
    }
};