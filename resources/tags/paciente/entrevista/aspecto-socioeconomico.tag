<paciente-entrevista-aspecto-socioeconomico>
    <fieldset>
        <legend>Aspectos Socioeconômicos</legend>
        <paciente-local-tipo dados="{ entrevista }"></paciente-local-tipo>
        <div class="columns">
            <div class="column col-2 col-md-12">
                <div class="form-group { errors.situacao_conjugal ? 'has-error' : '' }">
                    <label class="form-label" for="situacao_conjugal">Estado Civil</label>
                    <select name="situacao_conjugal" class="form-select">
                        <option value=""></option>
                        <option each="{ e in arrayEstadosCivis }" value="{ e.codigo }" selected="{ dados.situacao_conjugal == e.codigo }">{ e.descricao }</option>
                    </select>
                    <div class="form-input-hint" if="{ errors.situacao_conjugal }" each="{ e in errors.situacao_conjugal }">- { e }</div>
                </div>
            </div>
            <div class="column col-4 col-md-12">
                <div class="form-group { errors.nome_companheiro ? 'has-error' : '' }">
                    <label class="form-label" for="nome_companheiro">Nome do(a) esposo(a) ou companheiro(a)</label>
                    <input type="text" name="nome_companheiro" maxlength="100" value="{ dados.nome_companheiro }" class="form-input">
                    <div class="form-input-hint" if="{ errors.nome_companheiro }" each="{ e in errors.nome_companheiro }">- { e }</div>
                </div>
            </div>
            <div class="column col-3 col-md-12">
                <div class="form-group { errors.situacao_moradia ? 'has-error' : '' }">
                    <label class="form-label" for="situacao_moradia">Situação Moradia</label>
                    <select name="situacao_moradia" class="form-select">
                        <option value=""></option>
                        <option each="{ s in arraySituacaoMoradia }" value="{ s.codigo }" selected="{ dados.situacao_moradia == s.codigo }">{ s.descricao }</option>
                    </select>
                    <div class="form-input-hint" if="{ errors.situacao_moradia }" each="{ e in errors.situacao_moradia }">- { e }</div>
                </div>
            </div>
            <div class="column col-3 col-md-12">
                <div class="form-group { errors.situacao_moradia_outros ? 'has-error' : '' }">
                    <label class="form-label" for="situacao_moradia_outros">Situação Moradia (Outro)</label>
                    <input type="text" name="situacao_moradia_outros" maxlength="100" value="{ dados.situacao_moradia_outros }" class="form-input">
                    <div class="form-input-hint" if="{ errors.situacao_moradia_outros }" each="{ e in errors.situacao_moradia_outros }">- { e }</div>
                </div>
            </div>
        </div>
        <div class="columns">
            <div class="column col-2 col-md-12">
                <div class="form-group { errors.filiado_rgps ? 'has-error' : '' }">
                    <label class="form-label" for="filiado_rgps">É filiado(a) ao RGPS?</label>
                    <select name="filiado_rgps" id="filiado_rgps" class="form-select">
                        <option value=""></option>
                        <option value="S">Sim</option>
                        <option value="N">Não</option>
                    </select>
                    <div class="form-input-hint" if="{ errors.filiado_rgps }" each="{ e in errors.filiado_rgps }">- { e }</div>
                </div>
            </div>
            <div class="column col-4 col-md-12">
                <div class="form-group { errors.outro_regime ? 'has-error' : '' }">
                    <label class="form-label" for="outro_regime">Outro regime</label>
                    <input type="text" name="outro_regime" maxlength="100" value="{ dados.outro_regime }" class="form-input">
                    <div class="form-input-hint" if="{ errors.outro_regime }" each="{ e in errors.outro_regime }">- { e }</div>
                </div>
            </div>
            <div class="column col-3 col-md-12">
                <div class="form-group { errors.contribui_atualmente ? 'has-error' : '' }">
                    <label class="form-label" for="contribui_atualmente">Contribui atualmente?</label>
                    <select name="contribui_atualmente" class="form-select" onchange="{ onChangeContribuiAtualmente }">
                        <option value=""></option>
                        <option value="S">Sim</option>
                        <option value="N">Não</option>
                        <option value="NSI">Não Soube Informar (NSI)</option>
                    </select>
                    <div class="form-input-hint" if="{ errors.contribui_atualmente }" each="{ e in errors.contribui_atualmente }">- { e }</div>
                </div>
            </div>
            <div class="column col-3 col-md-12">
                <div class="form-group { errors.tempo_contribuicao ? 'has-error' : '' }">
                    <label class="form-label" for="tempo_contribuicao">Há quanto tempo contribui?</label>
                    <input type="number" id="tempo_contribuicao" disabled="{ dados.contribui_atualmente == 'S' ? 'false' : 'true' }" name="tempo_contribuicao"
                        min="0" max="40" maxlength="2" value="{ dados.tempo_contribuicao }" class="form-input">
                    <div class="form-input-hint" if="{ errors.tempo_contribuicao }" each="{ e in errors.tempo_contribuicao }">- { e }</div>
                </div>
            </div>
        </div>
        <div class="columns">
            <div class="column col-2 col-md-12">
                <div class="form-group { errors.escolaridade ? 'has-error' : '' }">
                    <label class="form-label" for="escolaridade">Escolaridade</label>
                    <select name="escolaridade" class="form-select">
                        <option value=""></option>
                        <option each="{ e in arrayEscolaridade }" value="{ e.codigo }" selected="{ dados.escolaridade == e.codigo }">{ e.descricao }</option>
                    </select>
                    <div class="form-input-hint" if="{ errors.escolaridade }" each="{ e in errors.escolaridade }">- { e }</div>
                </div>
            </div>
            <div class="column col-4 col-md-12">
                <div class="form-group { errors.fk_profissao ? 'has-error' : '' }">
                    <label class="form-label" for="fk_profissao">Profissão</label>
                    <input type="hidden" name="fk_profissao" id="fk_profissao" value="{ dados.fk_profissao }">
                    <form-autocomplete name="inputSelectProfissao" placeholder="Digite até 3 caracteres para pesquisar" source="{ autoCompleteSource }"
                        render-item="{ autoCompleteRenderItem }" on-select="{ autoCompleteOnSelect }" val="{ dados.profissao ? dados.profissao.descricao : '' }"></form-autocomplete>
                    <div class="form-input-hint" if="{ errors.fk_profissao }" each="{ e in errors.fk_profissao }">- { e }</div>
                </div>
            </div>
            <div class="column col-6 col-md-12">
                <div class="form-group { errors.situacao_funcional ? 'has-error' : '' }">
                    <label class="form-label" for="">Situação Funcional</label>
                    <label class="form-checkbox" each="{ s in arraySituacaoFuncional }">
                        <input type="checkbox" value="{ s.codigo }" name="situacao_funcional">
                        <i class="form-icon"></i> { s.descricao }
                    </label>
                    <div class="form-input-hint" if="{ errors.situacao_funcional }" each="{ e in errors.situacao_funcional }">- { e }</div>
                </div>
            </div>
        </div>
    </fieldset>
    <script>
        var tag = this;
        tag.dados = opts.dados || {};
        tag.errors = opts.errors || {};
        tag.onChangeContribuiAtualmente = onChangeContribuiAtualmente;
        tag.autoCompleteSource = autoCompleteSource;
        tag.autoCompleteRenderItem = autoCompleteRenderItem;
        tag.autoCompleteOnSelect = autoCompleteOnSelect;
        tag.getSelectedSituacaoFuncional = getSelectedSituacaoFuncional;
        tag.profissoes = [];
        tag.arrayEstadosCivis = [{
                'codigo': 'CA',
                'descricao': 'Casado'
            },
            {
                'codigo': 'DI',
                'descricao': 'Divorciado(a)'
            },
            {
                'codigo': 'SO',
                'descricao': 'Solteiro(a)'
            },
            {
                'codigo': 'SE',
                'descricao': 'Separado(a)'
            },
            {
                'codigo': 'UE',
                'descricao': 'União Estável'
            },
            {
                'codigo': 'VI',
                'descricao': 'Viúvo(a)'
            },
            {
                'codigo': 'NA',
                'descricao': 'NSA'
            },
            {
                'codigo': 'OU',
                'descricao': 'Outro'
            }
        ];
        tag.arraySituacaoMoradia = [{
                'codigo': 'P',
                'descricao': 'Própria'
            },
            {
                'codigo': 'C',
                'descricao': 'Cedida'
            },
            {
                'codigo': 'A',
                'descricao': 'Alugada'
            },
            {
                'codigo': 'F',
                'descricao': 'Financiada'
            },
            {
                'codigo': 'S',
                'descricao': 'Situação de Rua'
            },
            {
                'codigo': 'O',
                'descricao': 'Outro'
            }
        ];
        tag.arrayEscolaridade = [{
                'codigo': 'N',
                'descricao': 'NSA'
            },
            {
                'codigo': 'NSI',
                'descricao': 'NSI - Não Soube Informar'
            },
            {
                'codigo': 'NA',
                'descricao': 'Não Alfabetizado'
            },
            {
                'codigo': 'A',
                'descricao': 'Alfabetizado'
            },
            {
                'codigo': 'EI',
                'descricao': 'EI - Educação Infantil'
            },            
            {
                'codigo': 'EFI',
                'descricao': 'EFI - Ensino Fundamental Incompleto'
            },
            {
                'codigo': 'EFC',
                'descricao': 'EFC - Ensino Fundamental Completo'
            },
            {
                'codigo': 'EMI',
                'descricao': 'EMI - Ensino Médio Incompleto'
            },
            {
                'codigo': 'EMC',
                'descricao': 'EMC - Ensino Médio Completo'
            },
            {
                'codigo': 'ESI',
                'descricao': 'ESI - Ensino Superior Incompleto'
            },
            {
                'codigo': 'ESC',
                'descricao': 'ESC - Ensino Superior Completo'
            },
            {
                'codigo': 'PG',
                'descricao': 'Pós-Graduação'
            }
        ];

        tag.arraySituacaoFuncional = [{
                'codigo': 'E',
                'descricao': 'Empregado'
            },
            {
                'codigo': 'D',
                'descricao': 'Desempregado'
            },
            {
                'codigo': 'A',
                'descricao': 'Autônomo'
            },
            {
                'codigo': 'P',
                'descricao': 'Previdênciário'
            },
            {
                'codigo': 'I',
                'descricao': 'Incapaz'
            },
            {
                'codigo': 'N',
                'descricao': 'NSI'
            },
            {
                'codigo': 'O',
                'descricao': 'Outro'
            }
        ];

        function getSelectedSituacaoFuncional(array, selected) {
            if (array) {
                var encontrado = array.find(function (elem) {
                    return elem.tipo == selected;
                });
            }
            return encontrado ? true : false;
        }

        function autoCompleteSource(term, response) {
            var term = term.toLowerCase();
            APP.ajaxPostRequest(BASE_URL + '/profissao/buscar', JSON.stringify({
                'descricao': term
            }), function (json) {
                var res = json.map(function (item) {
                    return JSON.stringify(item);
                });
                response(res);
            });
        }

        function autoCompleteRenderItem(item, search) {
            var obj = JSON.parse(item);
            var re = new RegExp("(" + search.split(' ').join('|') + ")", "gi");
            return '<div class="autocomplete-suggestion" data-codigo="' + obj.codigo + '" data-val="' +
                obj.descricao + '">' + obj.descricao.replace(re, "<b>$1</b>") + '</div>';
        }

        function autoCompleteOnSelect(event, term, item) {
            event.preventDefault();
            document.querySelector('input[name="inputSelectProfissao"]').value = item.getAttribute('data-val');
            document.getElementById('fk_profissao').value = item.getAttribute('data-codigo');
            document.getElementById('filiado_rgps').focus();
        }

        function onChangeContribuiAtualmente(event) {
            var contribuiAtualmente = event.target.value;
            var inputTempoContribuicao = document.getElementById('tempo_contribuicao');

            if (contribuiAtualmente == 'S') {
                inputTempoContribuicao.disabled = false;
                inputTempoContribuicao.focus();
            } else {
                inputTempoContribuicao.value = '';
                inputTempoContribuicao.disabled = true;
            }
        }


        function getProfissao() {
            APP.ajaxPostRequest(BASE_URL + '/profissao/buscar', {}, function (json) {
                tag.update({
                    'profissoes': json
                });
            });
        }
    </script>
</paciente-entrevista-aspecto-socioeconomico>