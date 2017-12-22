let canvas
let number
const grid = 30
const backgroundColor = '#f8f8f8'
const lineStroke = '#ebebeb'
const tableFill = 'rgba(500, 0, 0, 0.7)'
const tableFillReserved = 'rgba(0, 200, 0, 0.7)'
const tableFillUnavailable = 'rgba(500, 0, 0, 0.7)'
const tableFillAvailable = 'rgba(192, 192, 192, 0.7)'
const tableStroke = '#694d23'
const tableShadow = 'rgba(0, 0, 0, 0.4) 3px 3px 7px'
const chairFill = 'rgba(67, 42, 4, 0.7)'
const chairStroke = '#32230b'
const chairShadow = 'rgba(0, 0, 0, 0.4) 3px 3px 7px'
const barFill = 'rgba(0, 93, 127, 0.7)'
const barStroke = '#003e54'
const barShadow = 'rgba(0, 0, 0, 0.4) 3px 3px 7px'
const barText = 'Bar'
const wallFill = 'rgba(136, 136, 136, 0.7)'
const wallStroke = '#686868'
const wallShadow = 'rgba(0, 0, 0, 0.4) 5px 5px 20px'

let widthEl = document.getElementById('width')
let heightEl = document.getElementById('height')
let canvasEl = document.getElementById('canvas')

function initCanvas() {
  if (canvas) {
    canvas.clear()
    canvas.dispose()
  }

  canvas = new fabric.Canvas('canvas')
  number = 1
  canvas.backgroundColor = backgroundColor

  for (let i = 0; i < (canvas.height / grid); i++) {
    const lineX = new fabric.Line([ 0, i * grid, canvas.height, i * grid], {
      stroke: lineStroke,
      selectable: false,
      type: 'line'
    })
    const lineY = new fabric.Line([ i * grid, 0, i * grid, canvas.height], {
      stroke: lineStroke,
      selectable: false,
      type: 'line'
    })
    sendLinesToBack()
    canvas.add(lineX)
    canvas.add(lineY)
  }

  canvas.on('object:moving', function(e) {
    snapToGrid(e.target)
  })

  canvas.on('object:scaling', function(e) {
    if (e.target.scaleX > 5) {
      e.target.scaleX = 5
    }
    if (e.target.scaleY > 5) {
      e.target.scaleY = 5
    }
    if (!e.target.strokeWidthUnscaled && e.target.strokeWidth) {
      e.target.strokeWidthUnscaled = e.target.strokeWidth
    }
    if (e.target.strokeWidthUnscaled) {
      e.target.strokeWidth = e.target.strokeWidthUnscaled / e.target.scaleX
      if (e.target.strokeWidth === e.target.strokeWidthUnscaled) {
          e.target.strokeWidth = e.target.strokeWidthUnscaled / e.target.scaleY
      }
    }
  })

  canvas.on('object:modified', function(e) {
    e.target.scaleX = e.target.scaleX >= 0.25 ? (Math.round(e.target.scaleX * 2) / 2) : 0.5
    e.target.scaleY = e.target.scaleY >= 0.25 ? (Math.round(e.target.scaleY * 2) / 2) : 0.5
    snapToGrid(e.target)
    if (e.target.type === 'table') {
      canvas.bringToFront(e.target)
    }
    else {
      canvas.sendToBack(e.target)
    }
    sendLinesToBack()
  })

  canvas.observe('object:moving', function (e) {
    checkBoudningBox(e)
  })
  canvas.observe('object:rotating', function (e) {
    checkBoudningBox(e)
  })
  canvas.observe('object:scaling', function (e) {
    checkBoudningBox(e)
  })
}
initCanvas()

function resizeCanvas() {
  widthEl = document.getElementById('width')
  heightEl = document.getElementById('height')
  canvasEl.width = widthEl.value ? widthEl.value : 302
  canvasEl.height = heightEl.value ? heightEl.value : 812
  const canvasContainerEl = document.querySelectorAll('.canvas-container')[0]
  canvasContainerEl.style.width = canvasEl.width
  canvasContainerEl.style.height = canvasEl.height
}
resizeCanvas()

widthEl.addEventListener('change', function() {
  resizeCanvas()
  initCanvas()
  addDefaultObjects()
})
heightEl.addEventListener('change', function() {
  resizeCanvas()
  initCanvas()
  addDefaultObjects()
})

function generateId() {
  return Math.random().toString(36).substr(2, 8)
}

