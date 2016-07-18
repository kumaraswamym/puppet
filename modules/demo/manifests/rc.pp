class demo::rc {
    File <| group == "sudoers" |> {
            group => "root",
       }
}
