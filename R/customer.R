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
#' customerUI()
customerUI <- function(tabTitle ='客户往来',
                         colTitles =c('操作区域','操作区域','显示区域'),
                         widthRates =c(6,6,12),
                         func_left = customerUI_left,
                         func_right =customerUI_right,
                         func_bottom = customerUI_bottom
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
#' customerUI_left()
customerUI_left <- function() {
  
  
  res <- tagList(
    tsui::layout_2C(x = tsui::mdl_text(id = 'txt_customer_FCustName',label = '请输入客户名称',value = 'ZANHANG S.A.'),
                    y=NULL
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
#' customerUI_bottom()
customerUI_right <- function() {
  res <- tagList(
    shinyWidgets::actionBttn(inputId = 'dl_saleOrderTable_customer_query',label = '客户往来')
    
    
  )
  return(res)
  
}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' customerUI_bottom()
customerUI_bottom <- function() {
  res <- tagList(
    tsui::uiScrollX(tsui::mdl_dataTable(id = 'dt_saleOrderTable_customer_query',label = '结果显示'))
  )
  return(res)
  
}