function addRect(left, top, width, height, tableColour, tableSelectable) {
  const id = generateId()
  const o = new fabric.Rect({
    width: width,
    height: height,
    fill: tableColour,
    stroke: tableStroke,
    strokeWidth: 2,
    shadow: tableShadow,
    originX: 'center',
    originY: 'center',
    centeredRotation: true,
    snapAngle: 45,
    selectable: true
  })
  const t = new fabric.IText(number.toString(), {
    fontFamily: 'Calibri',
    fontSize: 14,
    fill: '#fff',
    textAlign: 'center',
    originX: 'center',
    originY: 'center'
  })
  const g = new fabric.Group([o, t], {
    left: left,
    top: top,
    centeredRotation: true,
    snapAngle: 45,
    selectable: true,
    type: tableSelectable,
    id: id,
    number: number
  })
  canvas.add(g)
  number++
  return g
}

function addCircle(left, top, radius) {
  const id = generateId()
  const o = new fabric.Circle({
    radius: radius,
    fill: tableFill,
    stroke: tableStroke,
    strokeWidth: 2,
    shadow: tableShadow,
    originX: 'center',
    originY: 'center',
    centeredRotation: true
  })
  const t = new fabric.IText(number.toString(), {
    fontFamily: 'Calibri',
    fontSize: 14,
    fill: '#fff',
    textAlign: 'center',
    originX: 'center',
    originY: 'center'
  })
  const g = new fabric.Group([o, t], {
    left: left,
    top: top,
    centeredRotation: true,
    snapAngle: 45,
    selectable: true,
    type: 'table',
    id: id,
    number: number
  })
  canvas.add(g)
  number++
  return g
}

function addTriangle(left, top, radius) {
  const id = generateId()
  const o = new fabric.Triangle({
    radius: radius,
    fill: tableFill,
    stroke: tableStroke,
    strokeWidth: 2,
    shadow: tableShadow,
    originX: 'center',
    originY: 'center',
    centeredRotation: true
  })
  const t = new fabric.IText(number.toString(), {
    fontFamily: 'Calibri',
    fontSize: 14,
    fill: '#fff',
    textAlign: 'center',
    originX: 'center',
    originY: 'center'
  })
  const g = new fabric.Group([o, t], {
    left: left,
    top: top,
    centeredRotation: true,
    snapAngle: 45,
    selectable: true,
    type: 'table',
    id: id,
    number: number
  })
  canvas.add(g)
  number++
  return g
}

function addChair(left, top, width, height) {
  const o = new fabric.Rect({
    left: left,
    top: top,
    width: 30,
    height: 30,
    fill: chairFill,
    stroke: chairStroke,
    strokeWidth: 2,
    shadow: chairShadow,
    originX: 'left',
    originY: 'top',
    centeredRotation: true,
    snapAngle: 45,
    selectable: true,
    type: 'chair',
    id: generateId()
  })
  canvas.add(o)
  return o
}

function addBar(left, top, width, height) {
  const o = new fabric.Rect({
    width: width,
    height: height,
    fill: barFill,
    stroke: barStroke,
    strokeWidth: 2,
    shadow: barShadow,
    originX: 'center',
    originY: 'center',
    type: 'bar',
    id: generateId()
  })
  const t = new fabric.IText(barText, {
    fontFamily: 'Calibri',
    fontSize: 14,
    fill: '#fff',
    textAlign: 'center',
    originX: 'center',
    originY: 'center'
  })
  const g = new fabric.Group([o, t], {
    left: left,
    top: top,
    centeredRotation: true,
    snapAngle: 45,
    selectable: true,
    type: 'bar'
  })
  canvas.add(g)
  return g
}

function addWall(left, top, width, height) {
  const o = new fabric.Rect({
    left: left,
    top: top,
    width: width,
    height: height,
    fill: wallFill,
    stroke: wallStroke,
    strokeWidth: 2,
    shadow: wallShadow,
    originX: 'left',
    originY: 'top',
    centeredRotation: true,
    snapAngle: 45,
    selectable: true,
    type: 'wall',
    id: generateId()
  })
  canvas.add(o)
  return o
}

function snapToGrid(target) {
  target.set({
    left: Math.round(target.left / (grid / 2)) * grid / 2,
    top: Math.round(target.top / (grid / 2)) * grid / 2
  })
}

function checkBoudningBox(e) {
  const obj = e.target

  if (!obj) {
    return
  }
  obj.setCoords()

  const objBoundingBox = obj.getBoundingRect()
  if (objBoundingBox.top < 0) {
    obj.set('top', 0)
    obj.setCoords()
  }
  if (objBoundingBox.left > canvas.width - objBoundingBox.width) {
    obj.set('left', canvas.width - objBoundingBox.width)
    obj.setCoords()
  }
  if (objBoundingBox.top > canvas.height - objBoundingBox.height) {
    obj.set('top', canvas.height - objBoundingBox.height)
    obj.setCoords()
  }
  if (objBoundingBox.left < 0) {
    obj.set('left', 0)
    obj.setCoords()
  }
}

