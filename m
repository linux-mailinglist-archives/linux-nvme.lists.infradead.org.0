Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9DE090923
	for <lists+linux-nvme@lfdr.de>; Fri, 16 Aug 2019 22:03:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lXgbT7Lin9Mo4Tg7zz1VoluCwhwzm22Brln7cRaYSy8=; b=HAglF2t3W/V7NH
	vYX8L/iA9TRcX//F5GGovprq8OKwBZca39FzcYV04494fpWDPcsO6ChJcGGeME4JVl0+EA1mzSb/g
	nPTOl6EZmlHCyjI2I39yIKbWMwH2IoaYUIBKW5BMKHfiC75xj7SvrAqHl+oO0GdeScc2JKkRSzc8+
	rBS3rfNNIjswMsYBZAnnIY7gTtEXn4mNEhDdljZTdZGoErUJ24FBQMTQ/YQS8WpksTR6vUtyt2OXK
	+AJ5e68E8+2rK64lT0EPmq3hnUBlZ/hRToGaBRJaaX01VES0CW6iHoAKcxr+9/C8GlNVuujruAwCo
	Viinjtto7EYb1CIPtxsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyiRr-0006tt-UL; Fri, 16 Aug 2019 20:03:44 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyiRl-0006tV-4L
 for linux-nvme@lists.infradead.org; Fri, 16 Aug 2019 20:03:38 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Aug 2019 13:03:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,394,1559545200"; d="scan'208";a="179767694"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga003.jf.intel.com with ESMTP; 16 Aug 2019 13:03:35 -0700
Date: Fri, 16 Aug 2019 14:01:26 -0600
From: Keith Busch <kbusch@kernel.org>
To: "Mario.Limonciello@dell.com" <Mario.Limonciello@dell.com>
Subject: Re: [PATCH v2] nvme: Add quirk for LiteON CL1 devices running FW
 22301111
Message-ID: <20190816200125.GB6883@localhost.localdomain>
References: <1565813304-16710-1-git-send-email-mario.limonciello@dell.com>
 <32f20898-b9af-eee0-97de-0a568de54b57@grimberg.me>
 <20190814201900.GA3511@localhost.localdomain>
 <0cafca37-011d-4c19-4462-14687046a153@grimberg.me>
 <d71fc97ef6c8428f96ecfb2cec6077ab@AUSX13MPC101.AMER.DELL.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d71fc97ef6c8428f96ecfb2cec6077ab@AUSX13MPC101.AMER.DELL.COM>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_130337_184696_639C51A8 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "Crag.Wang@dell.com" <Crag.Wang@dell.com>,
 "sagi@grimberg.me" <sagi@grimberg.me>, "sjg@google.com" <sjg@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "axboe@fb.com" <axboe@fb.com>, "Ryan.Hong@Dell.com" <Ryan.Hong@Dell.com>,
 "Jared.Dominguez@dell.com" <Jared.Dominguez@dell.com>,
 "Charles.Hyde@dellteam.com" <Charles.Hyde@dellteam.com>,
 "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Aug 16, 2019 at 12:43:02PM -0700, Mario.Limonciello@dell.com wrote:
> > We need to coordinate with Jens, don't think its a good idea if I'll
> > just randomly get stuff from linus' tree and send an rc pull request.
> 
> The dependent commit is in Linus' tree now.
> 4eaefe8c621c6195c91044396ed8060c179f7aae
> 
> Also it was reported to me after this was submitted that the comment
> whitespace should have been aligned during the switchover from v1 to v2.
> 
> V1 the whitespace was further left since it was applying to 3 drives, but now
> that they're combined in v2 the whitespace wasn't adjusted.
> 
> Let me know if you want me to resubmit v3 w/ whitespace modification or
> if you will want to adjust that locally when you pull it in.

Go ahead and resend the patch with your fixes included. This is going to
have to wait till next week anyway in order to have a clean pull request
through our normal path to mainline.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
