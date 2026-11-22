// supernote-job: runs ~/bin/supernote-work-commit.sh for the launch agent
// local.supernote-job, and exits with the script's status. Arguments are
// passed on.
//
// A program of its own between the agent and the script, because the job
// copies out of the Supernote app's container, which macOS guards: access to
// it is judged by the program the agent starts, and that program needs Full
// Disk Access. /bin/bash could be given it, but then every bash script that
// launchd starts would have it too. This program can be given it on its own.
//
// The script runs as a child, not by exec: macOS charges a child's file
// access to the program that started it, while exec would make bash the one
// asking - and bash has no access.
import Foundation

// HOME first, as a shell would: launchd sets it, and a test can point it
// elsewhere. homeDirectoryForCurrentUser reads the user record and ignores
// HOME - a test of the installer once ran the real job that way.
let home = ProcessInfo.processInfo.environment["HOME"]
    ?? FileManager.default.homeDirectoryForCurrentUser.path
let job = Process()
job.executableURL = URL(fileURLWithPath: "/bin/bash")
job.arguments = [home + "/bin/supernote-work-commit.sh"] + CommandLine.arguments.dropFirst()
do {
    try job.run()
} catch {
    FileHandle.standardError.write(Data("supernote-job: \(error)\n".utf8))
    exit(1)
}
job.waitUntilExit()
exit(job.terminationStatus)