function sendLinesToBack() {
  canvas.getObjects().map(function(o) {
    if (o.type === 'line') {
      canvas.sendToBack(o)
    }
  })
}

document.querySelectorAll('.rectangle')[0].addEventListener('click', function() {
  const o = addRect(0, 0, 60, 60)
  canvas.setActiveObject(o)
})

document.querySelectorAll('.circle')[0].addEventListener('click', function() {
  const o = addCircle(0, 0, 30)
  canvas.setActiveObject(o)
})

document.querySelectorAll('.triangle')[0].addEventListener('click', function() {
  const o = addTriangle(0, 0, 30)
  canvas.setActiveObject(o)
})

document.querySelectorAll('.chair')[0].addEventListener('click', function() {
  const o = addChair(0, 0)
  canvas.setActiveObject(o)
})

document.querySelectorAll('.bar')[0].addEventListener('click', function() {
  const o = addBar(0, 0, 180, 60)
  canvas.setActiveObject(o)
})

document.querySelectorAll('.wall')[0].addEventListener('click', function() {
  const o = addWall(0, 0, 60, 180)
  canvas.setActiveObject(o)
})

document.querySelectorAll('.remove')[0].addEventListener('click', function() {
  const o = canvas.getActiveObject()
  if (o) {
    o.remove()
    canvas.remove(o)
    canvas.discardActiveObject()
    canvas.renderAll()
  }
})

document.querySelectorAll('.customer-mode')[0].addEventListener('click', function() {
  canvas.getObjects().map(function(o) {
    o.hasControls = false
    o.lockMovementX = true
    o.lockMovementY = true
    if (o.type === 'chair' || o.type === 'bar' || o.type === 'wall') {
      o.selectable = false
    }
    o.borderColor = '#38A62E'
    o.borderScaleFactor = 2.5
  })
  canvas.selection = false
  canvas.hoverCursor = 'pointer'
  canvas.discardActiveObject()
  canvas.renderAll()
  document.querySelectorAll('.admin-menu')[0].style.display = 'none'
  document.querySelectorAll('.customer-menu')[0].style.display = 'block'
})

document.querySelectorAll('.admin-mode')[0].addEventListener('click', function() {
  canvas.getObjects().map(function(o) {
    o.hasControls = true
    o.lockMovementX = false
    o.lockMovementY = false
    if (o.type === 'chair' || o.type === 'bar' || o.type === 'wall') {
      o.selectable = true
    }
    o.borderColor = 'rgba(102, 153, 255, 0.75)'
    o.borderScaleFactor = 1
  })
  canvas.selection = true
  canvas.hoverCursor = 'move'
  canvas.discardActiveObject()
  canvas.renderAll()
  document.querySelectorAll('.admin-menu')[0].style.display = 'block'
  document.querySelectorAll('.customer-menu')[0].style.display = 'none'
})

function formatTime(val) {
  const hours =  Math.floor(val / 60)
  const minutes = val % 60
  const englishHours = hours > 12 ? hours - 12 : hours

  const normal = hours + ':' + minutes + (minutes === 0 ? '0' : '')
  const english = englishHours + ':' + minutes + (minutes === 0 ? '0' : '') + ' ' + (hours > 12 ? 'PM' : 'AM')

  return normal + ' (' + english + ')'
}

document.querySelectorAll('.submit')[0].addEventListener('click', function() {
  const obj = canvas.getActiveObject()
  $('#modal').modal('show')
  let modalText = 'You have not selected a table'
  let reservationdate = $('#reservationdate').val()

  if (reservationdate == null || reservationdate == ''){
    modalText = 'You have not selected a date'
  }

  if (obj && (reservationdate != null || reservationdate != '')) {
    $("#selectedTable").val(obj.number);  
    modalText = 'You have selected table ' + obj.number + ', On the date  ' + reservationdate + '</br>. Your selection will added to your cart and held in your name for the next 30 Seconds.</br> If the reservation is not confirmed in the given time frame then it will be automatically removed from your cart. </br> Do You want to continue ?'
  }
  document.querySelectorAll('#modal-table-id')[0].innerHTML = modalText
})

const slider = document.getElementById('slider')
noUiSlider.create(slider, {
  start: 1200,
  step: 15,
  connect: 'lower',
  range: {
    min: 0,
    max: 1425
  }
})

const sliderValue = document.getElementById('slider-value')
slider.noUiSlider.on('update', function(values, handle) {
	sliderValue.innerHTML = formatTime(values[handle])
})