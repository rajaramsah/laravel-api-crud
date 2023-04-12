<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;

class ProductListController extends Controller
{
    //
    public function showlist($id=null){

        return $id?Product::find($id):Product::all();
    }

    public function create(Request $req){

        //return "add done";
        $product = new Product;
        $product->productname = $req->productname;
        $product->category = $req->category;
        $product->freshness = $req->freshness;
        $product->price = $req->price;
        $product->comment = $req->comment;
        $product->date = $req->date;
        $result = $product->save();
        if($result){

            return "Save Data Successfully";
        }else
        {
            return "Don't Save Data Success";
        }

    }

    public function update(Request $req){
        // return "update done";

        $product = Product::find($req->id);
        $product->productname = $req->productname;
        $product->category = $req->category;
        $product->freshness = $req->freshness;
        $product->price = $req->price;
        $product->comment = $req->comment;
        $product->date = $req->date;
        $result = $product->save();
        if($result){
            return "Update Data Successfully";
        }else
        {
            return "Don't Update Data Successfully";
        }
    }



    public function delete($id)
    {
        //return "delete done.$id";

        $product = Product::find($id);
        $result = $product->delete();
        if($result){
            return "Delete Data Successfully";
        }else{
            return "Don't Delete Data Successfully"; 
        }
    }


    public function search($productname){

        return Product::where("productname","like","%".$productname."%")->get();
    }
}
