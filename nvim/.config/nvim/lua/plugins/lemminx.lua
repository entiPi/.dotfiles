return {
    dir = '/home/meistet3/src/lemminx/',
    config = function(_, _)
        require('lspconfig').lemminx.setup{
            cmd = {
              '/home/meistet3/src/lemminx/org.eclipse.lemminx/target/lemminx-linux-x86_64-0.28.1-SNAPSHOT'
            },
            settings = {
                xml = {
                    fileAssociations = {
                        {
                            systemId = 'https://www.w3.org/2001/XMLSchema.xsd',
                            pattern = '**/*.xsd',
                        },
                        {
                            systemId = '/home/meistet3/src/simulacrum/share/xsd/Simulacrum.xsd',
                            pattern = '[Ss]imulacrum*.xml',
                        },
                        {
                            systemId = '/home/meistet3/src/simulacrum/share/xsd/Universe.xsd',
                            pattern = '{[Ss]im,}[Uu]niverse*.xml',
                        },
                        {
                            systemId = '/home/meistet3/src/simulacrum/share/xsd/Interactor.xsd',
                            pattern = '{[Ss]im,}[Ii]nteract{or,ion}*.xml',
                        },
                        {
                            systemId = '/home/meistet3/src/simulacrum/share/xsd/Hardware.xsd',
                            pattern = '{[Ss]im,}[Hh]ardware*.xml',
                        },
                    },
                    server = {
                        workDir = '~/.cache/lemminx',
                    },
                },
            },
        }
    end,
}
