/// Copyright (c) 2017 godbod, All rights reserved.

////////////////////////////////////////////////////////////////////////////////
/// FILE Application.cpp
///
/// DESCRIPTION
/// Logging class for
///
/// DESIGN DOCUMENTS
/// none
///
/// DATE          BY                         Issue #      REMARKS
/// 09-Sept-2017  Godfrain Jacques KOUNKOU   N/A          Initial release
///
////////////////////////////////////////////////////////////////////////////////

#ifndef LOGGING_H
#define LOGGING_H

#include <string>
#include <iostream>

#define TRACE

namespace amz {

    #define LOG_ENTEREXIT EntryRaiiObject obj ## __LINE__ (__FUNCTION__);

    struct EntryRaiiObject {

    public:
        /// @brief constructor
        /// @param [in] f is the function
        EntryRaiiObject(const std::string& f)
            : _f(f)
        {
            #ifdef TRACE
            std::cout << "Entered into " << _f << std::endl;
            #endif
        }

        /// @brief destructor
       ~EntryRaiiObject()
        {
            #ifdef TRACE
            std::cout << "Exited from  " << _f << std::endl;
            #endif
        }

    public:
        /// @brief function name
        std::string _f;

    private:
        /// @brief copy constructor
        EntryRaiiObject(const EntryRaiiObject&);

        /// @brief assignment operator
        EntryRaiiObject& operator =(const EntryRaiiObject&);
    };
}

#endif // LOGGING_H
