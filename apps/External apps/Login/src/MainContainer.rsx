<Container
  id="MainContainer"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="80px"
  showBody={true}
  showBorder={false}
  showFooter={true}
  style={{ ordered: [] }}
  transition="slide"
>
  <Header>
    <Text id="containerTitle1" value="New to Company?" verticalAlign="center" />
  </Header>
  <View id="33245" viewKey="Login">
    <Include src="./group2.rsx" />
  </View>
  <View
    id="b7da0"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="Signup"
  >
    <Include src="./group3.rsx" />
  </View>
  <View
    id="c70a6"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="Confirm email"
  >
    <Container
      id="group4"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0px"
      padding="0px"
      showBody={true}
      showBorder={false}
      style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
    >
      <View id="4a360" viewKey="View 1">
        <Image
          id="image2"
          horizontalAlign="center"
          retoolStorageFileId="164d3384-8a09-47ca-900e-37a526ca1a67"
          src="https://picsum.photos/id/1025/800/600"
          srcType="retoolStorageFileId"
        />
        <Text
          id="text7"
          value="## All set!
We've sent you an email to confirm your account."
          verticalAlign="center"
        />
      </View>
    </Container>
  </View>
  <Footer>
    <Text
      id="text2"
      horizontalAlign="right"
      style={{ ordered: [{ color: "rgba(77, 77, 77, 1)" }] }}
      value="© Company, Inc. ‎ ‎ ‎ [Terms]() ‎ ‎ ‎  [Privacy ]()"
      verticalAlign="center"
    />
    <Spacer id="spacer8" />
  </Footer>
</Container>
