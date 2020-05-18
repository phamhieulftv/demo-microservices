<?php
namespace App\Http\Controllers\API;


use Illuminate\Http\Request;
use App\Http\Controllers\Controller as Controller;


class TestController extends Controller
{
    /**
     * success response method.
     *
     * @return \Illuminate\Http\Response
     */
    public function test()
    {
    	$response = [
            'method' => 'get'
        ];

        return response()->json($response, 200);
    }

}