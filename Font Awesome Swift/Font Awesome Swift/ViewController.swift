//
//  ViewController.swift
//  Font Awesome Swift
//
//  Created by jankz on 16/2/29.
//  Copyright © 2016年 jankz. All rights reserved.
//

import UIKit
import LTMorphingLabel
class ViewController: UIViewController,LTMorphingLabelDelegate{
    @IBOutlet weak var text: LTMorphingLabel!

    @IBOutlet weak var fontLabel: UILabel!
    
    @IBOutlet weak var testLabel: UILabel!
    private var i = 0
    private var j = 0
    private var iconArray = [
        "FA500Px"," FAAdjust"," FAAdn"," FAAlignCenter"," FAAlignJustify"," FAAlignLeft"," FAAlignRight"," FAAmazon"," FAAmbulance"," FAAnchor"," FAAndroid"," FAAngellist"," FAAngleDoubleDown"," FAAngleDoubleLeft"," FAAngleDoubleRight"," FAAngleDoubleUp"," FAAngleDown"," FAAngleLeft"," FAAngleRight"," FAAngleUp"," FAApple"," FAArchive"," FAAreaChart"," FAArrowCircleDown"," FAArrowCircleLeft"," FAArrowCircleODown"," FAArrowCircleOLeft"," FAArrowCircleORight"," FAArrowCircleOUp"," FAArrowCircleRight"," FAArrowCircleUp"," FAArrowDown"," FAArrowLeft"," FAArrowRight"," FAArrowUp"," FAArrows"," FAArrowsAlt"," FAArrowsH"," FAArrowsV"," FAAsterisk"," FAAt"," FAAutomobile"," FABackward"," FABalanceScale"," FABan"," FABank"," FABarChart"," FABarChartO"," FABarcode"," FABars"," FABattery0"," FABattery1"," FABattery2"," FABattery3"," FABattery4"," FABatteryEmpty"," FABatteryFull"," FABatteryHalf"," FABatteryQuarter"," FABatteryThreeQuarters"," FABed"," FABeer"," FABehance"," FABehanceSquare"," FABell"," FABellO"," FABellSlash"," FABellSlashO"," FABicycle"," FABinoculars"," FABirthdayCake"," FABitbucket"," FABitbucketSquare"," FABitcoin"," FABlackTie"," FABold"," FABolt"," FABomb"," FABook"," FABookmark"," FABookmarkO"," FABriefcase"," FABtc"," FABug"," FABuilding"," FABuildingO"," FABullhorn"," FABullseye"," FABus"," FABuysellads"," FACab"," FACalculator"," FACalendar"," FACalendarCheckO"," FACalendarMinusO"," FACalendarO"," FACalendarPlusO"," FACalendarTimesO"," FACamera"," FACameraRetro"," FACar"," FACaretDown"," FACaretLeft"," FACaretRight"," FACaretSquareODown"," FACaretSquareOLeft"," FACaretSquareORight"," FACaretSquareOUp"," FACaretUp"," FACartArrowDown"," FACartPlus"," FACc"," FACcAmex"," FACcDinersClub"," FACcDiscover"," FACcJcb"," FACcMastercard"," FACcPaypal"," FACcStripe"," FACcVisa"," FACertificate"," FAChain"," FAChainBroken"," FACheck"," FACheckCircle"," FACheckCircleO"," FACheckSquare"," FACheckSquareO"," FAChevronCircleDown"," FAChevronCircleLeft"," FAChevronCircleRight"," FAChevronCircleUp"," FAChevronDown"," FAChevronLeft"," FAChevronRight"," FAChevronUp"," FAChild"," FAChrome"," FACircle"," FACircleO"," FACircleONotch"," FACircleThin"," FAClipboard"," FAClockO"," FAClone"," FAClose"," FACloud"," FACloudDownload"," FACloudUpload"," FACny"," FACode"," FACodeFork"," FACodepen"," FACoffee"," FACog"," FACogs"," FAColumns"," FAComment"," FACommentO"," FACommenting"," FACommentingO"," FAComments"," FACommentsO"," FACompass"," FACompress"," FAConnectdevelop"," FAContao"," FACopy"," FACopyright"," FACreativeCommons"," FACreditCard"," FACrop"," FACrosshairs"," FACss3"," FACube"," FACubes"," FACut"," FACutlery"," FADashboard"," FADashcube"," FADatabase"," FADedent"," FADelicious"," FADesktop"," FADeviantart"," FADiamond"," FADigg"," FADollar"," FADotCircleO"," FADownload"," FADribbble"," FADropbox"," FADrupal"," FAEdit"," FAEject"," FAEllipsisH"," FAEllipsisV"," FAEmpire"," FAEnvelope"," FAEnvelopeO"," FAEnvelopeSquare"," FAEraser"," FAEur"," FAEuro"," FAExchange"," FAExclamation"," FAExclamationCircle"," FAExclamationTriangle"," FAExpand"," FAExpeditedssl"," FAExternalLink"," FAExternalLinkSquare"," FAEye"," FAEyeSlash"," FAEyedropper"," FAFacebook"," FAFacebookF"," FAFacebookOfficial"," FAFacebookSquare"," FAFastBackward"," FAFastForward"," FAFax"," FAFeed"," FAFemale"," FAFighterJet"," FAFile"," FAFileArchiveO"," FAFileAudioO"," FAFileCodeO"," FAFileExcelO"," FAFileImageO"," FAFileMovieO"," FAFileO"," FAFilePdfO"," FAFilePhotoO"," FAFilePictureO"," FAFilePowerpointO"," FAFileSoundO"," FAFileText"," FAFileTextO"," FAFileVideoO"," FAFileWordO"," FAFileZipO"," FAFilesO"," FAFilm"," FAFilter"," FAFire"," FAFireExtinguisher"," FAFirefox"," FAFlag"," FAFlagCheckered"," FAFlagO"," FAFlash"," FAFlask"," FAFlickr"," FAFloppyO"," FAFolder"," FAFolderO"," FAFolderOpen"," FAFolderOpenO"," FAFont"," FAFonticons"," FAForumbee"," FAForward"," FAFoursquare"," FAFrownO"," FAFutbolO"," FAGamepad"," FAGavel"," FAGbp"," FAGe"," FAGear"," FAGears"," FAGenderless"," FAGetPocket"," FAGg"," FAGgCircle"," FAGift"," FAGit"," FAGitSquare"," FAGithub"," FAGithubAlt"," FAGithubSquare"," FAGittip"," FAGlass"," FAGlobe"," FAGoogle"," FAGooglePlus"," FAGooglePlusSquare"," FAGoogleWallet"," FAGraduationCap"," FAGratipay"," FAGroup"," FAHSquare"," FAHackerNews"," FAHandGrabO"," FAHandLizardO"," FAHandODown"," FAHandOLeft"," FAHandORight"," FAHandOUp"," FAHandPaperO"," FAHandPeaceO"," FAHandPointerO"," FAHandRockO"," FAHandScissorsO"," FAHandSpockO"," FAHandStopO"," FAHddO"," FAHeader"," FAHeadphones"," FAHeart"," FAHeartO"," FAHeartbeat"," FAHistory"," FAHome"," FAHospitalO"," FAHotel"," FAHourglass"," FAHourglass1"," FAHourglass2"," FAHourglass3"," FAHourglassEnd"," FAHourglassHalf"," FAHourglassO"," FAHourglassStart"," FAHouzz"," FAHtml5"," FAICursor"," FAIls"," FAImage"," FAInbox"," FAIndent"," FAIndustry"," FAInfo"," FAInfoCircle"," FAInr"," FAInstagram"," FAInstitution"," FAInternetExplorer"," FAIntersex"," FAIoxhost"," FAItalic"," FAJoomla"," FAJpy"," FAJsfiddle"," FAKey"," FAKeyboardO"," FAKrw"," FALanguage"," FALaptop"," FALastfm"," FALastfmSquare"," FALeaf"," FALeanpub"," FALegal"," FALemonO"," FALevelDown"," FALevelUp"," FALifeBouy"," FALifeBuoy"," FALifeRing"," FALifeSaver"," FALightbulbO"," FALineChart"," FALink"," FALinkedin"," FALinkedinSquare"," FALinux"," FAList"," FAListAlt"," FAListOl"," FAListUl"," FALocationArrow"," FALock"," FALongArrowDown"," FALongArrowLeft"," FALongArrowRight"," FALongArrowUp"," FAMagic"," FAMagnet"," FAMailForward"," FAMailReply"," FAMailReplyAll"," FAMale"," FAMap"," FAMapMarker"," FAMapO"," FAMapPin"," FAMapSigns"," FAMars"," FAMarsDouble"," FAMarsStroke"," FAMarsStrokeH"," FAMarsStrokeV"," FAMaxcdn"," FAMeanpath"," FAMedium"," FAMedkit"," FAMehO"," FAMercury"," FAMicrophone"," FAMicrophoneSlash"," FAMinus"," FAMinusCircle"," FAMinusSquare"," FAMinusSquareO"," FAMobile"," FAMobilePhone"," FAMoney"," FAMoonO"," FAMortarBoard"," FAMotorcycle"," FAMousePointer"," FAMusic"," FANavicon"," FANeuter"," FANewspaperO"," FAObjectGroup"," FAObjectUngroup"," FAOdnoklassniki"," FAOdnoklassnikiSquare"," FAOpencart"," FAOpenid"," FAOpera"," FAOptinMonster"," FAOutdent"," FAPagelines"," FAPaintBrush"," FAPaperPlane"," FAPaperPlaneO"," FAPaperclip"," FAParagraph"," FAPaste"," FAPause"," FAPaw"," FAPaypal"," FAPencil"," FAPencilSquare"," FAPencilSquareO"," FAPhone"," FAPhoneSquare"," FAPhoto"," FAPictureO"," FAPieChart"," FAPiedPiper"," FAPiedPiperAlt"," FAPinterest"," FAPinterestP"," FAPinterestSquare"," FAPlane"," FAPlay"," FAPlayCircle"," FAPlayCircleO"," FAPlug"," FAPlus"," FAPlusCircle"," FAPlusSquare"," FAPlusSquareO"," FAPowerOff"," FAPrint"," FAPuzzlePiece"," FAQq"," FAQrcode"," FAQuestion"," FAQuestionCircle"," FAQuoteLeft"," FAQuoteRight"," FARa"," FARandom"," FARebel"," FARecycle"," FAReddit"," FARedditSquare"," FARefresh"," FARegistered"," FARemove"," FARenren"," FAReorder"," FARepeat"," FAReply"," FAReplyAll"," FARetweet"," FARmb"," FARoad"," FARocket"," FARotateLeft"," FARotateRight"," FARouble"," FARss"," FARssSquare"," FARub"," FARuble"," FARupee"," FASafari"," FASave"," FAScissors"," FASearch"," FASearchMinus"," FASearchPlus"," FASellsy"," FASend"," FASendO"," FAServer"," FAShare"," FAShareAlt"," FAShareAltSquare"," FAShareSquare"," FAShareSquareO"," FAShekel"," FASheqel"," FAShield"," FAShip"," FAShirtsinbulk"," FAShoppingCart"," FASignIn"," FASignOut"," FASignal"," FASimplybuilt"," FASitemap"," FASkyatlas"," FASkype"," FASlack"," FASliders"," FASlideshare"," FASmileO"," FASoccerBallO"," FASort"," FASortAlphaAsc"," FASortAlphaDesc"," FASortAmountAsc"," FASortAmountDesc"," FASortAsc"," FASortDesc"," FASortDown"," FASortNumericAsc"," FASortNumericDesc"," FASortUp"," FASoundcloud"," FASpaceShuttle"," FASpinner"," FASpoon"," FASpotify"," FASquare"," FASquareO"," FAStackExchange"," FAStackOverflow"," FAStar"," FAStarHalf"," FAStarHalfEmpty"," FAStarHalfFull"," FAStarHalfO"," FAStarO"," FASteam"," FASteamSquare"," FAStepBackward"," FAStepForward"," FAStethoscope"," FAStickyNote"," FAStickyNoteO"," FAStop"," FAStreetView"," FAStrikethrough"," FAStumbleupon"," FAStumbleuponCircle"," FASubscript"," FASubway"," FASuitcase"," FASunO"," FASuperscript"," FASupport"," FATable"," FATablet"," FATachometer"," FATag"," FATags"," FATasks"," FATaxi"," FATelevision"," FATencentWeibo"," FATerminal"," FATextHeight"," FATextWidth"," FATh"," FAThLarge"," FAThList"," FAThumbTack"," FAThumbsDown"," FAThumbsODown"," FAThumbsOUp"," FAThumbsUp"," FATicket"," FATimes"," FATimesCircle"," FATimesCircleO"," FATint"," FAToggleDown"," FAToggleLeft"," FAToggleOff"," FAToggleOn"," FAToggleRight"," FAToggleUp"," FATrademark"," FATrain"," FATransgender"," FATransgenderAlt"," FATrash"," FATrashO"," FATree"," FATrello"," FATripadvisor"," FATrophy"," FATruck"," FATry"," FATty"," FATumblr"," FATumblrSquare"," FATurkishLira"," FATv"," FATwitch"," FATwitter"," FATwitterSquare"," FAUmbrella"," FAUnderline"," FAUndo"," FAUniversity"," FAUnlink"," FAUnlock"," FAUnlockAlt"," FAUnsorted"," FAUpload"," FAUsd"," FAUser"," FAUserMd"," FAUserPlus"," FAUserSecret"," FAUserTimes"," FAUsers"," FAVenus"," FAVenusDouble"," FAVenusMars"," FAViacoin"," FAVideoCamera"," FAVimeo"," FAVimeoSquare"," FAVine"," FAVk"," FAVolumeDown"," FAVolumeOff"," FAVolumeUp"," FAWarning"," FAWechat"," FAWeibo"," FAWeixin"," FAWhatsapp"," FAWheelchair"," FAWifi"," FAWikipediaW"," FAWindows"," FAWon"," FAWordpress"," FAWrench"," FAXing"," FAXingSquare"," FAYCombinator"," FAYCombinatorSquare"," FAYahoo"," FAYc"," FAYcSquare"," FAYelp"," FAYen"," FAYoutube"," FAYoutubePlay"," FAYoutubeSquare"

    ]
    private var iconName:String {
        if i >= iconArray.count {
            i = 0
        }
        return iconArray[j++]
    }
//    
 
    
    @IBAction private func changeBtn(sender: UIButton) {
        
        testLabel.text = iconName
        text.text = iconName
//        text.morphingEffect = .Scale
        if i >= iconArray.count {
            i = 0
        }
        switch ((i++) % 7) {
        case 1:
            text.morphingEffect = .Evaporate
        case 2:
            text.morphingEffect = .Fall
        case 3:
            text.morphingEffect = .Pixelate
        case 4:
            text.morphingEffect = .Sparkle
        case 5:
            text.morphingEffect = .Burn
           
        case 6:
            text.morphingEffect = .Anvil
        case 0:
            text.morphingEffect = .Scale
        default:
            break
        }
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        fontLabel.setFAIcon(FAType.FAGithub, iconSize: 100)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

