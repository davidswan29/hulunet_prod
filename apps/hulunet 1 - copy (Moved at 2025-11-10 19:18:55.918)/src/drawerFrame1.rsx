<DrawerFrame
  id="drawerFrame1"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showHeader={true}
  showOverlay={true}
  width="medium"
>
  <Header>
    <Text id="drawerTitle1" value="### Order Details" verticalAlign="center" />
    <Button
      id="drawerCloseButton1"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="drawerFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Image
      id="image1"
      heightType="fixed"
      horizontalAlign="center"
      src="{{ table2.selectedSourceRow.media }}"
    />
    <KeyValue
      id="keyValue1"
      data="{{ table2.selectedRow }}"
      editIcon="bold/interface-edit-pencil"
      enableSaveActions={true}
      groupLayout="singleColumn"
      itemLabelPosition="top"
      labelWrap={true}
    >
      <Property
        id="id"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        hidden="false"
        label="Order ID"
      />
      <Property
        id="asset_id"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        hidden="false"
        label="Asset ID"
      />
      <Property
        id="name"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Asset Name"
      />
      <Property
        id="order_type"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Order type"
      />
      <Property
        id="type"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Asset Type"
      />
      <Property
        id="spend"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="currency"
        formatOptions={{
          currency: "USD",
          currencySign: "standard",
          notation: "standard",
          showSeparators: true,
          currencyDisplay: "symbol",
        }}
        hidden="false"
        label="Spend"
      />
      <Property
        id="date"
        editable="false"
        editableOptions={{}}
        format="datetime"
        formatOptions={{}}
        hidden="false"
        label="Order Date"
      />
      <Property
        id="deadline"
        editable="false"
        editableOptions={{}}
        format="datetime"
        formatOptions={{}}
        hidden="false"
        label="Deadline"
      />
      <Property
        id="media"
        editable="false"
        editableOptions={{}}
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        hidden="true"
        label="Media"
      />
    </KeyValue>
  </Body>
</DrawerFrame>
