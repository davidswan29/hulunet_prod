<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title="Metrics"
  urlSlug=""
  uuid="72648d6a-0e71-450b-8f05-2ac74c672c61"
>
  <SqlQueryUnified
    id="orderCount"
    isHidden={false}
    isMultiplayerEdited={false}
    query={include("../lib/orderCount.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="072dd6a3-2d41-4c86-95c9-d6c6021cd0f3"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="assetCount"
    isHidden={false}
    isMultiplayerEdited={false}
    query={include("../lib/assetCount.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="072dd6a3-2d41-4c86-95c9-d6c6021cd0f3"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="query9"
    isHidden={false}
    query={include("../lib/query9.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="072dd6a3-2d41-4c86-95c9-d6c6021cd0f3"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="userCount"
    isHidden={false}
    isMultiplayerEdited={false}
    query={include("../lib/userCount.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="072dd6a3-2d41-4c86-95c9-d6c6021cd0f3"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="query11"
    isHidden={false}
    query={include("../lib/query11.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="072dd6a3-2d41-4c86-95c9-d6c6021cd0f3"
    warningCodes={[]}
  />
  <Frame
    id="$main2"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Container
      id="tabbedContainer1"
      currentViewKey="{{ self.viewKeys[0] }}"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
      style={{ ordered: [{ background: "canvas" }] }}
    >
      <Header>
        <Tabs
          id="tabs1"
          itemMode="static"
          navigateContainer={true}
          style={{
            ordered: [
              { selectedBackground: "surfacePrimary" },
              { unselectedText: "#000000" },
            ],
          }}
          targetContainerId="tabbedContainer1"
          value="{{ self.values[0] }}"
        >
          <Option id="63f17" value="Tab 1" />
          <Option id="26e1c" value="Tab 2" />
          <Option id="16b2c" value="Tab 3" />
        </Tabs>
      </Header>
      <View id="7e7bc" label="Orders over Time" viewKey="View 1">
        <Chart
          id="lineChart2"
          barMode="group"
          barOrientation=""
          chartType="line"
          legendPosition="none"
          selectedPoints="[]"
          stackedBarTotalsDataLabelPosition="none"
          style={{
            plotBackgroundColor: "canvas",
            componentBackgroundColor: "rgba(142, 171, 209, 0)",
          }}
          title={null}
          xAxisLineWidth={1}
          xAxisRangeMax=""
          xAxisRangeMin=""
          xAxisShowLine={true}
          xAxisShowTickLabels={true}
          xAxisTickFormatMode="gui"
          xAxisTitleStandoff={20}
          yAxis2LineWidth={1}
          yAxis2RangeMax=""
          yAxis2RangeMin=""
          yAxis2ShowTickLabels={true}
          yAxis2TickFormatMode="gui"
          yAxis2TitleStandoff={20}
          yAxisGrid={true}
          yAxisLineWidth={1}
          yAxisRangeMax=""
          yAxisRangeMin=""
          yAxisShowTickLabels={true}
          yAxisTickFormatMode="gui"
          yAxisTitleStandoff={20}
        >
          <Series
            id="0"
            aggregationType="none"
            colorArray={{ array: [null] }}
            colorArrayDropDown={{ array: [null] }}
            colorInputMode="colorArrayDropDown"
            connectorLineColor="#000000"
            dataLabelPosition="none"
            datasource="{{ orderCount.data }}"
            datasourceMode="source"
            decreasingBorderColor="{{ theme.danger }}"
            decreasingColor="{{ theme.danger }}"
            filteredGroups={null}
            filteredGroupsMode="source"
            gradientColorArray={{
              array: [
                { array: ["0.0", "{{ theme.success }}"] },
                { array: ["1.0", "{{ theme.primary }}"] },
              ],
            }}
            groupBy={{ array: [] }}
            groupByDropdownType="source"
            groupByStyles={{}}
            hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateMode="source"
            increasingBorderColor="{{ theme.success }}"
            increasingColor="{{ theme.success }}"
            lineColor="{{ theme.surfacePrimary }}"
            lineDash="solid"
            lineShape="spline"
            lineUnderFillMode="gradient"
            lineWidth={2}
            markerBorderColor={null}
            markerBorderWidth={0}
            markerColor="{{ theme.primary }}"
            markerSize={6}
            markerSymbol="circle"
            name="Ordercount - count"
            showMarkers={false}
            textTemplate={null}
            textTemplateMode="manual"
            type="line"
            waterfallBase={0}
            waterfallMeasures={null}
            waterfallMeasuresMode="source"
            xData="{{ orderCount.data.y }}"
            xDataMode="source"
            yAxis="y"
            yData="{{ orderCount.data.count }}"
            yDataMode="source"
            zData={null}
            zDataMode="manual"
          />
        </Chart>
      </View>
      <View id="5af72" label="Orders by User" viewKey="View 2">
        <Chart
          id="lineChart3"
          barMode="group"
          barOrientation=""
          chartType="line"
          legendPosition="none"
          selectedPoints="[]"
          stackedBarTotalsDataLabelPosition="none"
          style={{ plotBackgroundColor: "rgba(142, 172, 210, 0)" }}
          title={null}
          xAxisLineWidth={1}
          xAxisRangeMax=""
          xAxisRangeMin=""
          xAxisShowLine={true}
          xAxisShowTickLabels={true}
          xAxisTickFormatMode="gui"
          xAxisTitleStandoff={20}
          yAxis2LineWidth={1}
          yAxis2RangeMax=""
          yAxis2RangeMin=""
          yAxis2ShowTickLabels={true}
          yAxis2TickFormatMode="gui"
          yAxis2TitleStandoff={20}
          yAxisGrid={true}
          yAxisLineWidth={1}
          yAxisRangeMax=""
          yAxisRangeMin=""
          yAxisShowTickLabels={true}
          yAxisTickFormatMode="gui"
          yAxisTitleStandoff={20}
        >
          <Series
            id="0"
            aggregationType="sum"
            colorArray={{ array: [null] }}
            colorArrayDropDown={{ array: [null] }}
            colorInputMode="colorArrayDropDown"
            connectorLineColor="#000000"
            dataLabelPosition="none"
            datasource="{{ userCount.data }}"
            datasourceMode="source"
            decreasingBorderColor="{{ theme.danger }}"
            decreasingColor="{{ theme.danger }}"
            filteredGroups={null}
            filteredGroupsMode="source"
            gradientColorArray={{
              array: [
                { array: ["0.0", "{{ theme.success }}"] },
                { array: ["1.0", "{{ theme.primary }}"] },
              ],
            }}
            groupBy={{ array: [] }}
            groupByDropdownType="source"
            groupByStyles={{}}
            hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateMode="source"
            increasingBorderColor="{{ theme.success }}"
            increasingColor="{{ theme.success }}"
            lineColor="{{ theme.primary }}"
            lineDash="solid"
            lineShape="spline"
            lineUnderFillMode="gradient"
            lineWidth={2}
            markerBorderColor="#ffffff"
            markerBorderWidth="3"
            markerColor="{{ theme.surfacePrimary }}"
            markerSize={6}
            markerSymbol="circle"
            name="Ordercount - count"
            showMarkers={false}
            textTemplate={null}
            textTemplateMode="manual"
            type="bar"
            waterfallBase={0}
            waterfallMeasures={null}
            waterfallMeasuresMode="source"
            xData="{{ userCount.data.y }}"
            xDataMode="source"
            yAxis="y"
            yData="{{ userCount.data.count }}"
            yDataMode="source"
            zData={null}
            zDataMode="manual"
          />
        </Chart>
      </View>
      <View
        id="c1a56"
        label="Spend over Time
"
        viewKey="View 3"
      >
        <Chart
          id="lineChart4"
          barMode="group"
          barOrientation=""
          chartType="line"
          legendPosition="none"
          selectedPoints="[]"
          stackedBarTotalsDataLabelPosition="none"
          title={null}
          xAxisLineWidth={1}
          xAxisRangeMax=""
          xAxisRangeMin=""
          xAxisShowLine={true}
          xAxisShowTickLabels={true}
          xAxisTickFormatMode="gui"
          xAxisTitleStandoff={20}
          yAxis2LineWidth={1}
          yAxis2RangeMax=""
          yAxis2RangeMin=""
          yAxis2ShowTickLabels={true}
          yAxis2TickFormatMode="gui"
          yAxis2TitleStandoff={20}
          yAxisGrid={true}
          yAxisLineWidth={1}
          yAxisRangeMax=""
          yAxisRangeMin=""
          yAxisShowTickLabels={true}
          yAxisTickFormat="$,.0f"
          yAxisTickFormatMode="gui"
          yAxisTitleStandoff={20}
        >
          <Series
            id="0"
            aggregationType="sum"
            colorArray={{ array: [null] }}
            colorArrayDropDown={{ array: [null] }}
            colorInputMode="colorArrayDropDown"
            connectorLineColor="#000000"
            dataLabelPosition="none"
            datasource="{{ query11.data }}"
            datasourceMode="source"
            decreasingBorderColor="{{ theme.danger }}"
            decreasingColor="{{ theme.danger }}"
            filteredGroups={null}
            filteredGroupsMode="source"
            gradientColorArray={{
              array: [
                { array: ["0.0", "{{ theme.success }}"] },
                { array: ["1.0", "{{ theme.primary }}"] },
              ],
            }}
            groupBy={{ array: [] }}
            groupByDropdownType="source"
            groupByStyles={{}}
            hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateMode="source"
            increasingBorderColor="{{ theme.success }}"
            increasingColor="{{ theme.success }}"
            lineColor="{{ theme.surfacePrimary }}"
            lineDash="solid"
            lineShape="spline"
            lineUnderFillMode="gradient"
            lineWidth={2}
            markerBorderColor={null}
            markerBorderWidth={0}
            markerColor="{{ theme.primary }}"
            markerSize={6}
            markerSymbol="circle"
            name="Query11 - aid"
            showMarkers={false}
            textTemplate={null}
            textTemplateMode="manual"
            type="line"
            waterfallBase={0}
            waterfallMeasures={null}
            waterfallMeasuresMode="source"
            xData="{{ query11.data.date }}"
            xDataMode="source"
            yAxis="y"
            yData="{{ query11.data.spend }}"
            yDataMode="source"
            zData={null}
            zDataMode="manual"
          />
        </Chart>
      </View>
    </Container>
  </Frame>
</Screen>
