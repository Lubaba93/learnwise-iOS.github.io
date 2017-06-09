//
//  DateFormatManager.swift
//  Learnwise
//
//  Created by Puja Kumari on 6/9/17.
//  Copyright © 2017 nineleaps. All rights reserved.
//

import Foundation

class DateFormatManager {
    var dateFormatter: DateFormatter!

    /// get DateFormatter
    ///
    /// - Parameter format: date format string getting from backend response
    /// - Returns: dateFormatter by setting US English locale
    func getDateFormatterWithFormat(format: String) -> DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        dateFormatter.locale = NSLocale(localeIdentifier: DateFormats.kEnUsLocaleIdentifier) as Locale!
        return dateFormatter
    }

    /// Convert NSdate to String
    ///
    /// - Parameters:
    ///   - date: NSdate value
    ///   - format: date format
    /// - Returns: date as String
    func getStringFromDateWithFormat(date: NSDate, format: String) -> String {
        let dateFormatter = getDateFormatterWithFormat(format: format)
        if let dateValue: NSDate = date {
            return dateFormatter.string(from: dateValue as Date)
        }
        return ""
    }

    /// Convert Date as String to NSDate
    ///
    /// - Parameters:
    ///   - dateString: date as String
    ///   - format: dateformat as String
    /// - Returns: date as NSDate
    func getDateFromStringWithFormat(dateString: String, format: String) -> NSDate? {
        let dateFormatter = getDateFormatterWithFormat(format: format)
        if let dateInString: String = dateString {
            return dateFormatter.date(from: dateInString) as NSDate?
        }
    }

    /// Convert date as String with format "yyyy-MM-dd'T'HH:mm:ss.SSSZ" to this format "yyyy-MM-dd"
    ///
    /// - Parameter date: date as String
    /// - Returns: date in "yyyy-MM-dd" format
    func getDashedDateString(date: String) -> String {
        let myDate = date
        let dateFormat = getDateFormatterWithFormat(format: DateFormats.kFullDateWithTimeZoneOffsetFormat)
        let date = dateFormat.date(from: myDate)
        dateFormat.dateFormat =  DateFormats.kYearMonthDayFormat
        var newDate  = ""
        if let date = date {
            newDate =  dateFormat.string(from: date)
        }
        print("newDate:\(newDate)")
        return newDate
    }

    /// Convert date as String with format "yyyy-MM-dd'T'HH:mm:ss.SSSZ"  to this format "MM/dd/yyyy"
    ///
    /// - Parameter date: date as String
    /// - Returns: date in "MM/dd/yyyy" format
    func getDateStringWithSlashForamt(date: String) -> String {
        let myDate = date
        let dateFormat = getDateFormatterWithFormat(format: DateFormats.kFullDateWithTimeZoneOffsetFormat)
        let date = dateFormat.date(from: myDate)
        dateFormat.dateFormat =  DateFormats.kMonthDateYearFormat
        var newDate  = ""
        if let date = date {
            newDate =  dateFormat.string(from: date)
        }
        return newDate
    }

    /// Convert date as String with format "yyyy-MM-dd'T'HH:mm:ss.SSSZ" to "MMM dd, yyyy""
    ///
    /// - Parameter currentDate: date as String
    /// - Returns: date in ""MMM dd, yyyy"
    func getDateStringWithDash(currentDate: String) -> String {
        let dateFormat = getDateFormatterWithFormat(format: DateFormats.kFullDateWithTimeZoneOffsetFormat)
        let date = dateFormat.date(from:currentDate)
        dateFormat.dateFormat = DateFormats.kShortMonthDayYearFormat
        var newDate  = ""
        if let date = date {
            newDate =  dateFormat.string(from: date)
        }
        return newDate
    }
}
