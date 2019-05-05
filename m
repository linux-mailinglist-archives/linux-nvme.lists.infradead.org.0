Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D6313D13
	for <lists+linux-nvme@lfdr.de>; Sun,  5 May 2019 06:19:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:To:From:Subject:Mime-Version:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=crsROmOyAbJJprAwHkuzYUA1YJFoA1Hbi01Vxc/4mdg=; b=S0yA+mxe7rrlOn
	oXi0IYepBVoUMTksTtpZ157U3szv6S5uotdcZNUiQ1BzYrB1o9AUFnGfA/4snadONVgb547fl6cZc
	HXHyX5IPRC8hDthsdPi39vV2D9BeYiyBL6Z7aX+vbxxRTxCn4XVE6a1iNgOaIUOpdj1WXQT1m02KO
	nLHYHrFhqJffUQiTtEUHA1kAGT+7c16+PjRJSItg4E9IFhuXNzOUm/z4Hvdi7SEo8DQ5hKpzw/bn9
	4LsxI5JKlNGnjAi3DarN7VLfuc7LHmlF5HCpw3rzyf5PhuE7suAzBdmk2/YunqgaWWQ0092aZv0A7
	dt3XYkJDY/xi4U7tewKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hN8cB-00031g-Oo; Sun, 05 May 2019 04:19:03 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hN8c4-00031N-BP
 for linux-nvme@lists.infradead.org; Sun, 05 May 2019 04:18:58 +0000
Received: from epcas2p2.samsung.com (unknown [182.195.41.54])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20190505041852epoutp04742a76dbda94b06e6757534f96915a38~brnlB6_Xr2498124981epoutp04D
 for <linux-nvme@lists.infradead.org>; Sun,  5 May 2019 04:18:52 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20190505041852epoutp04742a76dbda94b06e6757534f96915a38~brnlB6_Xr2498124981epoutp04D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1557029932;
 bh=E4zjdvHEN8/GOyTl7h27lPTq2QGihgmpqVo6gVMRaSc=;
 h=Subject:Reply-To:From:To:In-Reply-To:Date:References:From;
 b=pjghEUoAIt3zv2kh/zcGcHuRSL0Le4bg5nCf8K3Z501CSqnBGpTqeRkJVF1Ov3J8t
 OYNtYW8pm/FoVB7XxWWPeGi/hjdluABOMCSWTN+9MxRF6s4mgrp7OOe5KMyuZHQtmv
 4zN4+/ZJf2NvEyZ5cpbKlmmaJ44tfvbsfhSXUEEo=
Received: from epsmges2p3.samsung.com (unknown [182.195.40.191]) by
 epcas2p1.samsung.com (KnoxPortal) with ESMTP id
 20190505041849epcas2p1ae2fe02d8d6d739c633c7bc4ec8764bb~brni1M7PA2738827388epcas2p1N;
 Sun,  5 May 2019 04:18:49 +0000 (GMT)
X-AuditID: b6c32a47-14bff7000000106e-3f-5cce6428cc30
Received: from epcas2p1.samsung.com ( [182.195.41.53]) by
 epsmges2p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 49.23.04206.8246ECC5; Sun,  5 May 2019 13:18:48 +0900 (KST)
Mime-Version: 1.0
Subject: RE: [PATCH 1/2] nvme/pci: init shadow doorbell after each reset
From: Minwoo Im <minwoo.im@samsung.com>
To: Maxim Levitsky <mlevitsk@redhat.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <20190502113134.20835-2-mlevitsk@redhat.com>
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20190505041848epcms2p3de08067d150ff7dfb78a80fe4fea5f4d@epcms2p3>
Date: Sun, 05 May 2019 13:18:48 +0900
X-CMS-MailID: 20190505041848epcms2p3de08067d150ff7dfb78a80fe4fea5f4d
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrDKsWRmVeSWpSXmKPExsWy7bCmqa5GyrkYg+tL+S3mL3vKbrH72Qom
 ByaPzUvqPd7vu8oWwBSVY5ORmpiSWqSQmpecn5KZl26r5B0c7xxvamZgqGtoaWGupJCXmJtq
 q+TiE6DrlpkDNF5JoSwxpxQoFJBYXKykb2dTlF9akqqQkV9cYquUWpCSU2BoWKBXnJhbXJqX
 rpecn2tlaGBgZApUmZCT8W5ZTMFs1orV6x+wNDAuYeli5OSQEDCRODDzHDuILSSwg1Hi3Eug
 OAcHr4CgxN8dwiBhYQEPidY5TWBhIQF5iR+vDCDCmhLvdp9hBbHZBNQlGqa+ApsoIpAr8Wn/
 VKjpvBIz2p9C2dIS25dvZQSxOQUsJTYtXMcIEReVuLn6LTuM/f7YfKi4iETrvbPMELagxIOf
 uxlBTpAQkJC4984OwqyX2LLCoouRC8hsYZS48WYtVKu+ROPzj2BreQV8JSZsb2EDsVkEVCVe
 nHoENdJF4vyTh2DnMwN9tf3tHGaQmcxAb63fpQ8xXlniyC0WiAo+iY7Df9lhntox7wkThK0s
 8fHQIaiJkhLLL71mg7A9JPq6tjCCnCYksJ5RouX+RtYJjPKzEEE7C8niWQiLFzAyr2IUSy0o
 zk1PLTYqMEaOy02M4JSl5b6Dcds5n0OMAhyMSjy8G3afjRFiTSwrrsw9xCjBwawkwhv38VSM
 EG9KYmVValF+fFFpTmrxIUZToP8nMkuJJucD02leSbyhqZGZmYGlqYWpmZGFkjjvQ+m50UIC
 6YklqdmpqQWpRTB9TBycUg2Mkmd6Xyjd3tlpvG23OidLUsqzwLb0DQnCR57ym3g3n9OZPVmK
 SWDifM1JtqleSuyV52cH6kWeeK0xp1p3HbvvifPhl3vb3jzbOMvioV7mA/2ve7VzzDJKIs53
 T4sxjpfh0GHOeVlg2sjPI1ZbrBBtGHGjagXTj6rFB712366fK+jxxvPPz2tKLMUZiYZazEXF
 iQC8oNb4bwMAAA==
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190502113150epcas4p2a4a2a783b46411ed0895978811545c73
References: <20190502113134.20835-2-mlevitsk@redhat.com>
 <20190502113134.20835-1-mlevitsk@redhat.com>
 <CGME20190502113150epcas4p2a4a2a783b46411ed0895978811545c73@epcms2p3>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_211856_718765_8306485A 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
> Behalf Of Maxim Levitsky
> Sent: Thursday, May 02, 2019 8:32 PM
> To: linux-nvme@lists.infradead.org
> Subject: [PATCH 1/2] nvme/pci: init shadow doorbell after each reset
> 
> The spec states
> "The settings are not retained across a Controller Level Reset"
> Therefore the driver must enable the shadow doorbell,
> after each reset.
> 
> This was caught while testing the nvme driver over
> upcoming nvme-mdev device
> 
> Signed-off-by: Maxim Levitsky <mlevitsk@redhat.com>

It looks good to me.

Reviewed-by: Minwoo Im <minwoo.im@samsung.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
