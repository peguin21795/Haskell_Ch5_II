-- Haskell Chapter 5 Part 2 --
-- Name: Andrew Wang
-- Date: 4 November 2016

module ChapterFive_Pt2 where

-- getPaperTitle --
getPaperTitle :: [a] -> a 
getPaperTitle paper = head paper  

-- getPaperKeywords --
getPaperKeywords :: [a] -> a
getPaperKeywords paper = last paper

-- extractAllKeywords --
extractAllKeywords :: [[a]] -> [a]
extractAllKeywords papers = map last papers

-- keywordInList --
-- Note: There is no need for another type signature? --
keywordInList :: (Eq a) => [a] -> [[a]] -> Bool
keywordInList text f 
 | filter(== text) f == [] = False
 | otherwise = True

-- existsPaper --
existsPaper :: Eq a => [a] -> [[[[a]]]] -> [[[a]]]
existsPaper keyword papers = filter(keywordInList keyword)(map (last) papers)

-- countPapers --
countPapers :: Eq a => [a] -> [[[[a]]]] -> Int
countPapers keyword papers = length(existsPaper keyword papers)

-- misc --
paper = [["Computer Games as Motivation for Design Patterns"],
           ["Design Patterns", "Games", "Pedagogy", "Java"]]

papers = [
    [["Test-Driven Learning: Intrinsic Integration of Testing into the CS/SE Curriculum"],
        ["Test-driven learning", "test-driven development","extreme programming", "pedagogy", "CS1"]],
    [["Process Improvement of Peer Code Review and Behavior Analysis of its Participants"],
        ["peer code review", "behavior analysis", "software quality assurance", 
            "computer science education", "software engineering"]],
    [["Computer Games as Motivation for Design Patterns"],
        ["Design Patterns", "Games", "Pedagogy", "Java"]],
    [["Killer Killer Examples for Design Patterns"],
        ["Object-orientation", "Design Patterns"]],
    [["Test-First Java Concurrency for the Classroom"],
        ["CS education", "Java", "JUnit", "unit testing", "concurrent programming",
        "tools", "software engineering"]],
    [["Teaching Design Patterns in CS1: a Closed Laboratory Sequence based on the Game of Life"],
        ["Design Patterns", "Game of Life", "CS1", "Laboratory"]]   
    ]



















