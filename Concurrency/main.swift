//
//  main.swift
//  Concurrency
//
//  Created by M_2022814 on 12/14/21.
//

import Foundation

// MARK: - Concurrency
// Swift has built in support for asynchronous and parallel code written in a structured way.

// Asynchronous Code can be suspended and resumed later, although only one piece of program executrs at a time..
    // Suspending and resuming code in your program lets it continue to make progress on short-term operations like updating its UI while continuing to work on long running operations like fetching data over the network or parsing files.

// Parallel code means multiple pieces of code run simultaneously- for example a multicore cpu doing video rendering on multiple threads.

// A program that uses parallel and ansychronous code carries carries out multiple operations at the same time and can suspend operations and do something else while waiting for another operation to be completed.
    // This also allows code to be written in a memory-safe manner.

// MARK: - Asynchronous Function/Method
// A special kind of function or method that can be suspended while it's partway through execution.
// This is in contrast to ordinary synchronous functions that either run to completion, throw an error, or never return.

// Inside the body of an asynchronous function, you mark each of these places where execution can be suspended
/*
 func listPhotos(inGallery name: String) async -> [String] {
     let result = // ...some asynchronous networking code...
    return result
 }
 */

// When calling an aynchronous method, you write await in front of the call to mark the possible suspension point... Similar to writing try when calling a throwing function.
// The flow of execution is suspended only when you call another asynchronous method. This means that every suspension point is marked with await.

// MARK: - Tasks and Task Groups
// A task is a unit of work that can be run asynchronously as part of your program.
// Tasks are arranged in a heirarchy. Each task group has the same parent task, and each task can have child tasks.

// MARK: - Unstructured Concurrency
// In addition to the structured approaches to concurrency described in the previous sections, Swift also supports unstructured concurrency. Unstructured tasks don't have a parent task. There is alot of flexibility to manage unstructured tasks in whatever way your program needs, but you're also completely responsible for correctness.

// MARK: - Task Cancellation
// Each task checks whether it has been canceled atthe appropriate points in its execution, and responds to cancellation in whatever way is appropriate. Depending on the task, the following could happen:
    // Throwing an error
    // Returning nil or empty collection
    // Returning partially completed work.

// MARK: - Actors
// Like classes, actors are reference types, so the comparison of value types and reference types applies to actors as well as classes.
// Unlike classes, actors allow only one task to access their mutable state at a time, which makes it safe for code in multiple taks to interact with the same instance of an actor.


