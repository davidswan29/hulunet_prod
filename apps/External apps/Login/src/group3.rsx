<Container
  id="group3"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  margin="0px"
  padding="0px"
  showBody={true}
  showBorder={false}
  style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
>
  <View id="4a360" viewKey="View 1">
    <Text
      id="text5"
      value="## Sign up
Register to the Dan Flashes retail portal."
      verticalAlign="center"
    />
    <Spacer id="spacer13" />
    <TextInput
      id="SignupEmail"
      iconBefore="bold/mail-send-envelope"
      label="Email"
      labelPosition="top"
      placeholder="you@example.com"
    />
    <Spacer id="spacer9" />
    <Select
      id="SelectBranch"
      captionByIndex="{{ item.location }}"
      data="{{ get_branches.data }}"
      emptyMessage="No options"
      label="Find your branch"
      labelPosition="top"
      labels="{{ item.branch_name }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{ item.branch_id }}"
    />
    <Spacer id="spacer16" />
    <Button
      id="SignupButton"
      disabled={'{{!SignupEmail.value.endsWith("@retool.com") }}'}
      style={{ ordered: [{ label: "rgba(255, 255, 255, 1)" }] }}
      submitTargetId=""
      text="Sign up"
      tooltipText="Please enter a valid Retool email"
    >
      <Event
        enabled=""
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="sendInvite"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled=""
        event="click"
        method="showNextVisibleView"
        params={{ ordered: [] }}
        pluginId="MainContainer"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Spacer id="spacer15" />
    <Link
      id="link3"
      margin="0"
      showUnderline="never"
      text="Sign in"
      textSize="default"
    >
      <Event
        event="click"
        method="setCurrentViewIndex"
        params={{ ordered: [{ viewIndex: "0" }] }}
        pluginId="MainContainer"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Link>
    <Text
      id="text6"
      horizontalAlign="right"
      margin="0 4px"
      value="Already have an account?"
      verticalAlign="center"
    />
  </View>
</Container>
