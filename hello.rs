#[no_mangle]
#[repr(C)]
pub extern "C" fn hello() -> String {
    String::from("world").into_raw()
}
