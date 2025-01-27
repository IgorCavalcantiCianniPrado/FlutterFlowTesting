import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start FlutterFlowPOC Group Code

class FlutterFlowPOCGroup {
  static String getBaseUrl() => 'https://api-stg.ituran.com.br';
  static Map<String, String> headers = {};
  static SalesBoAuthCall salesBoAuthCall = SalesBoAuthCall();
  static GetSpecificCepCall getSpecificCepCall = GetSpecificCepCall();
  static CreateLeadCall createLeadCall = CreateLeadCall();
  static CreateQuoteVThreeCall createQuoteVThreeCall = CreateQuoteVThreeCall();
  static PartnersBySellerCall partnersBySellerCall = PartnersBySellerCall();
  static SalesChannelCall salesChannelCall = SalesChannelCall();
}

class SalesBoAuthCall {
  Future<ApiCallResponse> call({
    String? user = '',
    String? password = '',
  }) async {
    final baseUrl = FlutterFlowPOCGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "username": "${escapeStringForJson(user)}",
  "password": "${escapeStringForJson(password)}",
  "clientId": "salesBackoffice"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SalesBoAuth',
      apiUrl: '$baseUrl/salesbo/Authentication/Token',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? accessToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Data.access_token''',
      ));
}

class GetSpecificCepCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = FlutterFlowPOCGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetSpecificCep',
      apiUrl: '$baseUrl/salesbo/order/cep/04125030',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? city(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Data.CIDADE.NM_CIDADE''',
      ));
}

