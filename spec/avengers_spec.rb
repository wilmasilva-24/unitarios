class AvengerHeadQuarter
    attr_accessor :list

    def initialize
        self.list = []
    end

        def put(avenger)
            self.list.push(avenger)
        end
end
# TDD (DEsenvolvimento guiado por testes)

describe AvengerHeadQuarter do
    it 'deve adicionar um vingador' do
        hq = AvengerHeadQuarter.new

        hq.put('Spiderman')
        expect(hq.list).to include 'Spiderman'
    end

    it 'deve adicionar uma lista de vingadores' do
        hq = AvengerHeadQuarter.new
        hq.put('Thor')
        hq.put('hulk')
        hq.put('spiderman')

        res = hq.list.size > 0

        expect(hq.list.size).to be > 0
        expect(res).to be true

    end

    it 'thor deve ser o primeiro da lista' do
        hq = AvengerHeadQuarter.new

        hq.put('Thor')
        hq.put('hulk')
        hq.put('spiderman')

        expect(hq.list).to start_with('Thor')

    end

    it 'Ironman deve ser o ultimo da lista' do 
        hq = AvengerHeadQuarter.new

        hq.put('Thor')
        hq.put('hulk')
        hq.put('spiderman')
        hq.put('Ironman')

        expect(hq.list).to end_with('Ironman')
    
    end

    it 'deve conter o sobrenome' do
        avenger = 'Peter Parker'

        expect(avenger).to match(/Parker/)
        expect(avenger).not_to match(/Wilma/)
    end

end