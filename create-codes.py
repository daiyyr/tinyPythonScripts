#!/usr/bin/env python

import qrcode
import qrcode.image.svg


codes = (
    'https://sff-staging.green.codes/qZsiZ2jg',
    #'https://www.trustblackmores.com.au/SMqyZo65',
    #'https://scan.fern.codes/sFJMxFH2',
    #'https://scan.fern.codes/kxWhKqJq',

)

names = (
    # "Premium_UMF_10_250g", 
    # "Premium_UMF_10_500g",
    # "Premium_UMF_15_250g",
    # "Premium_UMF_15_500g",
    # "MANAKAI_UMF_20_250g",
    # "Premium_UMF_20_250g",
    # "Awanui_Blend_250g",
    # "Awanui_Blend_500g",
    # "Awanui_UMF_10_250g",
    # "Awanui_UMF_15_250g",
    # "Awanui_UMF_20_250g",
)

QR_VERSION = 3
QR_CORRECTION = qrcode.constants.ERROR_CORRECT_M
QR_BOX_SIZE = 10
QR_BORDER = 4
QR_MASK_PATTERN = 2


i = 0
for code in codes:
    if not names:
        if '//' in code:
            filename = code.split('//')[1].replace('/', '.')
        else:
            filename = code
    else:
        filename = names[i]
    i += 1

    png_qr = qrcode.QRCode(
        version=QR_VERSION,
        error_correction=QR_CORRECTION,
        mask_pattern=QR_MASK_PATTERN,
        box_size=QR_BOX_SIZE,
        border=QR_BORDER
    )
    png_qr.add_data(code)
    png_qr.make()
    img = png_qr.make_image()
    img.save(filename + '.png')

    svg_qr = qrcode.QRCode(
        version=QR_VERSION,
        error_correction=QR_CORRECTION,
        mask_pattern=QR_MASK_PATTERN,
        box_size=QR_BOX_SIZE,
        border=QR_BORDER,
		image_factory=qrcode.image.svg.SvgFillImage  # only for SVG
    )
    svg_qr.add_data(code)
    svg_qr.make()
    img = svg_qr.make_image()
    img.save(filename + '.svg')

print('done')
