Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C070EF34BE
	for <lists+linux-nvme@lfdr.de>; Thu,  7 Nov 2019 17:39:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JoEx5R6aNY1uHYInDDROGdm72HFjrNpd2rs2t7F4MIA=; b=dKGa/xmeeF0r6O
	ltM5eclzH9DlGyG6V20cYOIN7er/7SIsdrLYXiimsWKYNi7lAAGOP+TAxETYDsPYrlhR/+7Euxnfy
	UcqJjCBuqn3f9mxJGvFBrczlHpumodLm4IQVBhM8pvPfwMgJtmduwXFAEe4EzSCh6Sl/XXxfaIMir
	rI+9R/nTuQTS+eVuW0GR1cWL1MtSGD39SSoXQnyiA1CS6bjxGFiwXCcD3IojzC4b/UqEvMjqYnAZj
	S7vgfMpyyXvMgqC4brYI/xznWQGIgbF0hI669vzOCQZdhOigfsxpKSQ1iqa1k9kSC+f5hJg59cYpO
	WFQon55IfvVQc1tDgTmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSkoe-0003Z7-33; Thu, 07 Nov 2019 16:39:24 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSkoW-0003Yf-GJ
 for linux-nvme@lists.infradead.org; Thu, 07 Nov 2019 16:39:20 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Nov 2019 08:39:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,278,1569308400"; d="scan'208";a="286038222"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga001.jf.intel.com with ESMTP; 07 Nov 2019 08:39:14 -0800
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.167]) by
 ORSMSX107.amr.corp.intel.com ([169.254.1.115]) with mapi id 14.03.0439.000;
 Thu, 7 Nov 2019 08:39:14 -0800
From: "Wunderlich, Mark" <mark.wunderlich@intel.com>
To: Sagi Grimberg <sagi@grimberg.me>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: RE: [PATCH] 2/2] nvmet-tcp: set SO_PRIORITY for accepted sockets
Thread-Topic: [PATCH] 2/2] nvmet-tcp: set SO_PRIORITY for accepted sockets
Thread-Index: AdWPcIWvzHpFj0a7RH6PLL2mIs1EQAFlCrCAACDUgpA=
Date: Thu, 7 Nov 2019 16:39:13 +0000
Message-ID: <B33B37937B7F3D4CB878107E305D4916D4E95F@ORSMSX104.amr.corp.intel.com>
References: <B33B37937B7F3D4CB878107E305D4916D4AFCC@ORSMSX104.amr.corp.intel.com>
 <7f963f1c-d15a-58cb-ca9e-4c3914038a82@grimberg.me>
In-Reply-To: <7f963f1c-d15a-58cb-ca9e-4c3914038a82@grimberg.me>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZjFiZTBlODktMDE5Ni00MTIxLWJiMDQtZjQ0ZDZkNjZhNWM2IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiWWpuK05cL0xTS2w4VnlUcEo5S2I2UXlncjRLQk5cL1FUSFg4UDF0Vmt4R0thXC8rVUttWWpRRDUza0xcL3ByNmZTUmIifQ==
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_083918_918498_94D88109 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

>We could do this with configfs, but it given that this is very much specific to tcp transport I find it hard to justify.

Assume we will discuss more when re-posting in new series.  Agree there are various location options to define so_priority.  Options considered in the past being:
- Just make it a module define to specific value (say 1) that is only leveraged if busy polling enabled.
- Make it a sysctl variable, like sysctl_net_busy_poll and sysctl_net_busy_read that are related to busy polling, and again only leverage it if busy polling enabled.
- Or, as shown in this patch, where it was suggested that a module parameter is preferable over use of sysctl.
- And as you indicate, configfs.  Given this is more specific to adjusting tcp sockets behavior, use of configfs did not seem right.

If there is a preference, would be happy to adjust before re-posting of the patches.

Cheers --- Mark
_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
