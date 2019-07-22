Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC3670C72
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 00:17:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jSlx5cgwohoLxnt2oQ2l4Jyh4dp7NnFN/dwMXpADIlc=; b=JXgM6EAY028EfI
	CokBb8YltnxjmZY7Sdp1/jZHajburOOBnTSDzt46qVCRtFzESm4xkkkIEiSmZJRjGGWxmm8CbOkHS
	CHDX1s41mWFunHhWEYY74ZZM+AJoFnCv/2GawWX+ULKO/UwqNjtXqS1FA7v6+GHowZtAmg+549vcW
	7M4UX9cnpcfXEi9jHgWu5Gr6dzIAs3syLVTHm1HCx0PHRZZtotA5MghvRwilr1FbX2dIr/EPbxNhe
	yrJxpuLIePZhYMAJIYP3+uGVRyeBS0kuveOrwkzkhPNvBf+KfPEzaFW7/g0FnQuF6BDIOWZy8igBS
	Gh0iTBcZVBZ+WjD+fdqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpgcC-0008E7-VP; Mon, 22 Jul 2019 22:17:05 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpgbv-0008DX-Fo
 for linux-nvme@lists.infradead.org; Mon, 22 Jul 2019 22:16:49 +0000
Received: by mail-io1-f65.google.com with SMTP id m24so77566829ioo.2
 for <linux-nvme@lists.infradead.org>; Mon, 22 Jul 2019 15:16:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=GjaIw+OIOqnuVMPluGpxJ5ZQQXD25h9ZXkf8XCLJ1LQ=;
 b=bJuBgU7I5OfTXjWEdpa/10xPxq0lFmBYNflIdnFOkNFGCLCKG6i4yL37Ou6uFLy+ww
 5sVmjnXoh5NUmX//vpDbtVn1U0mLJJqkEm80L/35NYzq+0rsSVOC7MN3fmzmlG3cZVoT
 cES1TUpjQ0g4Pr0+V8CnIYr2gy7LTM6XLNSeIDMzNZYAsykFQdFvkxc5jW4jLBEFWKwG
 LYYODXyx9Jw784JWMbCPdmTUCvW/YKXolxD/Kz09xWUvppwrAwT16/cDsWAOzQ1lxRnl
 PcHGzerFcfzLp5COuyennDhwPd/IVozkI77G735u6FjdELVlYPrQJscDzHsxCPb0Q/52
 EaqQ==
X-Gm-Message-State: APjAAAXW42qeFMQir+9Ih3LN/xRreEO3DXGdSf4lQC3jsWFAqlsQO2EM
 TbZLEk2iWLy8QB9A7fQ//A==
X-Google-Smtp-Source: APXvYqweE1pmwMeEtkIP3+qOvfvr0a4dd6g5i87s1QCiHsWjaTPPGkEO/aZ9P3kxWiaUCc8OppzTRA==
X-Received: by 2002:a5d:8747:: with SMTP id k7mr53543542iol.20.1563833806389; 
 Mon, 22 Jul 2019 15:16:46 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id x22sm29275248ioh.87.2019.07.22.15.16.45
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 15:16:45 -0700 (PDT)
Date: Mon, 22 Jul 2019 16:16:45 -0600
From: Rob Herring <robh@kernel.org>
To: Akinobu Mita <akinobu.mita@gmail.com>
Subject: Re: [PATCH v5 2/4] dt-bindings: thermal: nvme: Add binding
 documentation
Message-ID: <20190722221645.GA32515@bogus>
References: <1561990354-4084-1-git-send-email-akinobu.mita@gmail.com>
 <1561990354-4084-3-git-send-email-akinobu.mita@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561990354-4084-3-git-send-email-akinobu.mita@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_151647_540468_9E4B8D1A 
X-CRM114-Status: GOOD (  18.69  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, linux-pm@vger.kernel.org,
 Jens Axboe <axboe@fb.com>, Kenneth Heitke <kenneth.heitke@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-nvme@lists.infradead.org,
 Eduardo Valentin <edubezval@gmail.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Keith Busch <kbusch@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Jul 01, 2019 at 11:12:32PM +0900, Akinobu Mita wrote:
> Add thermal binding documentation for NVMe temperature sensor.
> 
> Cc: Rob Herring <robh@kernel.org>
> Cc: Zhang Rui <rui.zhang@intel.com>
> Cc: Eduardo Valentin <edubezval@gmail.com>
> Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
> Cc: Keith Busch <kbusch@kernel.org>
> Cc: Jens Axboe <axboe@fb.com>
> Cc: Christoph Hellwig <hch@lst.de>
> Cc: Sagi Grimberg <sagi@grimberg.me>
> Cc: Minwoo Im <minwoo.im.dev@gmail.com>
> Cc: Kenneth Heitke <kenneth.heitke@intel.com>
> Cc: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
> Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
> ---
> * v5
> - New patch
> 
>  Documentation/devicetree/bindings/thermal/nvme.txt | 56 ++++++++++++++++++++++
>  1 file changed, 56 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/thermal/nvme.txt
> 
> diff --git a/Documentation/devicetree/bindings/thermal/nvme.txt b/Documentation/devicetree/bindings/thermal/nvme.txt
> new file mode 100644
> index 0000000..60b90de
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/thermal/nvme.txt
> @@ -0,0 +1,56 @@
> +Binding for NVMe temperature sensor
> +
> +An NVMe controller reports up to nine temperature values in the SMART / Health
> +log.
> +
> +Required properties:
> +- reg: A five-cell address encoded as (phys.hi phys.mid phys.lo size.hi
> +  size.lo). phys.hi should contain the device's BDF (Bus/Device/Function)
> +  as 0b00000000 bbbbbbbb dddddfff 00000000. The other cells should be zero.
> +  See also Documentation/devicetree/bindings/pci/pci.txt
> +
> +- #thermal-sensor-cells: Must be 1. See ./thermal.txt for a description.
> +  In the thermal-sensors property, the sensor ID 0 for composite temperature,
> +  1 through 8 for NVMe temperature sensor N.
> +
> +Example:
> +
> +&pcie0 {
> +	...
> +	nvme: nvme@0,0 {
> +		reg = <0x0000 0 0 0 0>;
> +		#address-cells = <3>;
> +		#size-cells = <2>;
> +
> +		nvmetemp: nvmetemp {
> +			reg = <0x0000 0 0 0 0>; /* DEVFN = 0x00 (0:0) */

I'm not sure this is really valid PCI addressing as the parent has the 
same address.

> +			#thermal-sensor-cells = <1>;

Can't you just put this in the parent? Is this really a separate 
addressable device from the parent?

> +		};
> +	};
> +};
> +
> +&thermal_zones {
> +	nvme_thermal: nvme {
> +		polling-delay-passive = <2000>; /* milliseconds */
> +		polling-delay = <0>; /* asynchronous event driven */
> +
> +				/* sensor	ID */
> +		thermal-sensors = <&nvmetemp	0>;
> +
> +		trips {
> +			nvme_alert0: nvme_alert0 {
> +				temperature = <80000>; /* millicelsius */
> +				hysteresis = <2000>; /* millicelsius */
> +				type = "passive";
> +			};
> +		};
> +
> +		cooling-maps {
> +			map0 {
> +				trip = <&nvme_alert0>;
> +				cooling-device =
> +				<&fan0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +			};
> +		};
> +	};
> +};
> -- 
> 2.7.4
> 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
