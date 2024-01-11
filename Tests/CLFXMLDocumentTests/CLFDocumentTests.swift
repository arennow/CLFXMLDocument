import XCTest
import CLFXMLDocument

final class CLFDocumentTests: XCTestCase {
	func testBasicFunctionality() throws {
		let src = """
		<animals>
			<cats>
				<cat breed="Siberian" color="lightgray">Tinna</cat>
				<cat breed="Domestic" color="darkgray">Rose</cat>
				<cat breed="Domestic" color="yellow">Caesar</cat>
				<cat></cat>
			</cats>
			<dogs>
				<dog breed="Bull Terrier" color="white">Villy</dog>
				<dog breed="Bull Terrier" color="white">Spot</dog>
				<dog breed="Golden Retriever" color="yellow">Betty</dog>
				<dog breed="Miniature Schnauzer" color="black">Kika</dog>
			</dogs>
		</animals>
		"""
		
		let doc = try XMLDocument(xmlString: src)
		
		XCTAssertEqual(doc.childCount, 1)
		XCTAssertEqual(doc.child(at: 0)?.childCount, 2)
		XCTAssertEqual(try (doc.nodes(forXPath: "/animals/cats/*").first as? XMLElement)?.attribute(forName: "breed")?.stringValue, "Siberian")
	}
}
