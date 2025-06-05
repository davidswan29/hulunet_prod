<Screen
  id="defaultPage"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title="Order Manager"
  urlSlug=""
  uuid="bc7c6c37-3319-431b-8b81-7fa0695e6060"
>
  <SqlQueryUnified
    id="update"
    actionType="INSERT"
    changeset={
      '[{"key":"ordered_by","value":"{{ keyValue2.data.ordered_by }}"},{"key":"id","value":"{{ order_id_count.data.max[0]+1}}"},{"key":"order_type","value":"From Existing Asset"},{"key":"date","value":"{{ deadline.data.today[0] }}"},{"key":"description","value":"{{ keyValue2.data.description }}"},{"key":"status","value":"Order placed"},{"key":"deadline","value":"{{ deadline.data.deadline[0] }}"},{"key":"asset_id","value":"{{ keyValue2.data.aid }}"}]'
    }
    editorMode="gui"
    isHidden={false}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    resourceDisplayName="retool_db"
    resourceName="072dd6a3-2d41-4c86-95c9-d6c6021cd0f3"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    tableName="asset_orders"
    updateSetValueDynamically={true}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="join"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="order_id_count"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="confetti"
      params={{ ordered: [] }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="query18"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="order_id_count"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="failure"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="order_id_count"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="order_id_count"
    isHidden={false}
    query={include("../lib/order_id_count.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="072dd6a3-2d41-4c86-95c9-d6c6021cd0f3"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="deadline"
    isHidden={false}
    query={include("../lib/deadline.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="072dd6a3-2d41-4c86-95c9-d6c6021cd0f3"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="query12"
    isMultiplayerEdited={false}
    query={include("../lib/query12.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="072dd6a3-2d41-4c86-95c9-d6c6021cd0f3"
    warningCodes={[]}
  />
  <JavascriptQuery
    id="query13"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("../lib/query13.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <JavascriptQuery
    id="query14"
    notificationDuration={4.5}
    query={include("../lib/query14.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <SqlQueryUnified
    id="query15"
    isMultiplayerEdited={false}
    query={include("../lib/query15.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="072dd6a3-2d41-4c86-95c9-d6c6021cd0f3"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="query16"
    isMultiplayerEdited={false}
    query={include("../lib/query16.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="072dd6a3-2d41-4c86-95c9-d6c6021cd0f3"
    warningCodes={[]}
  />
  <WorkflowRun
    id="query18"
    resourceName="WorkflowRun"
    showFailureToaster={false}
    workflowId="4542ea74-0c6a-4247-ac47-15d2d9eb44a5"
    workflowRunExecutionType="async"
  />
  <Include src="./drawerFrame1.rsx" />
  <Include src="./modalFrame1.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <TextInput
      id="textInput1"
      iconAfter="bold/interface-search"
      iconBefore="bold/interface-setting-menu-1"
      label=""
      labelPosition="top"
      placeholder="Search"
      showClear={true}
    />
    <Filter
      id="filter1"
      linkedTableId=""
      linkToTable={true}
      style={{
        ordered: [{ background: "canvas" }, { border: "surfacePrimary" }],
      }}
    />
    <Button
      id="button2"
      style={{ ordered: [{ background: "surfacePrimary" }] }}
      text="New Order"
    >
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="modalFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Container
      id="container1"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
      style={{
        ordered: [
          { background: "surfaceSecondary" },
          { border: "surfacePrimary" },
        ],
      }}
    >
      <Header>
        <Text
          id="containerTitle1"
          value="#### Selected Asset Details"
          verticalAlign="center"
        />
      </Header>
      <View id="f5927" viewKey="View 1">
        <Image
          id="image2"
          heightType="fixed"
          horizontalAlign="center"
          src="{{ table2.selectedSourceRow.media }}"
        />
        <KeyValue
          id="keyValue2"
          data="{{ table2.selectedRow }}"
          editIcon="bold/interface-edit-pencil"
          enableSaveActions={true}
          groupLayout="singleColumn"
          itemLabelPosition="top"
          labelWrap={true}
        >
          <Property
            id="media"
            editable="false"
            editableOptions={{}}
            format="link"
            formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
            hidden="true"
            label="Media"
          />
          <Property
            id="id"
            editable="false"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            hidden="true"
            label="Order ID"
          />
          <Property
            id="ordered_by"
            editable="false"
            editableOptions={{}}
            format="string"
            formatOptions={{}}
            hidden="true"
            label="Ordered by"
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
            id="type"
            editable="false"
            editableOptions={{}}
            format="string"
            formatOptions={{}}
            hidden="false"
            label="Type"
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
            id="description"
            editable="false"
            editableOptions={{}}
            format="string"
            formatOptions={{}}
            hidden="false"
            label="Description"
          />
          <Property
            id="language"
            editable="false"
            editableOptions={{}}
            format="string"
            formatOptions={{}}
            hidden="false"
            label="Language"
          />
          <Property
            id="country"
            editable="false"
            editableOptions={{}}
            format="string"
            formatOptions={{}}
            hidden="false"
            label="Country"
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
            label="Asset Development Spend"
          />
          <Property
            id="order_type"
            editable="false"
            editableOptions={{}}
            format="string"
            formatOptions={{}}
            hidden="true"
            label="Order type"
          />
          <Property
            id="date"
            editable="false"
            editableOptions={{}}
            format="datetime"
            formatOptions={{}}
            hidden="true"
            label="Date"
          />
          <Property
            id="deadline"
            editable="false"
            editableOptions={{}}
            format="datetime"
            formatOptions={{}}
            hidden="true"
            label="Deadline"
          />
          <Property
            id="deployment"
            editable="false"
            editableOptions={{}}
            format="json"
            formatOptions={{}}
            hidden="true"
            label="Deployment"
          />
          <Property
            id="status"
            editable="false"
            editableOptions={{}}
            format="string"
            formatOptions={{}}
            hidden="true"
            label="Status"
          />
          <Property
            id="aid"
            editable="false"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            hidden="true"
            label="Aid"
          />
        </KeyValue>
        <Button id="button1" text="Reorder Asset">
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="update"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </View>
    </Container>
    <Include src="./container2.rsx" />
    <Text
      id="text1"
      horizontalAlign="right"
      value="Total Orders: {{ order_id_count.data.count }}"
      verticalAlign="center"
    />
    <Text
      id="text5"
      value="{{ current_user.groups.name }}"
      verticalAlign="center"
    />
  </Frame>
</Screen>
