<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Todo') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg p-5">
                <form action="{{route('todo.update', $todo->id)}}" method="POST">
                    @csrf
                    @method('put')
                    <div class="w-full">
                        <label class="block text-gray-700 text-sm font-bold mb-2" for="todo">
                            Username
                        </label>
                        <input value="{{$todo->todo}}" class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" name="todo" type="text" placeholder="todo">
                        <button type="submit">
                            save
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</x-app-layout>
