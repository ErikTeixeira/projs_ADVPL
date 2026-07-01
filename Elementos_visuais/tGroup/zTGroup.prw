#include "Protheus.CH"
#include "TOTVS.CH"

// prod ctrl espaço
/*/{Protheus.doc} zTGroup
Exemplo tgroup
@type function
@version  24.10
@author erikt
@since 01/07/2026
@see https://tdn.totvs.com/display/tec/TGroup
/*/
User Function zTGroup()
    Local oDlg

    Local oGroup1, oGroup2

    Local oButton1, oButton2

    // lembrar de inicializar as variaveis com espaço, para poder digitar
    private cGet1 := space(30)
    private cGet2 := space(30)
    private cGet3 := space(30)
    private cGet4 := space(30)

    Private oGet1, oGet2, oGet3, oGet4

                                                                    /*cor fundo*/
    oDlg := TDialog():New(0,0,410,410, "Elemento Tgroup com TGet",,,,,,  ,,, .T.)

    // grupo 1
    // USANDO O NEW
    oGroup1 := TGroup():New(010, 010 , 100       , 200    , 'Objeto TGroup 1', oDlg,     , , .T.)

        // @!  -- só maiusculo
    oGet1   := TGet()  :New(30, 30 , {|u| IIF(Pcount()>0, cGet1:=u, cGet1) }, oDlg, 100   , 10 , "@!", , 0  , , , .F., , .T., , .F., , .F., .F., , .F., .F., , cGet1, , , ,)

    oGet2  := TGet()  :New(50, 30 , {|u| IIF(Pcount()>0, cGet2:=u, cGet2) }, oDlg, 100   , 10 , "@!", , 0  , , , .F., , .T., , .F., , .F., .F., , .F., .F., , cGet2, , , ,)

    // função do enviargets no botão    
    oButton1 := TButton():New(80,30, "Gerar Gets", oDlg, { || EnviarGets() }, 60, 15,,,.F., .T., .F.,, .F.,,, .F.)


    // grupo 2
    // USANDO CREATE
    oGroup2 := TGroup():Create(oDlg,110,010,200,200, 'Objeto TGroup 2' ,,,.T.)

        // parametro 21 - readonly
    oGet3   := TGet()  :New(130, 30 , {|u| IIF(Pcount()>0, cGet3:=u, cGet3) }, oDlg, 100   , 10 , "@!", , 0  , , , .F., , .T., , .F., , .F., .F., , .T., .F., , cGet3, , , ,)

    oGet4  := TGet()  :New(150, 30 , {|u| IIF(Pcount()>0, cGet4:=u, cGet4) }, oDlg, 100   , 10 , "@!", , 0  , , , .F., , .T., , .F., , .F., .F., , .T., .F., , cGet4, , , ,)


    // botão de fechar o dialog
    oButton2 := TButton():New(180,30, "Fechar", oDlg, { || oDlg:End() }, 60, 15,,,.F., .T., .F.,, .F.,,, .F.)

    oDlg:Activate(,,,.T.)

Return


/*/{Protheus.doc} EnviarGets
Funcao que envia infos dos campos do grupo 1 para o grupo 2
@type function
@version  24.10
@author erikt
@since 01/07/2026
/*/
static function EnviarGets()

    cGet3 := cGet1
    cGet4 := cGet2

    oGet3:Refresh()
    oGet4:Refresh()

Return
