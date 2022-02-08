class Navigator

    def tap_hamburguer
        find_element(accessibility_id: "Open navigation drawer").click
    end

    def list
        return find_element(id: "io.qaninja.android.twp:id/rvNavigation")
    end
end