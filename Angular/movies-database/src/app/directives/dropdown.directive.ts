import {Directive, ElementRef, HostBinding, HostListener} from '@angular/core';

@Directive({
  selector: '[appDropdown]',
  exportAs: 'appDropdown'
})
export class DropdownDirective {


  @HostBinding('class.show') isOpen = false;

  @HostListener('document: click', ['$event']) clickOutsideToggle(event: Event) {
    this.isOpen = this.elementRef
      .nativeElement
      .contains(event.target) ? !this.isOpen : false;
  }



  constructor(
    private elementRef: ElementRef
  ) {}

}
