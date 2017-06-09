//
//  DateUtility.swift
//  Learnwise
//
//  Created by Puja Kumari on 6/9/17.
//  Copyright © 2017 nineleaps. All rights reserved.
//

import Foundation

class DateUtility {
    var dateFormatter: DateFormatter!

    /// get DateFormatter
    ///
    /// - Parameter format: date format string getting from backend response
    /// - Returns: dateFormatter by setting US English locale
    func getDateFormatter(withFormat format: String) -> DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        dateFormatter.locale = NSLocale(localeIdentifier: DateFormats.kEnUsLocaleIdentifier) as Locale!
        return dateFormatter
    }

    /// Convert NSDate to String
    ///
    /// - Parameters:
    ///   - date: NSdate value
    ///   - format: date format
    /// - Returns: date as String
    func getStringFromDate(withFormat format: String, date: NSDate) -> String? {
        let dateFormatter = getDateFormatter(withFormat: format)
        return dateFormatter.string(from: date as Date)
    }

    /// Convert Date as String to NSDate
    ///
    /// - Parameters:
    ///   - dateString: date as String
    ///   - format: dateformat as String
    /// - Returns: date as NSDate
    func getDateFromString(withFormat format: String, dateString: String) -> NSDate? {
        let dateFormatter = getDateFormatter(withFormat: format)
        return dateFormatter.date(from: dateString) as NSDate?
    }

    /// Convert date as String with format "yyyy-MM-dd'T'HH:mm:ss.SSSZ" to this format "yyyy-MM-dd"
    ///
    /// - Parameter date: date as String
    /// - Returns: date in "yyyy-MM-dd" format
    func getDashedDateString(date: String) -> String? {
        let myDate = date
        let dateFormat = getDateFormatter(withFormat: DateFormats.kFullDateWithTimeZoneOffsetFormat)
        guard let date = dateFormat.date(from: myDate) else {
            return nil
        }
        dateFormat.dateFormat =  DateFormats.kYearMonthDayFormat
        return dateFormat.string(from: date)
    }

    /// Convert date as String with format "yyyy-MM-dd'T'HH:mm:ss.SSSZ"  to this format "MM/dd/yyyy"
    ///
    /// - Parameter date: date as String
    /// - Returns: date in "MM/dd/yyyy" format
    func getDateStringWithSlashForamt(date: String) -> String? {
        let myDate = date
        let dateFormat = getDateFormatter(withFormat: DateFormats.kFullDateWithTimeZoneOffsetFormat)
        guard let date = dateFormat.date(from: myDate) else {
            return nil
        }
        dateFormat.dateFormat =  DateFormats.kMonthDateYearFormat
        return dateFormat.string(from: date)
    }

    /// Convert date as String with format "yyyy-MM-dd'T'HH:mm:ss.SSSZ" to "MMM dd, yyyy""
    ///
    /// - Parameter currentDate: date as String
    /// - Returns: date in ""MMM dd, yyyy"
    func getDateStringWithDash(currentDate: String) -> String? {
        let dateFormat = getDateFormatter(withFormat: DateFormats.kFullDateWithTimeZoneOffsetFormat)
        guard let date = dateFormat.date(from:currentDate) else {
            return nil
        }
        dateFormat.dateFormat = DateFormats.kShortMonthDayYearFormat
        return dateFormat.string(from: date)
    }
}
