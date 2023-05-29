<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class CategoryRequest extends FormRequest
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

            'name' => ['required','string','max:255',Rule::unique('categories')->ignore($this->route()->parameter('category'))],
        ];  
    }

    public function messages(){
        return [
            'name.required' => 'إسم البراند مطلوب',
            'name.string' => 'يجب أن يكون الإسم مكون من حروف و أرقام فقط  ',
            'name.max' => 'يجب ألا يزيد الإسم عن 255 حرف و رقم',
            'name.unique' => 'البراند مكرر',
        ];
    }

    public function validated()
    {
        $data =  parent::validated();

        return array_merge($data,['admin_id' => auth()->id()]);
    }
}
