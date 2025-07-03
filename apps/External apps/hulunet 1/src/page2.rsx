<Screen
  id="page2"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title="Asset Manager"
  urlSlug=""
  uuid="9afe255a-61bd-4cd4-95a9-0882ba17af2f"
>
  <SqlQueryUnified
    id="assetsPagination"
    isHidden={false}
    notificationDuration={4.5}
    query={include("../lib/assetsPagination.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="072dd6a3-2d41-4c86-95c9-d6c6021cd0f3"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="assetsRowCount"
    isHidden={false}
    query={include("../lib/assetsRowCount.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="072dd6a3-2d41-4c86-95c9-d6c6021cd0f3"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="orderType"
    isHidden={false}
    isMultiplayerEdited={false}
    query={include("../lib/orderType.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="072dd6a3-2d41-4c86-95c9-d6c6021cd0f3"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="insert"
    actionType="INSERT"
    changeset={
      '[{"key":"id","value":"{{ order_id.data.max[0] +1}}"},{"key":"order_type","value":"From existing asset"},{"key":"date","value":"{{ today.data.now[0] }}"},{"key":"ordered_by","value":"{{ textInput3.value }}"},{"key":"description","value":"{{ textArea1.value }}"},{"key":"deadline","value":"{{ date1.value }}"},{"key":"status","value":"Order placed"},{"key":"asset_id","value":"{{ table3.selectedRow.aid }}"}]'
    }
    editorMode="gui"
    isHidden={false}
    isMultiplayerEdited={false}
    resourceDisplayName="retool_db"
    resourceName="072dd6a3-2d41-4c86-95c9-d6c6021cd0f3"
    runWhenModelUpdates={false}
    tableName="asset_orders"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="orderType"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="failure"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="orderType"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="order_id"
    isHidden={false}
    isMultiplayerEdited={false}
    query={include("../lib/order_id.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="072dd6a3-2d41-4c86-95c9-d6c6021cd0f3"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="today"
    isHidden={false}
    query={include("../lib/today.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="072dd6a3-2d41-4c86-95c9-d6c6021cd0f3"
    warningCodes={[]}
  />
  <RetoolAIQuery
    id="query17"
    customSystemMessage="Using {{ assets.data }} respond with a helpful tone"
    customTemperature=".7"
    defaultModelInitialized={true}
    instruction="{{ textArea2.value }}"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
    runWhenModelUpdates={true}
    showFailureToaster={false}
    showSuccessToaster={false}
    vectorModeEnabled={true}
    vectorNamespaceIds={["f13f9563-1a57-46b9-b5bf-c4a78ae1efe9"]}
    vectorNamespaceIdsFilters={[
      { namespaceId: "f13f9563-1a57-46b9-b5bf-c4a78ae1efe9", filters: [] },
    ]}
  />
  <SqlQueryUnified
    id="assetLibrary"
    isHidden={false}
    notificationDuration={4.5}
    query={include("../lib/assetLibrary.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="072dd6a3-2d41-4c86-95c9-d6c6021cd0f3"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <Include src="./modalFrame2.rsx" />
  <Frame
    id="$main3"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Table
      id="table3"
      actionsOverflowPosition={1}
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ assetLibrary.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      groupByColumns={{}}
      limitOffsetRowCount="{{assetsRowCount.data.count[0]}}"
      overflowType="pagination"
      primaryKeyColumnId="35a79"
      rowHeight="medium"
      serverPaginated={true}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      style={{ background: "canvas" }}
      templatePageSize="25"
      toolbarPosition="bottom"
    >
      <Column
        id="35a79"
        alignment="right"
        editable={false}
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="aid"
        label="Asset ID"
        placeholder="Enter value"
        position="center"
        size={63.1875}
      />
      <Column
        id="d5a78"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="name"
        label="Name"
        placeholder="Enter value"
        position="center"
        size={78.4375}
      />
      <Column
        id="e870d"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="type"
        label="Type"
        placeholder="Select option"
        position="center"
        size={132.796875}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="d04ce"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        groupAggregationMode="none"
        key="media"
        label="Media"
        position="center"
        referenceId="Media"
        size={237.796875}
        textColor="rgba(34, 22, 22, 1)"
        valueOverride="{{item}}"
      >
        <Event
          event="clickCell"
          method="openUrl"
          params={{ ordered: [{ url: "{{ item }}" }] }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="9ab15"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="description"
        label="Description"
        placeholder="Enter value"
        position="center"
        size={288.921875}
      />
      <Column
        id="128e1"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="language"
        label="Language"
        placeholder="Enter value"
        position="center"
        size={85.40625}
      />
      <Column
        id="8b3d7"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="country"
        label="Country"
        placeholder="Enter value"
        position="center"
        size={77.015625}
      />
      <Column
        id="df6df"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="currency"
        formatOptions={{
          currency: "USD",
          currencySign: "standard",
          notation: "standard",
          showSeparators: true,
          currencyDisplay: "symbol",
        }}
        groupAggregationMode="sum"
        key="spend"
        label="Spend"
        placeholder="Enter value"
        position="center"
        size={81.90625}
      />
      <Action id="6a8fa" icon="bold/shopping-cart-3-alternate" label="Action 1">
        <Event
          event="clickAction"
          method="show"
          params={{ ordered: [] }}
          pluginId="modalFrame2"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Action>
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="table3"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="table3"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Container
      id="container3"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="containerTitle3"
          style={{ ordered: [{ color: "primary" }] }}
          value="#### Asset Expert"
          verticalAlign="center"
        />
      </Header>
      <View id="fc722" viewKey="View 1">
        <TextArea
          id="textArea2"
          autoResize={true}
          label="User Questions"
          labelPosition="top"
          minLines={2}
          placeholder="Ask me anything!"
        />
        <Text id="text6" value="{{ query17.data }}" verticalAlign="center" />
        <Image
          id="image4"
          heightType="fixed"
          horizontalAlign="center"
          src="https://cdn-icons-png.flaticon.com/512/4298/4298326.png"
        />
      </View>
    </Container>
  </Frame>
</Screen>
