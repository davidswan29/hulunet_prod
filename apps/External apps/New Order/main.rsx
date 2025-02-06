<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      isGlobalWidgetContainer={true}
    >
      <Form
        id="form1"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        padding="12px"
        requireValidation={true}
        resetAfterSubmit={true}
        showBody={true}
        showFooter={true}
        showHeader={true}
        style={{ ordered: [{ border: "surfacePrimary" }] }}
      >
        <Header>
          <Text id="formTitle1" value="#### New Order" verticalAlign="center" />
        </Header>
        <Body>
          <Select
            id="select1"
            data="{{ asset.data }}"
            emptyMessage="No options"
            hideLabel={true}
            imageByIndex="{{ item.media }}"
            label="Asset"
            labels="{{ item.name }}"
            overlayMaxHeight={375}
            placeholder="Select from Asset Library"
            showSelectionIndicator={true}
            values="{{ item.aid }}"
          />
          <Image
            id="image1"
            heightType="fixed"
            horizontalAlign="center"
            src="{{select1.selectedItem.media}}"
          />
          <TextInput
            id="textInput2"
            label=""
            placeholder="If New, add Asset ID"
            value="{{ select1.selectedItem.aid }}"
          />
          <Select
            id="select2"
            data="{{ order_type.data }}"
            emptyMessage="No options"
            hideLabel={true}
            imageByIndex=""
            label="Order Type"
            labels=""
            overlayMaxHeight={375}
            placeholder="Select Order Type"
            showSelectionIndicator={true}
            values="{{ item.initcap }}"
          >
            <Option
              id="ce2ab"
              disabled={false}
              hidden={false}
              value="Option 1"
            />
          </Select>
          <TextInput id="textInput1" label="" placeholder="Order Manager" />
          <Date
            id="date1"
            dateFormat="MMM d, yyyy"
            datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
            hideLabel={true}
            iconBefore="bold/interface-calendar"
            label="Deadline"
            value="{{ new Date() }}"
          />
          <TextArea
            id="textArea1"
            autoResize={true}
            hideLabel={true}
            label="Order Description"
            labelPosition="top"
            minLines={2}
            placeholder="Order Description"
          />
        </Body>
        <Footer>
          <Button
            id="formButton1"
            style={{ ordered: [{ border: "rgb(142, 172, 210)" }] }}
            submit={true}
            submitTargetId="form1"
            text="Submit"
          />
        </Footer>
        <Event
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="insert"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="query7"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
    </ModuleContainerWidget>
  </Frame>
</App>
