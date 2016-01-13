<?php
class Gallery_View extends View
{
    public function __construct()
    {
        parent::__construct();
    }
    public function getMainPage($categories){
        $this->tpl->SetParam('CategoriesList', $categories);
        return  $this->tpl->Fetch('templates/gallery/gallery.tpl');
    }
    public function getViewPage($gallery, $pagination, $errors){
        $assocArray = array(
            'Gallery' => $gallery,
            'Pagination' => $pagination,
            'Errors' => $errors
        );
        $this->tpl->SetParams($assocArray);
        return  $this->tpl->Fetch('templates/gallery/gallery_view.tpl');
    }
}