class CreateLeadCall {
  Future<ApiCallResponse> call({
    String? leadName = '',
    String? leadSocialName = '',
    String? email = '',
    String? phoneNumber = '',
    String? authToken = '',
  }) async {
    final baseUrl = FlutterFlowPOCGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "DS_ORIGEM": "vendas-stg.ituran.com.br",
  "NM_LEAD": "${escapeStringForJson(leadName)}",
  "NM_SOCIAL_LEAD": "${escapeStringForJson(leadSocialName)}",
  "DS_EMAIL": "${escapeStringForJson(email)}",
  "NR_TELEFONE": "${escapeStringForJson(phoneNumber)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreateLead',
      apiUrl: '$baseUrl/sales/lead',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? leadId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Data.CD_LEAD''',
      ));
}

class CreateQuoteVThreeCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? nascimentoSegurado = '',
    String? sexoSegurado = '',
    String? estadoCivilSegurado = '',
    String? finalidadeUsoVeiculo = '',
    String? veiculoModificado = '',
    String? isencaoImposto = '',
    String? zeroKm = '',
    String? veiculoKitGas = '',
    String? garagemFechada = '',
    String? transporteTrabalho = '',
    String? tempoHabilitacao = '',
    String? seguradoPrincipalCondutor = '',
    String? condutorMenor26 = '',
    String? nrCpfCnpj = '',
    String? dsPlaca = '',
    String? nrCepPernoite = '',
    String? cdLead = '',
    String? parceiroIdString = '',
    int? cdCanalVenda,
    int? parceiroIdInt,
    int? cdModelo,
    String? dsCombustivel = '',
    String? dsCor = '',
    String? dsChassi = '',
    int? nrAno,
    int? nrAnoFabricacao,
  }) async {
    final baseUrl = FlutterFlowPOCGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "DS_CHASSI": "${escapeStringForJson(dsChassi)}",
  "DS_INSTALACAO": "",
  "NR_ANO": $nrAno,
  "NR_ANO_FABRICACAO": $nrAnoFabricacao,
  "CD_TIPO_COMERCIALIZACAO": 2,
  "DS_PERFIL": [
    {
      "key": "nascimento_segurado",
      "value": "${escapeStringForJson(nascimentoSegurado)}"
    },
    {
      "key": "sexo_segurado",
      "value": "${escapeStringForJson(sexoSegurado)}"
    },
    {
      "key": "estado_civil_segurado",
      "value": "${escapeStringForJson(estadoCivilSegurado)}"
    },
    {
      "key": "finalidade_uso_veiculo",
      "value": "${escapeStringForJson(finalidadeUsoVeiculo)}"
    },
    {
      "key": "veiculo_modificado",
      "value": "${escapeStringForJson(veiculoModificado)}"
    },
    {
      "key": "isencao_imposto",
      "value": "${escapeStringForJson(isencaoImposto)}"
    },
    {
      "key": "zero_km",
      "value": "${escapeStringForJson(zeroKm)}"
    },
    {
      "key": "saida_concessionaria",
      "value": ""
    },
    {
      "key": "veiculo_kit_gas",
      "value": "${escapeStringForJson(veiculoKitGas)}"
    },
    {
      "key": "motivo_isencao_fiscal",
      "value": ""
    },
    {
      "key": "garagem_fechada",
      "value": "${escapeStringForJson(garagemFechada)}"
    },
    {
      "key": "garagem_residencia",
      "value": ""
    },
    {
      "key": "garagem_trabalho",
      "value": ""
    },
    {
      "key": "garagem_faculdade",
      "value": ""
    },
    {
      "key": "transporte_trabalho",
      "value": "${escapeStringForJson(transporteTrabalho)}"
    },
    {
      "key": "tempo_habilitacao",
      "value": "${escapeStringForJson(tempoHabilitacao)}"
    },
    {
      "key": "segurado_proprietario_legal",
      "value": ""
    },
    {
      "key": "segurado_principal_condutor",
      "value": "${escapeStringForJson(seguradoPrincipalCondutor)}"
    },
    {
      "key": "condutor_menor_26",
      "value": "${escapeStringForJson(condutorMenor26)}"
    },
    {
      "key": "nome_condutor",
      "value": ""
    },
    {
      "key": "nome_social_condutor",
      "value": ""
    },
    {
      "key": "cpf_condutor",
      "value": ""
    },
    {
      "key": "data_nascimento_condutor",
      "value": ""
    },
    {
      "key": "sexo_condutor",
      "value": ""
    },
    {
      "key": "estado_civil_condutor",
      "value": ""
    },
    {
      "key": "vinculo_condutor_segurado",
      "value": ""
    }
  ],
  "SISTEMA_ENUM": 16,
  "NR_TIPO_COTACAO": 1,
  "NR_CPF_CNPJ": "${escapeStringForJson(nrCpfCnpj)}",
  "DS_PLACA": "${escapeStringForJson(dsPlaca)}",
  "NR_CEP_PERNOITE": "${escapeStringForJson(nrCepPernoite)}",
  "CD_LEAD": "${escapeStringForJson(cdLead)}",
  "CD_PESSOA_VENDEDOR": "${escapeStringForJson(parceiroIdString)}",
  "CD_PESSOA_RESPONSAVEL": "${escapeStringForJson(parceiroIdString)}",
  "CD_PESSOA_PARCEIRO": $parceiroIdInt,
  "CD_PESSOA_PARCEIRO_ESTABELECIMENTO": $parceiroIdInt,
  "CD_CANAL_VENDA": $cdCanalVenda,
  "CD_CANAL_VENDA_PARCEIRO": 0,
  "CD_MODELO": $cdModelo,
  "DS_COMBUSTIVEL": "${escapeStringForJson(dsCombustivel)}",
  "DS_COR": "${escapeStringForJson(dsCombustivel)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreateQuoteVThree',
      apiUrl: '$baseUrl/sales/quote/v3',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? valorComissao(dynamic response) => (getJsonField(
        response,
        r'''$.Data.COTACAO_ITEMS[:].COMISSOES_FIXAS[:].VL_COMISSAO''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? totalValue(dynamic response) => (getJsonField(
        response,
        r'''$.Data.COTACAO_ITEMS[:].VL_TOTAL''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class PartnersBySellerCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = FlutterFlowPOCGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'PartnersBySeller',
      apiUrl: '$baseUrl/salesbo/UserProfile/PartnersBySeller?CdPerson=0',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? partnerId(dynamic response) => (getJsonField(
        response,
        r'''$[:].CdPerson''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? partnerName(dynamic response) => (getJsonField(
        response,
        r'''$[:].NmPerson''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class SalesChannelCall {
  Future<ApiCallResponse> call({
    String? cdPersonPartnerEstablishment = '',
    String? cdPersonPartner = '',
    String? authToken = '',
  }) async {
    final baseUrl = FlutterFlowPOCGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'SalesChannel',
      apiUrl: '$baseUrl/salesbo/UserProfile/SalesChannel',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
        'cdperson': '0',
      },
      params: {
        'CdPersonPartnerEstablishment': cdPersonPartnerEstablishment,
        'CdPersonPartner': cdPersonPartner,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? salesChannelIds(dynamic response) => (getJsonField(
        response,
        r'''$[:].CdSalesChannel''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? salesChannelNames(dynamic response) => (getJsonField(
        response,
        r'''$[:].NmSalesChannel''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

/// End FlutterFlowPOC Group Code

/// Start Supabase Integration Group Code

class SupabaseIntegrationGroup {
  static String getBaseUrl() => 'https://gcpivqnfzwblsrueccif.supabase.co';
  static Map<String, String> headers = {
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdjcGl2cW5mendibHNydWVjY2lmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzU1NjYxNDIsImV4cCI6MjA1MTE0MjE0Mn0.xBYyfgZxGhaH8lR8k99wHwTzcYA_9JTBW4Y8qbMUXIM',
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdjcGl2cW5mendibHNydWVjY2lmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzU1NjYxNDIsImV4cCI6MjA1MTE0MjE0Mn0.xBYyfgZxGhaH8lR8k99wHwTzcYA_9JTBW4Y8qbMUXIM',
  };
  static GetAllCasesCall getAllCasesCall = GetAllCasesCall();
  static AssociateCaseWithConversationCall associateCaseWithConversationCall =
      AssociateCaseWithConversationCall();
  static GetAllConversationsCall getAllConversationsCall =
      GetAllConversationsCall();
  static GetAllStudentsCall getAllStudentsCall = GetAllStudentsCall();
  static GetConversationByCaseCall getConversationByCaseCall =
      GetConversationByCaseCall();
  static GetConversationWithoutCaseCall getConversationWithoutCaseCall =
      GetConversationWithoutCaseCall();
}

class GetAllCasesCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = SupabaseIntegrationGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get All Cases',
      apiUrl: '$baseUrl/rest/v1/cases?select=*',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdjcGl2cW5mendibHNydWVjY2lmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzU1NjYxNDIsImV4cCI6MjA1MTE0MjE0Mn0.xBYyfgZxGhaH8lR8k99wHwTzcYA_9JTBW4Y8qbMUXIM',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdjcGl2cW5mendibHNydWVjY2lmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzU1NjYxNDIsImV4cCI6MjA1MTE0MjE0Mn0.xBYyfgZxGhaH8lR8k99wHwTzcYA_9JTBW4Y8qbMUXIM',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? caseNames(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? caseIds(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? caseDescriptions(dynamic response) => (getJsonField(
        response,
        r'''$[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class AssociateCaseWithConversationCall {
  Future<ApiCallResponse> call({
    int? caseId,
    int? conversationId,
  }) async {
    final baseUrl = SupabaseIntegrationGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "caseId": $caseId,
  "conversationId": $conversationId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Associate Case with Conversation',
      apiUrl: '$baseUrl/functions/v1/associate-case-with-conversation',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdjcGl2cW5mendibHNydWVjY2lmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzU1NjYxNDIsImV4cCI6MjA1MTE0MjE0Mn0.xBYyfgZxGhaH8lR8k99wHwTzcYA_9JTBW4Y8qbMUXIM',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdjcGl2cW5mendibHNydWVjY2lmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzU1NjYxNDIsImV4cCI6MjA1MTE0MjE0Mn0.xBYyfgZxGhaH8lR8k99wHwTzcYA_9JTBW4Y8qbMUXIM',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllConversationsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = SupabaseIntegrationGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get All Conversations',
      apiUrl: '$baseUrl/rest/v1/conversations?select=*',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdjcGl2cW5mendibHNydWVjY2lmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzU1NjYxNDIsImV4cCI6MjA1MTE0MjE0Mn0.xBYyfgZxGhaH8lR8k99wHwTzcYA_9JTBW4Y8qbMUXIM',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdjcGl2cW5mendibHNydWVjY2lmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzU1NjYxNDIsImV4cCI6MjA1MTE0MjE0Mn0.xBYyfgZxGhaH8lR8k99wHwTzcYA_9JTBW4Y8qbMUXIM',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllStudentsCall {
  Future<ApiCallResponse> call({
    bool? ethiopiaMember,
  }) async {
    final baseUrl = SupabaseIntegrationGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get All Students',
      apiUrl:
          '$baseUrl/rest/v1/students?select=*&ethiopia=eq.$ethiopiaMember',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdjcGl2cW5mendibHNydWVjY2lmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzU1NjYxNDIsImV4cCI6MjA1MTE0MjE0Mn0.xBYyfgZxGhaH8lR8k99wHwTzcYA_9JTBW4Y8qbMUXIM',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdjcGl2cW5mendibHNydWVjY2lmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzU1NjYxNDIsImV4cCI6MjA1MTE0MjE0Mn0.xBYyfgZxGhaH8lR8k99wHwTzcYA_9JTBW4Y8qbMUXIM',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetConversationByCaseCall {
  Future<ApiCallResponse> call({
    int? caseId,
  }) async {
    final baseUrl = SupabaseIntegrationGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Conversation By Case',
      apiUrl: '$baseUrl/rest/v1/conversations?select=*&case_id=eq.$caseId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdjcGl2cW5mendibHNydWVjY2lmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzU1NjYxNDIsImV4cCI6MjA1MTE0MjE0Mn0.xBYyfgZxGhaH8lR8k99wHwTzcYA_9JTBW4Y8qbMUXIM',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdjcGl2cW5mendibHNydWVjY2lmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzU1NjYxNDIsImV4cCI6MjA1MTE0MjE0Mn0.xBYyfgZxGhaH8lR8k99wHwTzcYA_9JTBW4Y8qbMUXIM',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? xablau(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class GetConversationWithoutCaseCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = SupabaseIntegrationGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Conversation Without Case',
      apiUrl: '$baseUrl/rest/v1/conversations?select=*&case_id=is.null',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdjcGl2cW5mendibHNydWVjY2lmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzU1NjYxNDIsImV4cCI6MjA1MTE0MjE0Mn0.xBYyfgZxGhaH8lR8k99wHwTzcYA_9JTBW4Y8qbMUXIM',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdjcGl2cW5mendibHNydWVjY2lmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzU1NjYxNDIsImV4cCI6MjA1MTE0MjE0Mn0.xBYyfgZxGhaH8lR8k99wHwTzcYA_9JTBW4Y8qbMUXIM',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Supabase Integration Group Code

/// Start NeightN Integration Group Code

class NeightNIntegrationGroup {
  static String getBaseUrl() => 'https://igorcianni.app.n8n.cloud';
  static Map<String, String> headers = {};
  static CreateCaseCall createCaseCall = CreateCaseCall();
}

class CreateCaseCall {
  Future<ApiCallResponse> call({
    int? conversationId,
    String? caseName = '',
    String? caseDescription = '',
  }) async {
    final baseUrl = NeightNIntegrationGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "CaseName": "${escapeStringForJson(caseName)}",
  "CaseDescription": "${escapeStringForJson(caseDescription)}",
  "ConversationId": $conversationId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Case',
      apiUrl: '$baseUrl/webhook-test/7bf9c8cc-8c83-4a4e-a6b1-e874fa2e1f27',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End NeightN Integration Group Code

class AddStudentInEthiopiaProjectCall {
  static Future<ApiCallResponse> call({
    int? studentId,
  }) async {
    const ffApiRequestBody = '''
{
   "ethiopia": true
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add Student in Ethiopia Project ',
      apiUrl:
          'https://gcpivqnfzwblsrueccif.supabase.co/rest/v1/students?id=eq.$studentId',
      callType: ApiCallType.PATCH,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdjcGl2cW5mendibHNydWVjY2lmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzU1NjYxNDIsImV4cCI6MjA1MTE0MjE0Mn0.xBYyfgZxGhaH8lR8k99wHwTzcYA_9JTBW4Y8qbMUXIM',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdjcGl2cW5mendibHNydWVjY2lmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzU1NjYxNDIsImV4cCI6MjA1MTE0MjE0Mn0.xBYyfgZxGhaH8lR8k99wHwTzcYA_9JTBW4Y8qbMUXIM',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class APICallTestCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'API Call Test',
      apiUrl: 'https://gcpivqnfzwblsrueccif.supabase.co/rest/v1/Test?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdjcGl2cW5mendibHNydWVjY2lmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzU1NjYxNDIsImV4cCI6MjA1MTE0MjE0Mn0.xBYyfgZxGhaH8lR8k99wHwTzcYA_9JTBW4Y8qbMUXIM',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdjcGl2cW5mendibHNydWVjY2lmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzU1NjYxNDIsImV4cCI6MjA1MTE0MjE0Mn0.xBYyfgZxGhaH8lR8k99wHwTzcYA_9JTBW4Y8qbMUXIM',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
