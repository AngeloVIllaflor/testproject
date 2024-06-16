<x-guest-layout>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title w-100 text-center" id="exampleModalLabel">Overview</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <!-- Name -->
          <div class="modal-row">
              <x-input-label for="modal_first_name" :value="__('Name: ')" class="modal-label" />
              <span id="modal_first_name" class="modal-value"></span>
          </div>

          <!-- Phone Number -->
          <div class="modal-row">
              <x-input-label for="modal_phone_number" :value="__('Phone Number: ')" class="modal-label" />
              <span id="modal_phone_number" class="modal-value"></span>
          </div>

          <!-- Email -->
          <div class="modal-row">
              <x-input-label for="modal_email" :value="__('Email: ')" class="modal-label" />
              <span id="modal_email" class="modal-value"></span>
          </div>

          <!-- Purposes -->
          <div>
            <x-input-label for="modal_purposes" :value="__('Purposes and Room Numbers: ')" class="modal-label" />
            <div id="modal_purposes" class="grid-container"></div>
        </div>

       </div>

        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          <button id="saveChanges" type="button" class="btn btn-primary">Submit</button>
        </div>
      </div>
    </div>
  </div>

  <style>
      .modal-row {
          display: flex;
          align-items: center;
          margin-bottom: 10px;
      }

      .modal-label {
          flex: 1;
          font-weight: bold;
          color: black; /* Changed to black */
      }

      .modal-value {
          flex: 2;
          padding-left: 10px;
          padding: 5px;
          background-color: #87CEEB;
          border-radius: 5px;
          word-break: break-word;
      }

      .modal-body {
          background-color: #f8f9fa; /* Light background color for the modal */
          padding: 20px;
      }

      .modal-header, .modal-footer {
          background-color: #e9ecef; /* Light grey for the header and footer */
      }

      .modal-content {
          border-radius: 15px; /* Rounded corners */
      }

      .modal-title {
          font-weight: bold;
          color: black; /* Changed to black */
      }

      .grid-container {
          display: grid;
          grid-template-columns: 1fr 1fr;
          gap: 10px;
          background-color: #fff;
          padding: 10px;
      }

      .grid-item {
          padding: 10px;
          background-color: #87CEEB;
          border-radius: 5px;
          text-align: center;
      }
  </style>
</div>
    <form id="registrationForm" method="POST" action="{{ route('register') }}">
        @csrf

         <!-- First Name -->
         <div class="mt-4">
            <x-input-label for="first_name" :value="__('First Name')" />
            <x-text-input id="first_name" class="block mt-1 w-full" type="text" name="first_name" :value="old('first_name')" required autofocus autocomplete="first_name" />
            <x-input-error :messages="$errors->get('first_name')" class="mt-2" />
        </div>

         <!-- Last Name -->
         <div class="mt-4">
            <x-input-label for="last_name" :value="__('Last Name')" />
            <x-text-input id="last_name" class="block mt-1 w-full" type="text" name="last_name" :value="old('last_name')" required autofocus autocomplete="last_name" />
            <x-input-error :messages="$errors->get('last_name')" class="mt-2" />
        </div>

        <!-- Phone Number -->
        <div class="mt-4">
            <x-input-label for="phone_number" :value="__('PhoneNumber')" />
            <x-text-input id="phone_number" class="block mt-1 w-full" type="number" name="phone_number" :value="old('phone_number')" required autofocus autocomplete="phone_number" autocomplete="phone_number" maxlength="11" pattern="\d{11}"/>
            <x-input-error :messages="$errors->get('phone_number')" class="mt-2" />
        </div>

        <div class="mt-4">
    <x-input-label for="purpose" :value="__('Purpose')" />

    <div id="checklist" class="mt-2" style="max-height: 200px; overflow-y: auto;">
        @foreach($purposes as $purpose)
            <div class="mt-2">
                <label for="purpose_{{ $purpose->id }}" class="inline-flex items-center">
                    <input type="checkbox" id="purpose_{{ $purpose->id }}" name="purposes[]" value="{{ $purpose->id }}" {{ in_array($purpose->id, old('purposes', [])) ? 'checked' : '' }} class="form-checkbox h-5 w-5 text-indigo-600">
                    <span class="ml-2 text-gray-700">{{ $purpose->name}}</span>
                    <span class="ml-2 text-gray-700 hidden">{{ $purpose->location }}</span>
                </label>
            </div>
        @endforeach
    </div>

    <x-input-error :messages="$errors->get('purposes')" class="mt-2" />
</div>

        <!-- Email Address -->
        <div class="mt-4">
            <x-input-label for="email" :value="__('Email (Optional)')" />
            <x-text-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required autocomplete="username" />
            <x-input-error :messages="$errors->get('email')" class="mt-2" />
        </div>


        <div class="flex items-center justify-end mt-4">
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal"> Next </button>
        </div>
    </form>
</x-guest-layout>

<script>
    // Get the modal
    var modal = document.getElementById('exampleModal');

    // Get the input fields
    var firstNameInput = document.getElementById('first_name');
    var lastNameInput = document.getElementById('last_name');
    var phoneNumberInput = document.getElementById('phone_number');
    var emailInput = document.getElementById('email');
    var purposesCheckboxes = document.querySelectorAll('input[name="purposes[]"]:checked');


    var modalFirstNameSpan = document.getElementById('modal_first_name');
    var modalPhoneNumberSpan = document.getElementById('modal_phone_number');
    var modalEmailSpan = document.getElementById('modal_email');
    var modalPurposesList = document.getElementById('modal_purposes');

    // Get the button that opens the modal
    var btn = document.getElementById("modalTrigger");

    // When the modal is opened, populate fields with form data
    modal.addEventListener('show.bs.modal', function () {
        modalFirstNameSpan.textContent = firstNameInput.value + ' ' + lastNameInput.value;
        modalPhoneNumberSpan.textContent = phoneNumberInput.value;
        modalEmailSpan.textContent = emailInput.value;

        modalPurposesList.innerHTML = ''; // Clear the previous list
        var purposesCheckboxes = document.querySelectorAll('input[name="purposes[]"]:checked'); // Get updated checkboxes
        purposesCheckboxes.forEach(function(checkbox) {
            var purposeName = checkbox.nextElementSibling.textContent;
            var location = checkbox.nextElementSibling.nextElementSibling.textContent;

            var purposeItem = document.createElement('div');
            purposeItem.classList.add('grid-item');
            purposeItem.textContent = purposeName;

            var locationItem = document.createElement('div');
            locationItem.classList.add('grid-item');
            locationItem.textContent = location;

            modalPurposesList.appendChild(purposeItem);
            modalPurposesList.appendChild(locationItem);
        });
    });

    // When the save changes button is clicked, submit the form
    document.getElementById('saveChanges').addEventListener('click', function () {
        document.getElementById('registrationForm').submit();
    });

    document.addEventListener('DOMContentLoaded', function() {
        const phoneInput = document.getElementById('phone_number');

        phoneInput.addEventListener('input', function() {
            const cleanedValue = this.value.replace(/\D/g, ''); // Remove non-digit characters
            if (cleanedValue.length > 11) {
                this.value = cleanedValue.slice(0, 11);
            } else {
                this.value = cleanedValue;
            }
        });

        phoneInput.addEventListener('keypress', function(event) {
            if (this.value.length >= 11) {
                event.preventDefault(); // Prevent any additional input if length is 11 or more
            }
        });
    });
</script>
