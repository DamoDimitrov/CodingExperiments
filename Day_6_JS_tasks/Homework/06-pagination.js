/*
Imagine that you're working on a frontend application that has some paginated content
and you're tasked with creating a generic Pagination component.
Given the class below, provide implementation for it's methods and constructor.
------------------------------------------------------------------------------------------
Expected Output
------------------------------------------------------------------------------------------
const pagination = new Pagination(sampleDataSet, 5);

pagination.getVisibleItems(); // ['foo','Public','moratorium','pricing','directional']
pagination.nextPage();
pagination.getVisibleItems(); // ['project','Right','multimedia','real','knowledge']
...
------------------------------------------------------------------------------------------
*/

class Pagination {
  constructor(items, pageSize) {
    this.items; // Holds the items array
    this.pageSize; // Holds the size of each page
    this.totalPages; // Holds the total number of pages
    this.currentPage; // Holds the current page number
  }

  // Methods
  // Goes to the previous page
  prevPage() {}

  // Goes to the next page
  nextPage() {}

  // Goes to the first page
  firstPage() {}

  // Goes to the last page
  lastPage() {}

  // Goes to a page determined by the `page` argument
  goToPage(page) {}

  // Returns the currently visible items as an array
  getVisibleItems() {}
}

const sampleDataSet = ['foo','Public','moratorium','pricing','directional','project','Right','multimedia','real','knowledge','orchestration','access','Compatible','interface','encoding','extranet','actuating','algorithm','initiative','data','attitude','initiative','projection','Quality','focus','Up','Synergistic','time','tangible','grid','grid-enabled','challenge','Upgradable','artificial','structure','superstructure','transitional','superstructure','Multi','asynchronous','empowering','Reactive','Distributed','contextually','5th','Public','modular','time','optimizing','non','discrete','Object','archive','core','initiative','multimedia','Extended','support','analyzer','software','productivity','Open','focus','Business','bottom','non','multi','Realigned','stable','next','protocol','next','Extended','value','Future','upward','intranet','circuit','Universal','Progressive','challenge','Organic','reciprocal','neural','maximized','task','exuding','benchmark','matrix','Implemented','systemic','attitude','parallelism','function','middleware','Managed','migration','Grass','emulation','Switchable','Organized'];

const pagination = new Pagination(sampleDataSet, 10);

pagination.goToPage(5);
pagination.getVisibleItems(); // ...
