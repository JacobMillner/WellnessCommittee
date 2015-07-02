# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
var Modal = (function (parent, $) {
  var stacked = parent.stacked = parent.stacked || {};

  /**
  * Init Modal Stacked.
  *
  * @param {string}
  */
  stacked.init = function (name) {
    $(name).on('hidden.bs.modal', function( event ) {
      $(this).removeClass('fv-modal-stack');
      $('body').data('fv_open_modals', $('body').data('fv_open_modals') - 1);

      // add by emalherbi - create scroll automatic when back to modal or body - for bootstrap 3.3.4.
      if (Number($('body').data('fv_open_modals')) <= 0) {
        $('body').css('overflow', 'auto');
      } else {
        $('.modal').css('overflow', 'auto');
      }

    });
    $(name).on('shown.bs.modal', function ( event ) {
      // keep track of the number of open modals

      if (typeof($('body').data('fv_open_modals')) == 'undefined') {
        $('body').data('fv_open_modals', 0);
      }
      $('body').data('fv_open_modals', $('body').data('fv_open_modals') + 1);

      // if the z-index of this modal has been set, ignore.

      if ($(this).hasClass('fv-modal-stack')) {
        return;
      }

      $(this).addClass('fv-modal-stack');
      $(this).css('z-index', 1040 + (10 * $('body').data('fv_open_modals')));

      $('.modal-backdrop').not('.fv-modal-stack').css('z-index', 1039 + (10 * $('body').data('fv_open_modals')));
      $('.modal-backdrop').not('fv-modal-stack').addClass('fv-modal-stack');

      // add by emalherbi - body always overflow if exist modal - for bootstrap 3.3.4.
      $('body').css('overflow', 'hidden');
    });
  };

  return parent;
})(Modal || {}, jQuery);

 $(document).ready(function() {
   Modal.stacked.init('#myModal' );
   Modal.stacked.init('#myModal2');
   Modal.stacked.init('#myModal3');
   Modal.stacked.init('#myModal4');

   $('#openBtn').click(function() {
     $('#myModal').modal({ show:true });
   });
 });
