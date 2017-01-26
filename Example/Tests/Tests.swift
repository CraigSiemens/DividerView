// https://github.com/Quick/Quick

import Quick
import Nimble
import DividerView

class DividerViewSpec: QuickSpec {
    override func spec() {
        describe("horizontal divider") {

            let divider = DividerView(axis: .horizontal)
            
            it("should have a intrinsic content height of 1") {
                expect(divider.intrinsicContentSize.height).to(equal(1))
            }
            
            it("should have a intrinsic content width of UIViewNoIntrinsicMetric") {
                expect(divider.intrinsicContentSize.width).to(equal(UIViewNoIntrinsicMetric))
            }
        }

        describe("vertical divider") {
            
            let divider = DividerView(axis: .vertical)
            
            it("should have a intrinsic content height of UIViewNoIntrinsicMetric") {
                expect(divider.intrinsicContentSize.height).to(equal(UIViewNoIntrinsicMetric))
            }
            
            it("should have a intrinsic content width of 1") {
                expect(divider.intrinsicContentSize.width).to(equal(1))
            }
        }
        
        describe("content hugging priority") {
            let divider = DividerView()
            
            it("should have required priority for vertical") {
                let priority = divider.contentHuggingPriority(for: .vertical)
                expect(priority).to(equal(UILayoutPriorityRequired))
            }
            
            it("should have required priority for horizontal") {
                let priority = divider.contentHuggingPriority(for: .horizontal)
                expect(priority).to(equal(UILayoutPriorityRequired))
            }
        }
    }
}
