<Screen
  id="defaultPage"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title="Default Page"
  urlSlug=""
>
  <RetoolUserActionQuery
    id="getUserTasks"
    actionCategory="userTask"
    actionType="get_tasks"
    endingBefore=""
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    resourceName="RetoolUserAction"
    resourceTypeOverride=""
    runWhenPageLoads={true}
    selectedUserTaskDefinitionIds={'["f3667dfb-942c-49c5-9dc6-306998bffc1f"]'}
    selectedUserTaskName=""
    selectedWorkflowIds={'["4542ea74-0c6a-4247-ac47-15d2d9eb44a5"]'}
    startingAfter=""
    taskName=""
    transformer="// Query results are available as the data variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <RetoolUserActionQuery
    id="getSingleUserTask"
    actionCategory="userTask"
    actionType="get_task"
    enableTransformer={true}
    endingBefore=""
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    queryDisabled="{{ urlparams.hash.userTaskId === undefined }}"
    resourceName="RetoolUserAction"
    resourceTypeOverride=""
    runWhenPageLoads={true}
    selectedUserTaskName=""
    startingAfter=""
    taskName=""
    transformer="// Query results are available as the data variable
return data"
    userTaskInstanceId="{{ urlparams.hash.userTaskId }}"
    watchedParams={["urlparams.hash.userTaskId"]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <RetoolUserActionQuery
    id="submitUserTask"
    actionCategory="userTask"
    actionType="complete_task"
    endingBefore=""
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    outputPayload={'{ "approved": {{ checkbox1.value }} }'}
    resourceName="RetoolUserAction"
    resourceTypeOverride=""
    selectedUserTaskName=""
    startingAfter=""
    taskName=""
    transformer="// Query results are available as the data variable
return data"
    userTaskInstanceId="{{ table1.selectedRow.id }}"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getUserTasks"
      type="datasource"
      waitMs="500"
      waitType="debounce"
    />
  </RetoolUserActionQuery>
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Table
      id="table1"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getUserTasks.data.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: "" }}
      emptyMessage="No tasks exist yet. Run the workflow to create one."
      enableSaveActions={true}
      primaryKeyColumnId="c3bc1"
      rowHeight="small"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="c3bc1"
        alignment="left"
        editable={false}
        format="string"
        groupAggregationMode="none"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={133}
        summaryAggregationMode="none"
      />
      <Column
        id="7cfe8"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="taskName"
        label="Task name"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="af236"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="workflowName"
        label="Workflow name"
        placeholder="Select option"
        position="center"
        size={111}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="37c1a"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="status"
        label="Status"
        optionList={{
          manualData: [
            {
              ordered: [
                { value: "Submitted" },
                { color: "rgb(167, 243, 208)" },
              ],
            },
            {
              ordered: [
                { value: "Expired\n" },
                { color: "rgb(253, 230, 138)" },
              ],
            },
            {
              ordered: [
                { value: "Cancelled\n" },
                { color: "rgb(254, 202, 202)" },
              ],
            },
            {
              ordered: [{ value: "Pending" }, { color: "rgb(238, 207, 243)" }],
            },
          ],
        }}
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="68d9c"
        alignment="left"
        backgroundColor="{{ theme.surfacePrimary }}"
        cellTooltipMode="overflow"
        format="json"
        groupAggregationMode="none"
        key="context"
        label="Task context"
        placeholder="Enter value"
        position="center"
        size={181}
        summaryAggregationMode="none"
      />
      <Column
        id="fae99"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="createdAt"
        label="Created at"
        placeholder="Enter value"
        position="center"
        size={172}
        summaryAggregationMode="none"
      />
      <Column
        id="4e538"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="workflowRelease"
        label="Workflow release"
        placeholder="Enter value"
        position="center"
        size={140}
        summaryAggregationMode="none"
      />
      <Column
        id="5f1e6"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        groupAggregationMode="none"
        key="userTaskLink"
        label="Task URL"
        placeholder="Enter value"
        position="center"
        size={149}
        summaryAggregationMode="none"
      />
      <Column
        id="df9dd"
        alignment="left"
        format="json"
        groupAggregationMode="none"
        key="output"
        label="Task output"
        placeholder="Enter value"
        position="center"
        size={231}
        summaryAggregationMode="none"
      />
      <Column
        id="a2645"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="completedAt"
        label="Completed at"
        placeholder="Enter value"
        position="center"
        size={169}
        summaryAggregationMode="none"
      />
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
          pluginId="table1"
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
          pluginId="table1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Form
      id="form1"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
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
          value="#### Submit User Task"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <Text id="text1" value="**Task Output:**" verticalAlign="center" />
        <Checkbox id="checkbox1" label="Approved" labelWidth="100" />
        <Text
          id="text2"
          horizontalAlign="right"
          value="Submit Unchecked to Deny the Order"
          verticalAlign="center"
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
        pluginId="submitUserTask"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Frame>
</Screen>
