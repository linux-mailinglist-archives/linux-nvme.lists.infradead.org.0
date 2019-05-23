Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F89C274FC
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 06:16:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cICqa5+P+8hDU5mA3yRD6fjFXnYyGH6ba2YcJg6uqlA=; b=Pxa80vwq6N6qCN
	WdJlSHIItawq7hXXYZPsm1NpxBOg3tWYx9B3MfHolHWX3TFTgpA0doHXlLkpefJXvbmbe+Y/Wafpy
	JOzYFyTvw9V+RIRmR9z5ac0Nsf+OGwm99UeLJr3Zu7c5p34BLe1ht4zYN26WbmzcmWV+TTvjame3F
	27SijHZvntR0ZKT1owNXODGrp8Dmh2cjDZhgQJ/htuhzvdds8NGUzrcIIWQwiWG9F9b6dhOZWUBaJ
	Tay+g0th6wRRu++30KwcVbx/ZHtwRaN2rxdahIHLH404aH6JynyXANRlbRquFHNkfaOsVpxgAseRt
	/qYcygWNM30bXXyKTfsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTf9k-0002os-DF; Thu, 23 May 2019 04:16:40 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTf9f-0002oU-Ki
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 04:16:37 +0000
Received: from epcas2p3.samsung.com (unknown [182.195.41.55])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20190523041632epoutp01ea6a41b2c85d4f5a2d753ce121a56c73~hNMsWemEj2436024360epoutp01s
 for <linux-nvme@lists.infradead.org>; Thu, 23 May 2019 04:16:32 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20190523041632epoutp01ea6a41b2c85d4f5a2d753ce121a56c73~hNMsWemEj2436024360epoutp01s
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1558584992;
 bh=NeMBAGjxVjixVQk8Pi6TWDsfHzxxbkzyZauYchMkKyk=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=kLQWfKMpsA+zqJDcDkb6qhnWnY+JCeqrxr0UK2q12ljWqshbrBL1XAbbVCnURyZ7S
 eBZyIOeaJYzrRY+PBQqRoJ3yYfPCA0PxSSSSg7qMfqVtN+Z7RUiPMzpw0hMETNl54U
 vjd2vvQJEGbd8chJB2sgy1KGqI16bT+xzGpk6I6M=
Received: from epsmges2p4.samsung.com (unknown [182.195.40.184]) by
 epcas2p4.samsung.com (KnoxPortal) with ESMTP id
 20190523041631epcas2p4626da814756386b1a0e8cdc60fb91c06~hNMqqO6TN0495804958epcas2p4P;
 Thu, 23 May 2019 04:16:31 +0000 (GMT)
X-AuditID: b6c32a48-6a1ff7000000106f-f4-5ce61e9eb9fc
Received: from epcas2p4.samsung.com ( [182.195.41.56]) by
 epsmges2p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 A6.24.04207.E9E16EC5; Thu, 23 May 2019 13:16:30 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH 4/9] nvme-print: fix json object memory leak
From: Minwoo Im <minwoo.im@samsung.com>
To: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "kbusch@kernel.org" <kbusch@kernel.org>, "sagi@grimberg.me"
 <sagi@grimberg.me>, "hch@lst.de" <hch@lst.de>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <1558543193-24752-5-git-send-email-maxg@mellanox.com>
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20190523041629epcms2p6cf70cbfc6b011e729f5dbb1a13f1cdae@epcms2p6>
Date: Thu, 23 May 2019 13:16:29 +0900
X-CMS-MailID: 20190523041629epcms2p6cf70cbfc6b011e729f5dbb1a13f1cdae
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0hTYRju25nb0TpxmlavJjpOVKSp23DzmFlWEqOLGRF0WayDOzjp7MLO
 lCwqi6Lyh3gpCgtnEWmudbHU1X5ksyy7aQXVpKSkGWlqIyqDjLYdxf49PDzP+3zP+704Jjsp
 icOLzHbWZmY4ShIlbu1YTKfUJQzoFC5PBH3Z+UBEV3tfI9pxyS+lGx7+FdFP+tul9NWhUTH9
 rvuqJEeq7e67IdY2N52QaG9ePKj1+Mok2oHTHSJtwN8rzpds55YZWcbA2uSsucBiKDIXZlPr
 NutX69UahTJFmUlnUHIzY2Kzqdz1+SlrirjgWyh5CcMVB6l8hueptOXLbJZiOys3Wnh7NsVa
 DZxVqbSm8oyJLzYXphZYTEuVCoVKHVTu4oxDrheYde2e2+e6pGUouxxF4kCmw4Pj3ohyFIXL
 SDeC8f52VI5wnCBnwbg7OqSJJnPgfItTGqJlZCKMDSoEejGMeJ5GhLCEXARlpwbFIRxD3kJQ
 X8OFRmLkaQTXevqQkEXAmWN+sYDnQVtDSzgqklwFjq4NAj0bfM5h6SQe7XRMWGPgaN8zTMCz
 4MNvT9gKJEDfyHIBHoRbjXQoFcgjCN5+dU1Y0+DQ50A4lSA3QGC8I9xETC6AqvM7BEkuOM50
 hiVYsGDb8DksJMGCDa/dSROmz4f7vROKmXC8Y1w6Wcld90kk4PkQ8Hon3hgLDS+HJALWwtMa
 v0hY8T0EPY8uSCuRvHZqy7X/BddOBdcjrAnNYa28qZDlVdb0/7+1GYUvMknrRu3P13sRiSNq
 BmHM8OtkEUwJX2ryIsAxKoZ48rhfJyMMTOle1mbR24o5lvcidbB+FRY3u8ASvG+zXa9UqzQa
 RaaaVmtUNDWXaJ7u08nIQsbO7mZZK2ub9InwyLgytLXu7Y3q1DH761ideoujdPqbP98GOUZj
 SNRnbDu7P55O9o1d2ZSjXPjxe/LmaUT8vsbri1b/rfetVLckUi+T7/588yN2W1dReU9l9Ipf
 C1fldm99dSfqZo3Vub1ChZDL5bxkqNg3oMnLI3ZyB1o2JmUpQJ7Z3JmwpLax9X3WF/NhSswb
 GWUSZuOZf6wRwySnAwAA
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190522164034epcas5p3291dcc21c0724f8b19f80befb4bc4918
References: <1558543193-24752-5-git-send-email-maxg@mellanox.com>
 <1558543193-24752-1-git-send-email-maxg@mellanox.com>
 <CGME20190522164034epcas5p3291dcc21c0724f8b19f80befb4bc4918@epcms2p6>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_211635_839922_B02EBA0A 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "maxg@mellanox.com" <maxg@mellanox.com>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "shlomin@mellanox.com" <shlomin@mellanox.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This looks good to me.

Reviewed-by: Minwoo Im <minwoo.im@samsung.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
