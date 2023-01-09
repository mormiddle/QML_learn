import QtQuick 2.0
import QtQuick.Controls 2.5


ComboBox {
    model: 10
    editable: true
    validator: RegExpValidator { regExp: /[0-9A-F]+/ }
}
