--applyTwice :: (a -> a) -> a  
applyTwice w x = w (w x) 
