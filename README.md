# Unoffizieller Go Client für die Pflanzenschutzmittelzulassung API
Dieser unoffizielle Client ermöglicht den Zugriff auf die Pflanzenschutzmittelzulassung API des Bundesamtes für Verbraucherschutz und Lebensmittelsicherheit (BVL). Er wurde auf Basis der [Swagger-Dokumentation](https://github.com/bundesAPI/pflanzenschutzmittelzulassung-api/blob/main/openapi.yaml) erstellt, die zuvor in das OpenAPI 3.0 Format umgewandelt wurde.

Für weitere Informationen und Anleitungen zur Nutzung der Pflanzenschutzmittelzulassung API, verweisen wir auf die offizielle Readme-Datei, die Sie unter folgendem Link finden können: [Pflanzenschutzmittelzulassung-Readme](https://github.com/bundesAPI/pflanzenschutzmittelzulassung-api/blob/main/README.md).

## Beispiel
```go
import (
	"context"

	"github.com/Nelle-Bendlage-IT/pflanzenschutzmittelzulassung-api-go/client"
	"github.com/Nelle-Bendlage-IT/pflanzenschutzmittelzulassung-api-go/models"
)

const URL string = "https://psm-api.bvl.bund.de/ords/psm/api-v1"

func main() {
    // 1. Erstellung des Clients
	cl, err := client.NewClient(URL)
	if err != nil {
		panic(err)
	}
    // 2. Ausführen des Requests
	resp, err := cl.GetAdresse(context.Background(), &models.GetAdresseParams{})
	if err != nil {
		panic(err)
	}
    // 3. Parsen der Response
	response, err := client.ParseGetAdresseResponse(resp)
	if err != nil {
		panic(err)
	}

    // Weiterarbeiten mit response
}
```
