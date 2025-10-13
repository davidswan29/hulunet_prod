<Screen
  id="page3"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title="Admin"
  urlSlug="page3"
  uuid="d2343ee1-c840-4062-a9f0-98fc19e9a92d"
>
  <Frame
    id="$main4"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Container
      id="container4"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
      style={{ ordered: [{ background: "canvas" }, { border: "canvas" }] }}
    >
      <Header>
        <Text
          id="containerTitle4"
          value="#### Current User Details

"
          verticalAlign="center"
        />
      </Header>
      <View id="27e6a" viewKey="View 1">
        <KeyValue
          id="keyValue4"
          data="{
 Name: {{ current_user.fullName }},
  Groups: {{current_user.groups.map(group => group.name)}},
  email: {{ current_user.email }}
  
}"
          editIcon="bold/interface-edit-pencil"
          enableSaveActions={true}
          groupLayout="singleColumn"
          labelWrap={true}
        >
          <Property
            id="Name"
            editable="false"
            editableOptions={{}}
            format="string"
            formatOptions={{}}
            hidden="false"
            label="Name"
          />
          <Property
            id="email"
            editable="false"
            editableOptions={{}}
            format="email"
            formatOptions={{}}
            hidden="false"
            label="Email"
          />
          <Property
            id="Groups"
            editable="false"
            editableOptions={{}}
            format="tags"
            formatOptions={{ automaticColors: true }}
            hidden="false"
            label="Groups"
          />
        </KeyValue>
        <Button id="button5" iconBefore="bold/interface-edit-write-1">
          <Event
            event="click"
            method="openUrl"
            params={{
              ordered: [{ url: "https://hulunet.retool.com/settings/users" }],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </View>
    </Container>
    <Button
      id="button3"
      style={{ ordered: [{ background: "surfacePrimary" }] }}
      text="User Tasks"
    >
      <Event
        event="click"
        method="openUrl"
        params={{
          ordered: [
            {
              url: "https://hulunet.retool.com/apps/f4b74f9e-e3f9-11ef-ade6-c38930de18eb/User%20task%20-%20hulunet%20-%20f3667dfb-942c-49c5-9dc6-306998bffc1f/defaultPage",
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button4"
      style={{ ordered: [{ background: "surfacePrimary" }] }}
      text="Workflow"
    >
      <Event
        event="click"
        method="openUrl"
        params={{
          ordered: [
            {
              url: "https://hulunet.retool.com/workflows/4542ea74-0c6a-4247-ac47-15d2d9eb44a5",
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Frame>
</Screen>
