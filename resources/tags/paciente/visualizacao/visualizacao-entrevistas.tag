<paciente-visualizacao-entrevistas>
    <div class="card">
        <div class="card-header">
            <div class="float-left">
                <div class="card-title h4 text-uppercase badge" data-badge="{ entrevistas.length }">
                    Entrevistas
                </div>
            </div>
            <div class="float-right">
                <div class="dropdown mr-1">
                    <a href="javascript:;" class="btn btn-primary btn-menu dropdown-toggle" tabindex="0">
                        <i class="icon icon-plus"></i>
                        Nova Entrevista
                        <i class="icon icon-caret"></i>
                    </a>
                    <ul class="menu" style="min-width: 310px">
                        <li class="menu-item">
                            <a href="{ url }/criar/A/{ opts.codigoPaciente }">Adulto</a>
                        </li>
                        <li class="menu-item">
                            <a href="{ url }/criar/M/{ opts.codigoPaciente }">Adulto/Maternidade</a>
                        </li>
                        <li class="menu-item">
                            <a href="{ url }/criar/CP/{ opts.codigoPaciente }">Adulto/Cuidado Paliativos</a>
                        </li>
                        <li class="menu-item">
                            <div class="divider"></div>
                        </li>
                        <li class="menu-item">
                            <a href="{ url }/criar/C/{ opts.codigoPaciente }">Criança e Adolescente</a>
                        </li>
                        <li class="menu-item">
                            <a href="{ url }/criar/CM/{ opts.codigoPaciente }">Criança e Adolescente/Maternidade</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="card-body">
            <table class="table">
                <tbody>
                    <tr>
                        <td style="width:100px;">Data</td>
                        <td style="width:250px;" class=" hide-sm">Local</td>
                        <td style="width:100px;" class=" hide-sm">Profissional</td>
                        <td class=" hide-sm">Tipo</td>
                        <td style="width:80px;"></td>
                    </tr>
                    <tr each="{ e in entrevistas }">                            
                        <td class="text-bold">{ e.data_cadastro }</td>
                        <td class="text-bold  hide-sm">{ e.local.descricao }</td>
                        <td class="text-bold  hide-sm">{ e.profissional.nome }</td>
                        <td class="text-bold  hide-sm">{ e.tipo_descricao }</td>
                        <td>
                            <div class="dropdown">
                                <a href="javascript:;" class="btn btn-link btn-menu dropdown-toggle" tabindex="0">
                                    Ações
                                    <i class="icon icon-caret"></i>
                                </a>
                                <ul class="menu">
                                    <li class="menu-item">
                                        <a href="{ url }/editar/{ e.tipo }/{ e.codigo_paciente }/{ e.num_doc }">Alterar</a>
                                    </li>
                                    <li class="menu-item" if="{ usuarioSessao.admin == '1' }">
                                        <a href="">Excluir</a>
                                    </li>
                                </ul>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <script>
        var tag = this;
        tag.url = BASE_URL + '/paciente/entrevista';
        tag.entrevistas = opts.entrevistas || [];
        tag.usuarioSessao = opts.usuarioSessao || {};
        tag.usuarioSessao = APP.getSession() || {};
    </script>
</paciente-visualizacao-entrevistas>