int onboardingCounter = 0;
//! The problem was that the onboardingCounter, a global variable, wasn't triggering UI updates when its value changed. Global variables don't automatically rebuild the UI in Flutter.
//! Solution:
//! We moved the index tracking to a local currentPage variable inside the widget’s state. By using setState() in the onPageChanged callback of the PageView, we ensured that the UI rebuilds correctly when the page changes, fixing the issue.
