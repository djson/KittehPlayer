import QtQuick 2.0
import Qt.labs.settings 1.0

import "translations.js" as Translations

Item {

    function getTranslation(code, language) {
        var lang = Translations.translations[language]
        if (lang == undefined || lang == "undefined") {
            return "TranslationNotFound"
        }
        var text = String(Translations.translations[i18n.language][code])
        var args = Array.prototype.slice.call(arguments, 1)
        var i = 0
        return text.replace(/%s/g, function () {
            return args[i++]
        })
    }
}
