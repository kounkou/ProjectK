/// Copyright (c) 2017 godbod, All rights reserved.

////////////////////////////////////////////////////////////////////////////////
/// FILE Search.qml
///
/// DESCRIPTION
/// Search.qml is the controller part of the qml User Interface showing the search bar
///
/// DESIGN DOCUMENTS
/// none
///
/// DATE          BY                         Issue #      REMARKS
/// 09-Sept-2017  Godfrain Jacques KOUNKOU   N/A          Initial release
///
////////////////////////////////////////////////////////////////////////////////

import QtQuick 2.4

SearchForm {
    // Call back for the search input
    inputSearch.onTextChanged: {
        filterModel.setFilterString(inputText.text);
    }

    clearSearch.onClicked: {
        console.log("clicked on the clear button")
        inputText.text = ""
    }
}
