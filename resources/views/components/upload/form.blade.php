<div class="flex flex-col col-span-full sm:col-span-12 bg-white shadow-lg rounded-md border border-slate-200">
    <header class="px-5 py-4 border-b border-slate-100">
        <h2 class="font-semibold text-slate-800 ">Relocation Data Upload Form</h2>
        <span class=" text-slate-500 text-xs font-extralight italic">Upload using excel file <span
                class="text-slate-400 text-xs font-extralight italic">(accepted formats:.csv, .xlsx)</span></span>

    </header>
    <div id="" class="px-5 py-3">
        <div class="text-slate-600 cursor-pointer font-mono text-sm mr-5 w-full font-semibold flex flex-col gap-6">
{{-- <div>{{date('y-m-d h:i:s')}}</div> --}}
            <form action="" id="uploadForm">
                <input type="file" name="fileUpload" id="submittedFile"
                    class="border border-slate-300 w-full focus:border-1  focus:border-slate-500 focus:outline-none p-2 rounded-md">
            </form>
            <div>
                {{$test}}
                <label>
                    <input type="radio" name="options" value="test">
                    Test
                  </label>

                  <label>
                    <input type="radio" name="options" value="main_valuations">
                    Main Valuations
                  </label>

                  <label>
                    <input type="radio" name="options" value="secondary_buildings">
                    Secondary Buildings
                  </label>

            </div>
            <div class="flex justify-end">
                <span
                    class="bg-slate-600 py-3 px-5 rounded-md border border-slate-500 font-thin text-white hover:font-extrabold custom-transition hover:shadow-lg hover:shadow-slate-600 focus:border-white select-none"
                    id='testButton'>Upload</span>
            </div>


        </div>
    </div>
    <div class="grow px-5 py-3">
        <div class="text-slate-600 cursor-pointer font-mono text-xl mr-5 flex flex-row font-semibold gap-4 select-none">
            <div class="hidden bg-green-300 p-2 rounded-md text-slate-700 text-sm w-fit "
                id="upload_success_notification">
                <h4>Upload Complete!</h4>

            </div>
            <div class="hidden bg-red-500 p-2 rounded-md text-slate-700 text-sm w-fit" id="upload_failed_notification">
                <h4>Upload Failed!</h4>

            </div>

        </div>
    </div>
</div>
