#' 嘉好对账单-日期组织
#'
#' @param colTitles  主页标题
#' @param widthRates 左右比例
#' @param func_left 左函数
#' @param func_right 右函数
#' @param tabTitle 标题
#' @param func_bottom  下面一栏
#'
#' @return 返回值
#' @import tsui
#' @export
#'
#' @examples
#' researchUI()
researchUI <- function(tabTitle ='研发订单',
                       colTitles =c('操作区域','操作区域','显示区域'),
                       widthRates =c(6,6,12),
                       func_left = researchUI_left,
                       func_right =researchUI_right,
                       func_bottom = researchUI_bottom
) {
  
  #三栏式设置，可以复制
  res = tsui::uiGen3(tabTitle = tabTitle,colTitles =colTitles,widthRates = widthRates,func_left = func_left,func_right = func_right,func_bottom = func_bottom )
  return(res)
  
}





#' 请输入文件
#'
#' @return 返回值
#' @export
#'
#' @examples
#' researchUI_left()
researchUI_left <- function() {
  
  
  res <- tagList(
    tsui::layout_2C(x = tsui::mdl_text(id = 'txt_research_FBillNO',label = '请输入单据编号',value = 'XSDD-100-230818-001'),
                    y=tsui::mdl_text(id = 'txt_research_FRdNumber',label = '请输入项目号',value = '')
    )
    
    
  )
  return(res)
  
}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' researchUI_bottom()
researchUI_right <- function() {
  res <- tagList(
    shinyWidgets::actionBttn(inputId = 'dl_saleOrderTable_research_query',label = '研发订单')
    
    
  )
  return(res)
  
}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' researchUI_bottom()
researchUI_bottom <- function() {
  res <- tagList(
    tsui::uiScrollX(tsui::mdl_dataTable(id = 'dt_saleOrderTable_research_query',label = '结果显示'))
  )
  return(res)
  
}
