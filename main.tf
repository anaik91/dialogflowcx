
resource "google_dialogflow_cx_agent" "full_agent" {
  project = "airline1-sabre-wolverine"

  display_name               = "dialogflowcx-agent"
  location                   = "us-central1-dialogflow"
  default_language_code      = "en"
  supported_language_codes   = ["fr", "de", "es"]
  time_zone                  = "America/New_York"
  description                = "Example description."
  avatar_uri                 = "https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png"
  enable_stackdriver_logging = true
  enable_spell_correction    = true
  speech_to_text_settings {
    enable_speech_adaptation = true
  }

}
