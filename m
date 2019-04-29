Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45148ED53
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 01:32:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:To:From:Subject:Mime-Version:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iYI1D8c8s1KBT9mp4/8Udr3RQtdZqD2eGs9qlxuDrWo=; b=hsn7z5hFXIidFZ
	AxC7vEmr/WlnVgaInFehM961/9ZKuYif7jbh9WJGnyHEY0zI10jCzfLyWKL2WESLZ7pegGv/jRr+G
	NCspjwOo+K4JvlgVHj7tKEXPnbkBGWxnN8Sg9K6Keg6g25qC552PdVpq8zsO8IMXJiITACLMNxhDm
	wASSoYB87wgp5IX9dlf6iv0Q4BsEAopXTmRiIV8uSUCbRXTpuY+Vt20px6eQ617vbIiVNNwQitKPw
	ROMUkgUs6REJDh7/nuyhtnxIPrp1f3oUd7om51bZO5SvutZ/YHVnRaKBG2hSX1gpGWu3kHuLIlI2o
	4Qk6coc2ZJ/E4yZFZ9Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLFlN-00059L-ME; Mon, 29 Apr 2019 23:32:45 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLFlH-00058v-Tz
 for linux-nvme@lists.infradead.org; Mon, 29 Apr 2019 23:32:41 +0000
Received: from epcas2p4.samsung.com (unknown [182.195.41.56])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20190429233236epoutp042d33753815727fcbc6734087a701f8bb~aFfNV7qiT1762917629epoutp042
 for <linux-nvme@lists.infradead.org>; Mon, 29 Apr 2019 23:32:36 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20190429233236epoutp042d33753815727fcbc6734087a701f8bb~aFfNV7qiT1762917629epoutp042
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1556580756;
 bh=TB307QYBL5iKaZv1YlpBQLUrF4w8inOMAlVzaMIcO/g=;
 h=Subject:Reply-To:From:To:In-Reply-To:Date:References:From;
 b=DbG+u6Q0VpLhl2t0wx1pjOR6666I9y2ZAkxNg/be2E8U3FGCPzYdro3SySA/O4oah
 JhTeJq159SNJL/5USL6LTWv8zT1I5cPbWEFA+vpIofPkRq7P96b1CBVeqo3ilw2mkA
 NhWJIjy0kPSxlgbjuay0Met2Qzd07GbGXL8+NN5w=
Received: from epsmges2p1.samsung.com (unknown [182.195.40.182]) by
 epcas2p3.samsung.com (KnoxPortal) with ESMTP id
 20190429233232epcas2p3efd096e916f4237aca3330b654ef92f8~aFfKLEZFd0559905599epcas2p3Y;
 Mon, 29 Apr 2019 23:32:32 +0000 (GMT)
X-AuditID: b6c32a45-d47ff70000001063-9b-5cc7898ec052
Received: from epcas2p1.samsung.com ( [182.195.41.53]) by
 epsmges2p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 3F.72.04195.E8987CC5; Tue, 30 Apr 2019 08:32:30 +0900 (KST)
Mime-Version: 1.0
Subject: RE: [PATCH 2/2] nvme: add clarifying comments and fix some typos
From: Minwoo Im <minwoo.im@samsung.com>
To: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "ednadols@linux.microsoft.com" <ednadols@linux.microsoft.com>, Minwoo Im
 <minwoo.im@samsung.com>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <20190429173533.10366-3-ednadols@linux.microsoft.com>
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20190429233229epcms2p4b40c9013b34c79be70726af1d1877f5c@epcms2p4>
Date: Tue, 30 Apr 2019 08:32:29 +0900
X-CMS-MailID: 20190429233229epcms2p4b40c9013b34c79be70726af1d1877f5c
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrBKsWRmVeSWpSXmKPExsWy7bCmqW5f5/EYgxNvWC16N/SwW8xf9pTd
 4tnpA8wOzB6/th9l8ti8pN6jb8sqxgDmqBybjNTElNQihdS85PyUzLx0WyXv4HjneFMzA0Nd
 Q0sLcyWFvMTcVFslF58AXbfMHKBFSgpliTmlQKGAxOJiJX07m6L80pJUhYz84hJbpdSClJwC
 Q8MCveLE3OLSvHS95PxcK0MDAyNToMqEnIxnvQtZCxawVpw9OIe1gXEDSxcjJ4eEgInE1UsT
 mLoYuTiEBHYwSpyddZu1i5GDg1dAUOLvDmEQU1jAU2Ltcy0QU0hAXuLHKwOQTmEBTYl3u8+w
 gthsAuoSDVNfsYBMERFYzSix8+gadojxvBIz2p9CrZKW2L58KyOIzSngJPFs/WOoGlGJm6vf
 wtnvj81nhLBFJFrvnWWGsAUlHvzczQhyg4SAhMS9d3YQZr3ElhUWIGslBFoYJW68WQvVqi/R
 +Pwj2FpeAV+J+++awO5kEVCVuH90FdRIF4nT/afB1jIDvbX97RxmkJnMQH+t36UPMV5Z4sgt
 FogKPomOw3/hntox7wkThK0s8fHQIaiJkhLLL71mg7A9JF78/MEGCdeDjBL7f3cwT2CUn4UI
 2llIFs9CWLyAkXkVo1hqQXFuemqxUYEhcmxuYgSnMi3XHYwzzvkcYhTgYFTi4fV4dyxGiDWx
 rLgy9xCjBAezkgivx/GjMUK8KYmVValF+fFFpTmpxYcYTYH+n8gsJZqcD0yzeSXxhqZGZmYG
 lqYWpmZGFkrivI+k50YLCaQnlqRmp6YWpBbB9DFxcEo1MLbLTjWZLlI++4P1heIvSn93TY+L
 NXRYa7hduSmp8IVl53Q7v9iZ1/z4fpmvK43P22keaL7KnStl+aqAxF8/fBNulp9O8cn/EqNt
 +K0q6S2LuONV70vMk9e+6LN3uMvkq7b3qv3rYo0jFr0Gb3f7q0ocnHxJxFzq/IWt9YwRTX42
 uzPMZvXlKbEUZyQaajEXFScCAJChWB17AwAA
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190429173604epcas3p2e65d79c87ba36e384e6c42a1b1744eae
References: <20190429173533.10366-3-ednadols@linux.microsoft.com>
 <20190429173533.10366-1-ednadols@linux.microsoft.com>
 <CGME20190429173604epcas3p2e65d79c87ba36e384e6c42a1b1744eae@epcms2p4>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_163240_141409_E6F30BD8 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -5.3 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Reply-To: minwoo.im@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Linux-nvme [mailto:linux-nvme-bounces@lists.infradead.org] On
> Behalf Of Edmund Nadolski
> Sent: Tuesday, April 30, 2019 2:36 AM
> To: linux-nvme@lists.infradead.org; ednadols@linux.microsoft.com
> Subject: [PATCH 2/2] nvme: add clarifying comments and fix some typos
> 
> Add comment descriptions for struct fields per NVMe spec.
> 
> Signed-off-by: Edmund Nadolski <ednadols@linux.microsoft.com>

IMHO, if you really want to provide description for structure attributes,
why don't we have all of them instead describing few fields only.

Also It would be better if typo-related commit is separted from it.

Thanks,

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
