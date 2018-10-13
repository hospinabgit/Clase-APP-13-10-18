class Api::V1::ItemController < ApiController

before_action :set_list

# Listar (GET)
    def index
        @items = @list.items
    end

# Crear (POST)
    def create
        items_params = params.require(:item).permit(:name)
        @list.items.create(items_params)
        render status: :created
    end

# Mostrar (GET)
    def Show
        @item = Item.find(params[:id])
    end

# metodo privado
    private
    def set_list
        @list = List.find(params[:list_id]) # crea variable con clase en la @
    end

end
