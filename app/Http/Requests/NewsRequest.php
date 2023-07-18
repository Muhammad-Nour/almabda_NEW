<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class NewsRequest extends FormRequest
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
            'name_ar'      => 
            ['required','string','max:255',Rule::unique('news')->ignore($this->route()->parameter('new'))],
            'name_en'      => 
            ['required','string','max:255',Rule::unique('news')->ignore($this->route()->parameter('new'))],
            'description_ar'        => 'required|string',
            'description_en'        => 'required|string',
            'date'=>'Date|required'
        ];  
    }

    public function messages(){
        return [
            'required' => 'هذا الحقل مطلوب',
            'string' => 'الحقل المطلوب يجب أن يكون نص',
            'name.max' => 'يجب ألا يزيد الإسم عن 255 حرف و رقم',
            'name.unique' => 'اسم الصنف مكرر',
            'Date'=>'هذا الحقل يجب ان يكون تاريخ',
        ];
    }

    public function validated()
    {
        $data =  parent::validated();

        return array_merge($data,['admin_id' => auth()->id()]);
    }
}
