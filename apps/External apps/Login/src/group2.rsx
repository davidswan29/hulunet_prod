<Container
  id="group2"
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
      id="text1"
      value="## Welcome back
Sign into your Hulunet account."
      verticalAlign="center"
    />
    <Spacer id="spacer5" />
    <TextInput
      id="LoginEmail"
      hidden=""
      iconBefore="bold/mail-send-envelope"
      label="Email"
      labelPosition="top"
      patternType="email"
      placeholder="you@example.com"
    />
    <Spacer id="spacer1" />
    <PasswordInput
      id="Password"
      label="Password"
      labelPosition="top"
      placeholder="••••••••••"
      showTextToggle={true}
    />
    <Spacer id="spacer2" />
    <Link
      id="link2"
      horizontalAlign="right"
      showUnderline="hover"
      text="Forgot password?"
      textSize="default"
    />
    <Spacer id="spacer6" />
    <Button
      id="button1"
      disabled=""
      style={{
        ordered: [
          { label: "rgba(255, 255, 255, 1)" },
          { background: "#063e4e" },
        ],
      }}
      text="Sign in"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="login"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Spacer id="spacer3" />
    <Divider
      id="divider1"
      style={{ ordered: [{ text: "rgba(109, 109, 109, 1)" }] }}
      text="or"
      textSize="default"
    />
    <Spacer id="spacer4" />
    <Button id="button2" styleVariant="outline" text="Sign in with SSO">
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="query2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Spacer id="spacer7" />
    <Text
      id="text4"
      horizontalAlign="right"
      margin="0 4px"
      value="New here?"
      verticalAlign="center"
    />
    <Link
      id="link4"
      margin="0"
      showUnderline="never"
      text="Sign up"
      textSize="default"
    >
      <Event
        event="click"
        method="setCurrentViewIndex"
        params={{ ordered: [{ viewIndex: "1" }] }}
        pluginId="MainContainer"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Link>
  </View>
</Container>
