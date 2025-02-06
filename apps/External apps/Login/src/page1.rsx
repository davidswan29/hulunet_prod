<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  title="Page 1"
  urlSlug=""
>
  <RetoolUserActionQuery
    id="query1"
    email="{{ LoginEmail.value }}"
    isHidden={false}
    password="{{ Password.value }}"
    resourceName="RetoolUserAction"
  >
    <Event
      event="success"
      method="openUrl"
      params={{
        ordered: [
          { url: '"/"' },
          { options: { ordered: [{ newTab: false }] } },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </RetoolUserActionQuery>
  <RetoolUserActionQuery
    id="query2"
    loginMethod="oidc_sso"
    resourceName="RetoolUserAction"
  />
  <Include src="./splitPaneFrame1.rsx" />
  <Frame
    id="$main"
    enableFullBleed={true}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    style={{ ordered: [{ canvas: "rgb(64, 74, 133)" }] }}
    type="main"
  >
    <Container
      id="group1"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      padding="{{((viewport.height -600) / 2)-80}}px {{0.5*viewport.width < 600 ? 8:( (viewport.width*.5) -600 )/2}}px"
      showBody={true}
      showBorder={false}
      style={{ ordered: [{ background: "rgba(6, 62, 78, 1)" }] }}
    >
      <View id="e9713" viewKey="View 1">
        <Image
          id="image1"
          fit="contain"
          heightType="fixed"
          horizontalAlign="center"
          margin="0"
          retoolStorageFileId="506a0585-f0e3-4190-87f8-32649c8b810c"
          src="https://picsum.photos/id/1025/800/600"
          srcType="retoolStorageFileId"
        />
      </View>
    </Container>
  </Frame>
</Screen>
