import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
 static targets = [ "content_review", "characterCount" ]
 
 initialize() {
    this.update()
 }

 update () {
 var count = this.content_reviewTarget.value.length
        if (count == 1) {
         var message = "1 character"
        }
        else {
        var message = count + " " + "characters"
        }
    this.characterCountTarget.textContent = message
 }
}