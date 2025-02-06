<ModalFrame
  id="modalFrame2"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showOverlay={true}
  size="medium"
>
  <Header>
    <Text id="modalTitle2" value="### Container title" verticalAlign="center" />
    <Button
      id="modalCloseButton2"
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
        pluginId="modalFrame2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
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
    >
      <Header>
        <Text
          id="formTitle1"
          value="#### Asset Order Form"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <TextInput
          id="textInput4"
          label="Asset"
          labelPosition="top"
          placeholder="Enter value"
          value="{{ table3.selectedRow.name }}"
        />
        <Image
          id="image3"
          heightType="fixed"
          horizontalAlign="center"
          src="{{table3.selectedRow.Media}}"
        />
        <Select
          id="select1"
          data="{{ orderType.data }}"
          emptyMessage="No options"
          label="Order Type"
          labelPosition="top"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          values="{{ item.order_type }}"
        />
        <TextInput
          id="textInput3"
          label="Ordered By"
          labelPosition="top"
          placeholder="Enter value"
          value="{{ current_user.fullName }}"
        />
        <Date
          id="date1"
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          iconBefore="bold/interface-calendar"
          label="Deadline"
          labelPosition="top"
          value="{{ new Date() }}"
        />
        <TextArea
          id="textArea1"
          autoResize={true}
          label="Order Description"
          labelPosition="top"
          minLines={2}
          placeholder="Enter value"
        />
      </Body>
      <Footer>
        <Button
          id="formButton1"
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
    </Form>
  </Body>
</ModalFrame>
