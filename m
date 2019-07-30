Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E997B48C
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Jul 2019 22:51:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rk1MMV6X6rTlpiy7hMwFLccTxo2HjEg311ra+ml6Sdg=; b=UuT2i1YYimBWi9
	3fBC0CXBpBFo3ZvEg+aOY5UKn8XY5lnk0gBUbvZ4Xv49EF92q/CxVywliZ19ReHN9AB8I2LHlrBxx
	kPoNY9yBRHRu0I4QQuoOIBRRGIe+UiwFZqN+0hIyCRLZmJoIpqRdrKePYRrix+f72IPUpxe5938hz
	MkU3smeyKa6SjjOAoE6MlZxXh/kKf9DrExUs7+oWjmEd2BHueKuM3Xj2GUABP291UEwP1eGAujBAl
	X9nGnCqW5+dV852fhpfTi4ZB0u16DhiyrmTVzj4lDL9U7zRMgKWtOYnRV6/hdpoiTNXbVR97iSdLm
	GkfVwiZvYhOdJgxDhjhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsZ5b-0007vx-9P; Tue, 30 Jul 2019 20:51:19 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsZ5V-0007vf-SZ
 for linux-nvme@lists.infradead.org; Tue, 30 Jul 2019 20:51:15 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 13:51:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,327,1559545200"; d="scan'208";a="183368958"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga002.jf.intel.com with ESMTP; 30 Jul 2019 13:51:12 -0700
Date: Tue, 30 Jul 2019 14:48:29 -0600
From: Keith Busch <kbusch@kernel.org>
To: Charles.Hyde@dellteam.com
Subject: Re: [PATCH] drivers/nvme: save/restore HMB on suspend/resume
Message-ID: <20190730204829.GI13948@localhost.localdomain>
References: <362aad7f1cf547c2a73e1c4f564984db@AUSX13MPS303.AMER.DELL.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <362aad7f1cf547c2a73e1c4f564984db@AUSX13MPS303.AMER.DELL.COM>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_135113_932138_30ABB9B4 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: axboe@fb.com, Mario.Limonciello@dell.com, hch@lst.de,
 linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 08:09:15PM +0000, Charles.Hyde@dellteam.com wrote:
> LiteOn CL1 devices allocate host memory buffer at initialization.
> This patch saves and restores the host memory buffer allocation
> for any NVMe device which has HMB.  Devices which have on-board
> memory buffers are not impacted.  This patch has been tested locally
> with the following devices: LiteOn CL1 and CA3, Hynix BC511 and
> PC601, WDC SN520 and SN720.  This patch has also been tested by
> our partners at Wistron and Compal.

Please explain why you're doing this rather than what you're doing. We
previously concluded that NVMe power states have no spec defined impact
on HMB, so changing driver behavior requires justification.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
