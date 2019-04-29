Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D92ED5D
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 01:38:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HerapL0bBNBILXNMCBYKGqTdyrzBLGj+OreVN2R/Dt4=; b=eV0VNy49S49vig
	lSqNCvIFVkGEDUhyqPmWW2uYYw27HbLjcEaA2sw0mALlK2Exp/sd3H8tuGCDs/wwW+PNkaDv1GB+d
	SWPCKZq/Zbub2QfKpvAIHjWuVFgmQYAPxspmDwZqLUZzWLdi4ZPkPDSLO/ZdBL7xLprwtxayipmAn
	GMvuiUnJ7tuxcClR2J/rQOWFt3/Prn6Cm9VHeiMAb/j0NrYI+swCXZBDPBIgnmzBbK9eUD64ecsik
	OslS9ZAMzXmqHL72yw82AyebpGg+7sSCBme3yeDoO5jMDe1QpSDw4rMZDDH+hR6MWleLOUMl+i91P
	6VVyUWNhC5olJTABeKGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLFqj-0006hO-K3; Mon, 29 Apr 2019 23:38:17 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLFqe-0006ge-F2
 for linux-nvme@lists.infradead.org; Mon, 29 Apr 2019 23:38:14 +0000
Received: from epcas2p2.samsung.com (unknown [182.195.41.54])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20190429233801epoutp034bca72ed9ddc67d0d3a63da6771d9db5~aFj8zsfZY0404904049epoutp03Q
 for <linux-nvme@lists.infradead.org>; Mon, 29 Apr 2019 23:38:01 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20190429233801epoutp034bca72ed9ddc67d0d3a63da6771d9db5~aFj8zsfZY0404904049epoutp03Q
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1556581081;
 bh=qOH2RD1qz4F5XpqPukCIX/U6Ct24uHSoQNKXIA1Nx3E=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=tmk33aY0a1kUD1e5tTzwqRHRfdyWmeN6g7oEoy2YiZV9VQIvKDowcmMChTdJBQ9BD
 ssN4PIPaya03c6eG0EZJ9c4Mj3UtLAA9awvBVChRwCAOpxAWmGLII3ECM8LkTomWCp
 vS7Qb0LvEqlnIC8GHbvqUdOUMk1Ny+o+A3v0WNAI=
Received: from epsmges2p3.samsung.com (unknown [182.195.40.190]) by
 epcas2p4.samsung.com (KnoxPortal) with ESMTP id
 20190429233759epcas2p4a1b740e0dadfaa1ee38834867b993174~aFj7A1w2-0548705487epcas2p4H;
 Mon, 29 Apr 2019 23:37:59 +0000 (GMT)
X-AuditID: b6c32a47-133ff7000000106e-98-5cc78ad50f8d
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
 epsmges2p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 0D.96.04206.5DA87CC5; Tue, 30 Apr 2019 08:37:57 +0900 (KST)
Mime-Version: 1.0
Subject: RE: [PATCH] nvmet: protect discovery change log event list iteration
From: Minwoo Im <minwoo.im@samsung.com>
To: Sagi Grimberg <sagi@grimberg.me>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>, Minwoo Im <minwoo.im@samsung.com>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <20190429232819.9844-1-sagi@grimberg.me>
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20190429233756epcms2p7e5b84be4fe61314b61399df3420f4a39@epcms2p7>
Date: Tue, 30 Apr 2019 08:37:56 +0900
X-CMS-MailID: 20190429233756epcms2p7e5b84be4fe61314b61399df3420f4a39
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpjk+LIzCtJLcpLzFFi42LZdljTTPdq1/EYg4l/1CxWrj7KZHHv6Bcm
 i/nLnrJbPDt9gNli3ev3LA6sHufvbWTxWLznJZPH5iX1HrtvNrB59G1ZxRjAGpVjk5GamJJa
 pJCal5yfkpmXbqvkHRzvHG9qZmCoa2hpYa6kkJeYm2qr5OIToOuWmQO0XEmhLDGnFCgUkFhc
 rKRvZ1OUX1qSqpCRX1xiq5RakJJTYGhYoFecmFtcmpeul5yfa2VoYGBkClSZkJOx+1c7e8Fe
 loob7X2sDYx3mbsYOTgkBEwktrYldzFycQgJ7GCUmPPnHVicV0BQ4u8O4S5GTg5hAX+J5uaV
 7CBhIQF5iR+vDCDCmhLvdp9hBbHZBNQlGqa+YgGxRQR6GCVWzOEBsZkF3CVm7rkAFpcQ4JWY
 0f4UypaW2L58KyOIzSlgKrFszX42iLioxM3Vb9lh7PfH5jNC2CISrffOMkPYghIPfu5mhLhe
 QuLeOzsIs15iywoLkEckBFoYJW68WQvVqi/R+Pwj2FpeAV+JLVfngZ3MIqAqsfTwQiaIGheJ
 zevesUCcLC+x/e0ccCAwA724fpc+xHhliSO3oCr4JDoO/2WHeWrHvCdQU5QlPh46BHWkpMTy
 S6+hnvKQWNS7AaxGSKBG4v3HM0wTGBVmIUJ5FpK9sxD2LmBkXsUollpQnJueWmxUYIwcr5sY
 wWlQy30H47ZzPocYBTgYlXh4Pd4dixFiTSwrrsw9xCjBwawkwutx/GiMEG9KYmVValF+fFFp
 TmrxIUZToPcnMkuJJucDU3ReSbyhqZGZmYGlqYWpmZGFkjjvQ+m50UIC6YklqdmpqQWpRTB9
 TBycUg2M6UyC6xpOv/3gX7LF5HzQu2VVEvG3di99/WxNxKEeu2e7xcSP1W6pcZkQub7nSJI7
 U7jh8pOT7u7cvcxALeker7ZhzO8r9XzHvL7vZzhRnP6FI64z387yZ97E9D9+ylYKklMkhObH
 nbosG2n7vd3I+sbpq0Jnq35Y3Cy5zfvjdX3sPp+W2wJ2SizFGYmGWsxFxYkAktIur5kDAAA=
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190429232827epcas4p2d2a2bdfa7777059fe52f5591a2488109
References: <20190429232819.9844-1-sagi@grimberg.me>
 <CGME20190429232827epcas4p2d2a2bdfa7777059fe52f5591a2488109@epcms2p7>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_163812_838406_16E197CE 
X-CRM114-Status: GOOD (  15.40  )
X-Spam-Score: -5.3 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Linux-nvme [mailto:linux-nvme-bounces@lists.infradead.org] On
> Behalf Of Sagi Grimberg
> Sent: Tuesday, April 30, 2019 8:28 AM
> To: linux-nvme@lists.infradead.org
> Cc: Keith Busch; Christoph Hellwig
> Subject: [PATCH] nvmet: protect discovery change log event list iteration
> 
> When we iterate on the discovery subsystem controllers
> we need to protect against concurrent mutations to it.
> 
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>

This looks good to me.

Reviewed-by: Minwoo Im <minwoo.im@samsung.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
