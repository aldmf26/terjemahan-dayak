
/** @type {import('tailwindcss').Config} */
module.exports = {
    content: [
        './vendor/laravel/framework/src/Illuminate/Pagination/resources/views/*.blade.php',
        './storage/framework/views/*.php',
        './resources/views/**/*.blade.php',
    ],
    // daisyui: {
    //     themes: [""],
    //   },
    theme: {
        extend: {
            fontFamily: {
                sans: ['Nunito'],
            },
        },
    },

    plugins: [require('@tailwindcss/forms'), require('daisyui')],
};
