import UIKit
import PlaygroundSupport
import WebKit
class WebViewController : UIViewController {

    override func loadView() {

        let webView = WebView()
        webView.loadHTMLString("<a href='www.youtube.com'>Hello world</a>", baseURL: nil)

        self.view = webView
    }

}

PlaygroundPage.current.liveView = WebViewController()
