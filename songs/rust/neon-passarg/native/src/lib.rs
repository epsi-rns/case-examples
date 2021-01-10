use neon::prelude::*;

use std::any::type_name;

#[allow(dead_code)]
fn type_of<T>(_: T) -> &'static str {
    type_name::<T>()
}

fn hello(mut cx: FunctionContext) -> JsResult<JsString> {
    Ok(cx.string("Aloha Done"))
}

fn pass_str(mut cx: FunctionContext) -> JsResult<JsString> {
    let string = cx.argument::<JsString>(0)?.value();
    println!("| In Rust: {}", string);
    Ok(cx.string(string))
}

fn jsvalue_to_string(
    js_value: Handle<JsValue>, default: Handle<JsString>
) -> String {
    js_value
        .downcast::<JsString>()
        .unwrap_or(default)
        .value()
}

fn vec_jsvalue_to_string(
    vec_value: Vec<Handle<JsValue>>, default: Handle<JsString>
) -> Vec<String> {
    let vec_string: Vec<String> = vec_value
        .iter()
        .map(|js_value| { jsvalue_to_string(*js_value, default) })
        .collect();

    vec_string
}

fn pass_array(mut cx: FunctionContext) -> JsResult<JsArray> {
    // JsArray to Vec
    let js_array_ori: Handle<JsArray> = cx.argument::<JsArray>(0)?;

    let default: Handle<JsString> = cx.string("");
    let vec_value: Vec<Handle<JsValue>> =
        js_array_ori.to_vec(&mut cx)?;
    let vec_string: Vec<String> =
        vec_jsvalue_to_string(vec_value, default);
    
    println!("| In Rust: {:?}", vec_string);

    // Vec to JsArray
    let js_array_new = JsArray::new(&mut cx, vec_string.len() as u32);
    for (i, obj) in vec_string.iter().enumerate() {
        let js_string = cx.string(obj);
        js_array_new.set(&mut cx, i as u32, js_string).unwrap();
    }
    Ok(js_array_new)
}

fn pass_object(mut cx: FunctionContext) -> JsResult<JsArray> {
    let js_object_handle: Handle<JsObject> = cx.argument(0)?;

    let js_object = js_object_handle
        .downcast::<JsObject>()
        .unwrap_or(JsObject::new(&mut cx));

    let js_array_default: Handle<JsArray> =
        JsArray::new(&mut cx, 0 as u32);

    let js_array_new: Handle<JsArray> =
        js_object
            .get(&mut cx, "tags")?
            .downcast::<JsArray>()
            .unwrap_or(js_array_default);

    let default: Handle<JsString> = cx.string("");
    let vec_value: Vec<Handle<JsValue>> =
        js_array_new.to_vec(&mut cx)?;
    let vec_string: Vec<String> =
        vec_jsvalue_to_string(vec_value, default);
    
    println!("| Tags in Rust: {:?}", vec_string);

    Ok(js_array_new)
}

register_module!(mut cx, {
    cx.export_function("hello", hello)?;
    cx.export_function("passStr", pass_str)?;
    cx.export_function("passArray", pass_array)?;
    cx.export_function("passObject", pass_object)?;
    Ok(())
});


