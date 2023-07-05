<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

use Illuminate\Validation\Rule;


class ContactRequest extends FormRequest
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
            'name'=>['required','string',Rule::unique('contacts')->ignore($this->route()->parameter('contact'))],
            'phone'=>['required','string',Rule::unique('contacts')->ignore($this->route()->parameter('contact'))],
            'email'=>'string|required|email',
            'subject'=>'string|required',
            'message'=>'string|required',
            'notes'=>'string',
        ];
    }

    public function messages(){
        return [
            'required'  => 'الحقل مطلوب',
            'string'    => 'الحقل يجب أن يكون نصياً',
            'unique'    => 'الحقل مكرر',
            'email'    => 'الحقل يجب أن يكون إيميل',
        ];
    }

    public function validated()
    {
        $data =  parent::validated();

        return array_merge($data,['admin_id' => auth()->id()]);
    }

}
