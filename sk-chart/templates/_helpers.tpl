{{/* SK backend labels */}}
{{- define "backend.labels" -}}
{{- range $key, $val := .Values.backend.labels }}
{{ $key }}: {{ $val | quote }}
{{- end }}
{{- end -}}

{{/* SK database labels */}}
{{- define "database.labels" -}}
{{- range $key, $val := .Values.database.labels }}
{{ $key }}: {{ $val | quote }}
{{- end }}
{{- end -}}
