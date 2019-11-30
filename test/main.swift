//
//  mai.swift
//  test
//
//  Created by zeus on 29/11/19.
//  Copyright © 2019 softtools. All rights reserved.
//

import UIKit

// creamos subclase de uiapplication
class MyApplication: UIApplication {
    
    // sobreescribir una funcion resive un evento '_' cuando alguien llame el evento no necesariamente debe poner el nombre del parametro
    //
    override func sendEvent(_ event: UIEvent) {
        print("Hola")
        // clase padre (super) ejecute el metodo senEvent
        // el tocuh ejecuta 2 eventos del de tocar y retirar
        super.sendEvent(event)
    }
}
// la directiva @UIApplicationMain crea esto
UIApplicationMain(CommandLine.argc,
               CommandLine.unsafeArgv,
               NSStringFromClass(MyApplication.self), // crea una instancia de mi clase
               NSStringFromClass(AppDelegate.self))

// 
