import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = [ "content_review", "new" ]
 
    toggle() {
        this.content_reviewTarget.classList.add("d-none")
        this.newTarget.classList.remove("d-none")
    }
 }