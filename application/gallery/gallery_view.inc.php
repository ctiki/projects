<?php
class Gallery_View extends View
{
    public function __construct()
    {
        parent::__construct();
    }
    public function getMainPage($categories)
    {
        $this->tpl->SetParam('CategoriesList', $categories);
        return  $this->tpl->Fetch('templates/gallery/gallery.tpl');
    }
    public function getViewPage($categories, $category, $gallery, $pagination, $order, $errors)
    {
        $assocArray = array(
            'CategoriesList' => $categories,
            'CategoryName' => $category,
            'Gallery' => $gallery,
            'Pagination' => $pagination,
            'Order' => $order,
            'Errors' => $errors
        );
        $this->tpl->SetParams($assocArray);
        return  $this->tpl->Fetch('templates/gallery/gallery_view.tpl');
    }
    public function getDetailsPage($record, $errors)
    {
        $assocArray = [
            'Record' => $record,
            'Errors' => $errors
        ];
        $this->tpl->SetParams($assocArray);
        return $this->tpl->Fetch('templates/gallery/gallery_details.tpl');
    }
}