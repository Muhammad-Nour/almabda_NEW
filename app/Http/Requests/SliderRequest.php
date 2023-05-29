<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class SliderRequest extends FormRequest
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

            'title_ar' => 
            ['required','string','max:255',Rule::unique('sliders')->ignore($this->route()->parameter('slider'))],
            'title_en' =>
            ['required','string','max:255',Rule::unique('sliders')->ignore($this->route()->parameter('slider'))],
            'description_ar'    =>'string','max:255',
            'description_en'    =>'string','max:255',
        ];  
    }

    public function messages(){
        return [
            'required' => 'هذا الحقل مطلوب',
            'string' => 'هذا الحقل يجب أن يكون نص',
        ];
    }

    public function validated()
    {
        $data =  parent::validated();

        return array_merge($data,['admin_id' => auth()->id()]);
    }
}
