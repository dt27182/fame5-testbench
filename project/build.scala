import sbt._
import Keys._
//val extracted: Extracted = Project.extract(state)
//import extracted._

object BuildSettings extends Build {
  lazy val chisel = Project("chisel", file("chisel"))
  lazy val cpu = Project("cpu", file("src")).dependsOn(chisel)
}
