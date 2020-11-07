//
//  BiometricsContext.swift
//  TABTestKit
//
//  Created by Kane Cheshire on 09/09/2019.
//

import Foundation
#if canImport(Biometrics)
import Biometrics
#endif

public protocol BiometricsContext {}
public extension BiometricsContext {
	
	func deviceBiometricsAreEnabled() -> StepAction {
        StepAction(description: "device biometrics are enabled") {
            Biometrics.enrolled()
        }
	}
	
	func deviceBiometricsAreDisabled() -> StepAction {
        StepAction(description: "device biometrics are disabled") {
            Biometrics.unenrolled()
        }
	}
	
	func successfullyAuthenticateBiometrics() -> StepAction {
        StepAction(description: "successfully authenticate biometrics") {
            Biometrics.successfulAuthentication()
        }
	}
	
	func failToAuthenticateBiometrics() -> StepAction {
        StepAction(description: "fail to authenticate biometrics") {
            Biometrics.unsuccessfulAuthentication()
        }
	}
	
}
