require 'httparty'

module APITitulo

  class APITituloPage 

    #API DE CADASTRO DE TÍTULO

    def cadastratitulo(numdoc)
      response = HTTParty.post('http://10.0.2.47:8080/cp_aprovador/api/v1/titulo/cadastra',
                              headers: headercadastra,
                              body: bodycadastra(numdoc))
      
      idTitulo = response.parsed_response["idTitGerado"]
      return idTitulo
      puts response.parsed_response["mensagem"]
      puts response.parsed_response["acao"]

    end

    def headercadastra
      {
        'Content-Type' => 'application/json',
        'X-Access-Key' => '7e9aa547-52e3-4b13-a386-5d9ee68b6c01'
      }
    end

    def bodycadastra(numdoc)
      {
      idEmpresa: 1,
      idForncd: 84,
      codFormaPgto: "CHE",
      codTipoDoc: "NF",
      numDoc: numdoc,
      codTipoProdServ: "SALAR",
      dtEmissao: "2019-07-30",
      dtVcto: "2019-07-30",
      dtProvisao: "2019-07-30",
      vlr: 5000,
      vlrTributavel: 5000,
      vlrTributavelINSSRF: 5000,
      vlrTributavelISS: 5000,
      vlrTributavelPISRF: 5000,
      vlrTributavelCOFINSRF: 5000,
      vlrTributavelCSLLRF: 5000,
      codSite: "MATERA",
      indCalcImposto: "N",
      idFilial: 2,
      codContaContabil: "49930100001",
      codMoedaOriginal: 2,
      indAgrupaLancProv: "N",
      idFilialProp: 2,
      vlrTributavelINSS: 5000,
      usrCadastro: "AYO",
      indDispensaPISRF: "N",
      indDispensaCOFINSRF: "N",
      indDispensaCSLLRF: "N",
      indEdiConcessionaria: "N",
      indDispensaIRRF: "N",
      vlrTributavelISSJADIC: 5000,
      codSisOrigem: "CP"
      }.to_json
    end

    #API DE VALIDAÇÃO DE TÍTULO

    def validatitulo(idTit)
      response = HTTParty.post('http://10.0.2.47:8080/cp_aprovador/api/v2/titulo/valida',
                        headers: headervalida,
                        body: bodyvalida(idTit))

      puts response.parsed_response["mensagem"]
      puts response.parsed_response["acao"]

    end

    def headervalida
      {
        'Content-Type' => 'application/json',
        'X-Access-Key' => 'dcb73a63-f808-4309-9cbf-2be2796a8ebe'
      }
    end

    def bodyvalida(id)
      [
        {
        "id": id
        }
      ].to_json
    end
    
    #API DE AUTORIZAÇÃO DE TÍTULO

    def autorizatitulo(idTit)
      response = HTTParty.post('http://10.0.2.47:8080/cp_aprovador/api/v2/titulo/autoriza',
                          headers: headerautoriza,
                          body: bodyautoriza(idTit))

      puts response.parsed_response["mensagem"]
      puts response.parsed_response["acao"]

    end
    def headerautoriza
      {
        'Content-Type' => 'application/json',
        'X-Access-Key' => '0110e1b5-4655-4ec0-96da-aebcaf1a5103'
      }
    end

    def bodyautoriza(id)
      [
        {
          "id": id
        }
      ].to_json
    end

    #API DE APROVAÇÃO DE TÍTULO

    def aprovatitulo(idTit)
      response = HTTParty.post('http://10.0.2.47:8080/cp_aprovador/api/v2/titulo/aprova',
                        headers: headeraprova,
                        body: bodyaprova(idTit))

      puts response.parsed_response["mensagem"]
      puts response.parsed_response["acao"]

    end
    def headeraprova
      {
        'Content-Type' => 'application/json',
        'X-Access-Key' => '71bc643e-15b7-4c2a-9a0c-351dc81e36ca'
      }
    end

    def bodyaprova(id)
      [
        {
          "id": id
        }
      ].to_json
    end

    #API DE LIBERAÇÃO DE TÍTULO

    def liberatitulo(idTit)
      response = HTTParty.post('http://10.0.2.47:8080/cp_aprovador/api/v2/titulo/libera',
                        headers: headerlibera,
                        body: bodylibera(idTit))

      puts response.parsed_response["mensagem"]
      puts response.parsed_response["acao"]

    end
    def headerlibera
      {
        'Content-Type' => 'application/json',
        'X-Access-Key' => 'baf6dc48-5ddf-4593-aa71-95715ed0407c'
      }
    end

    def bodylibera(id)
      [
        {
          "id": id
        }
      ].to_json
    end

  end
end