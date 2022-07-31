//
//  ViewController.swift
//  Starbuzz-Coffee
//
//  Created by Ankit Kumar on 31/07/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        makeABeverage()
    }

    func makeABeverage() {
        makeHouseBlend()
        makeDarkRoast()
        makeDecaf()
        makeEspresso()
    }

    func makeHouseBlend() {
        let coffee = HouseBlend()
        let milk = Milk(beverage: coffee)
        let whip = Whip(beverage: milk)
        print("HouseBlend Cost - \(whip.cost())")
    }
    func makeDarkRoast() {
        let coffee = DarkRoast()
        let milk = Milk(beverage: coffee)
        let whip = Whip(beverage: milk)
        let soy = Soy(beverage: whip)
        print("DarkRoast Cost - \(soy.cost())")
    }
    func makeDecaf() {
        let coffee = Decaf()
        let milk = Milk(beverage: coffee)
        let whip = Whip(beverage: milk)
        let mocha = Mocha(beverage: whip)
        print("Decaf Cost - \(mocha.cost())")
    }
    func makeEspresso() {
        let coffee = Espresso()
        let milk = Milk(beverage: coffee)
        let mocha = Mocha(beverage: milk)
        let soy = Soy(beverage: mocha)
        print("Espresso Cost - \(soy.cost())")
    }
}

