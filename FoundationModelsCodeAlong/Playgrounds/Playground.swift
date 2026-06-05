/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
A Playground for testing Foundation Models framework features.
*/

import FoundationModels
import Playgrounds

#Playground {
    let instructions = "Your job is to create an itinerary for the user."
    let session = LanguageModelSession(instructions: instructions)

    let kidFriendly = true

    // Use the Prompt builder to combine your request with an example.
    let prompt = Prompt {
        "Generate a 3-day itinerary to the Grand Canyon."
        if kidFriendly {
            "The itinerary must be kid-friendly."
        }
        
        "Here is an example of the desired format, but dont copy its content:"
        Itinerary.exampleTripToJapan
        
    }

    let response = try await session.respond(to: prompt,
                                             generating: Itinerary.self)
}


