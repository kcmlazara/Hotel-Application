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

    if (count > 140){
      this.characterCountTarget.classList.add("text-danger")
    } else {
      this.characterCountTarget.classList.remove("text-danger")
    } 
 }

 submit(event) {
   var count = this.content_reviewTarget.value.length
         if (count > 140 || count == 0) {
         event.preventDefault()
         }
 }
}