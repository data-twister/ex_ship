defmodule Shippex.Customs do
  defstruct certify_signer: "",
            certify: false,
            items: [],
            non_delivery_option: "",
            contents_type: "",
            contents_explanation: "",
            exporter_reference: "",
            importer_reference: "",
            invoice: "",
            license: "",
            certificate: "",
            notes: "",
            eel_pfc: "",
            aes_itn: "",
            incoterm: "",
            is_vat_collected: "",
            b13a_filing_option: "",
            b13a_number: nil,
            invoiced_charges: nil,
            exporter_identification: nil,
            metadata: "",
            disclaimer: ""

  defmodule Invoiced.Charges do
    defstruct currency: "",
              certify_signer: "",
              total_shipping: "",
              total_taxes: "",
              total_duties: "",
              other_fees: ""
  end

  defmodule Exporter.Identification do
    defstruct eori_number: "",
              tax_id: ""
  end

  defmodule Tax.Identification do
    defstruct number: "",
              type: ""
  end
end
