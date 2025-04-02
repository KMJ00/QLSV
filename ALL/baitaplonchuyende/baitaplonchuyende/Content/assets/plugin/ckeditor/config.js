/**
 * @license Copyright (c) 2003-2015, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.md or http://ckeditor.com/license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
    // config.uiColor = '#AADC6E';
    config.syntaxhighlight = 'csharp';
    config.language = 'vi';

    config.filebrowserBrowseUrl = '/Content/assets/plugin/ckfinder/ckfinder.html';
    config.filebrowserImageBrowseUrl = '/Content/assets/plugin/ckfinder/ckfinder.html?Type=Images';
    config.filebrowserFileBrowseUrl = '/Content/assets/plugin/ckfinder/ckfinder.html?Type=Files';
    config.filebrowserFlashBrowseUrl = '/Content/assets/plugin/ckfinder/ckfinder.html?Type=Flash';
    config.filebrowserUploadUrl = '/Content/assets/plugin/ckfinder/core/connector/aspx/connector.aspx?command=QuickUpload?type=Files';
    config.filebrowserImageUploadUrl = '/Data/';
    config.filebrowserFlashUploadUrl = '/Content/assets/plugin/ckfinder/ckfinder.html?Type=Images';
    config.filebrowserFileUploadUrl = '/Content/assets/plugin/ckfinder/ckfinder.html?Type=Files';
};
