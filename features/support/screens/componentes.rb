class Navigator

    def tap_hamburguer
        find_element(accessibility_id: "Open navigation drawer").click
    end

    def list
        return find_element(id: "io.qaninja.android.twp:id/rvNavigation")
    end

    def tap_by_text(texto)
        find_element(xpath: "//*[@text='#{texto}']").click
    end

end


class Toaster

    def toast
        return find_element(xpath: "//android.widget.Toast")
    end

end