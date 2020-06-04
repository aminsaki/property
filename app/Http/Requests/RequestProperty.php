<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class RequestProperty extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * @return string[]
     */
    public function rules()
    {
        return [
            'url' => 'required|image|mimes:jpeg,png,jpg,gif',
            'title' => 'required',
            'description' => 'required',
            'area_id' => 'required',
            'categorie_id' => 'required'


        ];
    }


    public function messages()
    {
        return [
            'url.required' => 'لطفا یه عکس وارد نمایید',
            'title.required' => 'لطفا یه عنوان انتخاب کنید ',
            'description.required' => 'لطفا فلید توضحیات ها رو تکمیل نمایید',
            'area_id.required' => 'لطفا مناطق را وارد نمایید',
            'categorie_id.required' => 'لطفا دسته ها را وارد نمایید'


        ];
    }

    public function attributes()
    {
        return [
            'title'=>'عنوان',
            'description'=>'توضیحات',
            'url'=>'عکس',
            'area_id'=>'مناطق',
            'categorie_id'=>'   دسته'


        ];

    }
}
