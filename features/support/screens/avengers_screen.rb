class Mensagens
    def item_excluido
        return find_element(id: "io.qaninja.android.twp:id/snackbar_text")
    end

    def brn_excluir
        return find_element(id: "io.qaninja.android.twp:id/btnRemove")
    end

    def chekpoint
        return find_element(id: "io.qaninja.android.twp:id/rvList")
    end

    def swipe_esquerda
        coord = {start_x: 0.93, start_y: 0.18, offset_x: 0.48, offset_y: 0.18, duration: 2000}
        Appium::TouchAction.new.swipe(coord).perform
    end

    def msg_item_excluido
        return find_element(id: "io.qaninja.android.twp:id/snackbar_text").text
    end
end