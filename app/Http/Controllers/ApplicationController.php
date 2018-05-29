<?php
namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Lista;

class ApplicationController extends Controller {

    public function application() {

        $lista = Lista::all();
        // $lista = Lista::where('id', 'title', 'content')->get();
        $array = array('lista'=>$lista);//captura todos os dados da minha tabela

        return view('application', $array);
    }

 
    public function add(Request $request)
    {
        if ($request->has(['title','item'])) {
            $title = $request->input('title');
            $item = $request->input('item');

            $lista = new Lista;
            $lista->title = $title;
            $lista->item = $item;
            $lista->save();

        }
    return redirect('/application');
    }

    public function del($id) {
        Lista::find($id)->delete();

        return redirect('/application');
    }

}

?>