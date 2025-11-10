<SidebarFrame
  id="sidebarFrame1"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  isHiddenOnMobile={true}
  padding="8px 12px"
  showFooter={true}
  width="large"
>
  <Header>
    <Icon id="icon1" horizontalAlign="center" />
  </Header>
  <Body>
    <Navigation
      id="navigation2"
      data="{{ retoolContext.pages }}"
      hidden=""
      hiddenByIndex=""
      highlightByIndex="{{ retoolContext.currentPage === item.id }}"
      labels="{{ item.title || item.id }}"
      orientation="vertical"
      src="https://cdn-icons-png.flaticon.com/512/1600/1600951.png"
      style={{ ordered: [{ color: "#ffffff" }] }}
    >
      <Option id="d8af7" icon="bold/interface-home-3" label="Home" />
      <Option
        id="a961f"
        icon="bold/interface-user-multiple"
        label="Customers"
      />
      <Option id="18c54" icon="bold/interface-setting-cog" label="Settings" />
      <Event
        event="click"
        method="openPage"
        params={{ ordered: [{ pageName: "{{ item.id }}" }] }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Navigation>
  </Body>
  <Footer>
    <Avatar
      id="avatar1"
      fallback="{{ current_user.fullName }}"
      imageSize={32}
      label="{{ current_user.fullName }}"
      labelCaption="{{ current_user.email }}"
      margin="4px 4px"
      src="{{ current_user.profilePhotoUrl }}"
      style={{ ordered: [{ background: "automatic" }] }}
    />
  </Footer>
</SidebarFrame>
