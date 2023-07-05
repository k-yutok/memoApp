// ストラテジパターン　メモ


import Foundation

protocol Magic {
    func name() -> String
    func costMagicPoint() -> MagicPoint
    func attackPower() -> AttackPower
    func costTecnicalPoint() -> TecnicalPoint
}

class MagicPoint {
    private let cost: Int
    init(cost: Int){
        self.cost = cost
    }
}

class AttackPower {
    private let cost: Int
    init(cost: Int){
        self.cost = cost
    }
    func getCost() -> Int {
        return self.cost
    }
}

class TecnicalPoint {
    private let cost: Int
    init(cost: Int){
        self.cost = cost
    }
}

class Member  {
    final let level: Int
    init(level: Int){
        self.level = level
    }
}

class Fire: Magic {
    private let member: Member
    
    init(member: Member){
        self.member = member
    }
    
    func name() -> String {
        return "ファイア"
    }
    
    func costMagicPoint() -> MagicPoint {
        return MagicPoint(cost: 2)
    }
    
    func attackPower() -> AttackPower {
        let value: Int = 20 + (Int)(member.level * 5)
        return AttackPower(cost: value)
    }
    
    func costTecnicalPoint() -> TecnicalPoint {
        return TecnicalPoint(cost: 0)
    }
    
    
}
enum MagicType{
    case fire,shiden,hellfire
}

class Main {
    private let member: Member
    private let fire: Fire
    var magics: Dictionary<MagicType, Magic> = [:]
    
    init(member: Member){
        self.member = member
        self.fire = Fire(member: self.member)
        self.magics[MagicType.fire] = fire
    }
 
    func magicAttack(magicType: MagicType) {
        let usingMagic: Magic = magics[magicType]!
        showMagicAttack(magic: usingMagic)
    }
    func showMagicAttack(magic: Magic){
        let attackPower: AttackPower = magic.attackPower()
        print(attackPower.getCost())
    }
    
}
