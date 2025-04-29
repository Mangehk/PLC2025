ask :: String -> Int -> IO ()
ask prompt count = do
  putStrLn (prompt ++ replicate count '!')
  line <- getLine
  if line == ""
    then ask prompt (count + 1)
    else if line == "quit"
      then putStrLn "quitting..."
      else do 
        putStrLn ("you said: " ++ reverse line)
        ask prompt 0

main :: IO ()
main = do
  let prompt = "please say something (type 'quit' to exit)"
  ask prompt 0