<?php

namespace App\Http\Controllers;

use App\Models\category;
use App\Models\product;
use App\Models\User;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function insertproduct(Request  $request){

        $validated = $request->validate([
         'name'=>'required',
         'description'=>'required',
         'price'=>'required',
         'category_id'=>'required'

        ]);

        product::create($validated);

        return redirect()->route('addproduct')->with('success','Product Added Succesfully');

    }

    // ab yaha se view product wala kam start he 

    public function selectproducts(){
        $products = product::all();
        return view('view-products',compact('products'));
    }

    // yaha se update product wala kam shoro he 

    public function updateproduct($id){
        $selectedproduct = product::find($id);

        $categories = category::all();

        return view('product-update',compact('selectedproduct','categories'));
    }

    // ye yaha se update krny wala post ka function he 

    public function updatedone(Request $request,$id){

     $validateddata = $request->validate([
         'name'=>'required',
         'description'=>'required',
         'price'=>'required',
         'category_id'=>'required'
     ]);

     $Product = product::find($id);

     $Product->update($validateddata);

     return redirect()->route('viewproduct')->with('success','Product Update Succesfully');


    }

    // yaha se product delete wala function start he 

    public function dltproduct($id){
        $product = product::find($id);

        $product->delete();

        return redirect()->route('viewproduct')->with('success','Product Deleted Successfully');
    }

    public function dashboard(){
    $productCount= product::count();
    
    $categorycount = category::count();

    $usercount = User::count();

    return view('admin-dashboard',compact('productCount','categorycount','usercount'));

    }
}
