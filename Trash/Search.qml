import QtQuick 2.4

SearchForm {
    inputSearch.onTextChanged: {
        filterModel.setFilterString(text);
    }

    clearSearch.onClicked: {
        console.log("clicked on the clear button")
        input.text = ""
    }
}
