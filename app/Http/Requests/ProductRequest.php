<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class ProductRequest extends FormRequest
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
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name'      => 
            ['required','string','max:255',Rule::unique('products')->ignore($this->route()->parameter('product'))],
            'unit'      => 'required|string',
            'category_id'  => 'required|exists:categories,id',
            'price'     => 'required|numeric|min:0',
            'notify'    => 'required|integer|min:1',
            'quantity'    => 'required|integer|min:0',
            'details'      => 'required|string',
            'description'      => 'required|string',


        ];  
    }

    public function messages(){
        return [
            'name.required' => 'يجب إدخال إسم المنتج  ',
            'name.string' => 'يجب أن يكون الإسم مكون من حروف و أرقام فقط ',
            'name.max' => 'يجب ألا يزيد الإسم عن 255 حرف و رقم',
            'name.unique' => 'اسم الصنف مكرر',

            'unit.required' => 'يجب إختيار الوحدة  ',
            'unit.string' => 'يجب أن تكون الوحدة مكونة من حروف و أرقام فقط ',

            'price.required'=> 'يجب ادخال سعر الصناف',
            'price.numeric'=> 'صيغة الرقم غير صحيحة',
            'price.min'=> 'السعر يجب الا يقل عن صفر',

            'notify.required'=> 'يدب ادخال حد الطلب',
            'notify.numeric'=> 'صيغة حد الطلب  غير صحيحة',
            'notify.min'=> 'يجب ان يكون حد الطلب اكبر من صفر ',

            'category_id.required'  => 'يجب إختيار البراند  ',
        ];
    }

    public function validated()
    {
        $data =  parent::validated();

        return array_merge($data,['admin_id' => auth()->id()]);
    }
}
